# SPDX-FileCopyrightText: 2026 Farid Zakaria
# SPDX-License-Identifier: MIT
{
  description = "GuixPkgs: Guix packages via Nix";

  nixConfig = {
    extra-substituters = [ "https://guixpkgs.cachix.org" ];
    extra-trusted-public-keys = [
      "guixpkgs.cachix.org-1:rM4xwCs5NUy+FcCKkiWP/CmRaSVxxDPaKWZvM1bRopg="
    ];
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    guix-src = {
      url = "git+https://codeberg.org/guix/guix.git?ref=version-1.5.0&shallow=1";
      flake = false;
    };
    guix-transfer.url = "github:fzakaria/guix-transfer";
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      guix-src,
      guix-transfer,
      treefmt-nix,
    }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
      # Taken straight from the flake input rather than from `pkgs.lib` so the
      # overlays below never have to instantiate this flake's own nixpkgs.
      lib = nixpkgs.lib;

      # treefmt: one formatter front-end for the whole repo.
      #   nix    -> nixfmt
      #   bash   -> shfmt
      #   python -> black
      #   toml   -> taplo
      #   scheme -> `guix style -f` (whole-file reindent; works on any .scm,
      #             not just package definitions, and needs no guix-daemon).
      # The vendored/generated Guix trees are never touched.
      treefmtEval = treefmt-nix.lib.evalModule pkgs {
        projectRootFile = "flake.nix";

        settings.global.excludes = [
          "pkgs/store/**"
          "pkgs/sources/**"
          "flake.lock"
        ];

        programs.nixfmt.enable = true;
        programs.shfmt.enable = true;
        programs.black.enable = true;
        programs.taplo.enable = true;

        settings.formatter.scheme = {
          command = "${pkgs.guix}/bin/guix";
          options = [
            "style"
            "-f"
          ];
          includes = [ "*.scm" ];
        };
      };

      # Every by-name entry as `name -> path`, derived from the directory tree
      # alone. Which attributes exist must be answerable without a package set:
      # an overlay is asked that question during nixpkgs' stdenv bootstrap, where
      # forcing anything out of the stage being overlaid (`prev.stdenv` included)
      # is not allowed.
      byNamePaths =
        let
          dir = ./pkgs/by-name;
          readLetter =
            letter: type:
            if type == "directory" then
              lib.mapAttrs' (fn: _: lib.nameValuePair (lib.removeSuffix ".nix" fn) (dir + "/${letter}/${fn}")) (
                lib.filterAttrs (n: _: lib.hasSuffix ".nix" n) (builtins.readDir (dir + "/${letter}"))
              )
            else
              { };
        in
        if builtins.pathExists dir then
          lib.foldl' (a: b: a // b) { } (lib.mapAttrsToList readLetter (builtins.readDir dir))
        else
          { };

      # Load one by-name package. The store files reference each other by
      # `(import ../store/<file>.nix).<output>`, so the whole graph resolves
      # without any extra machinery, and package-specific build fixups are applied
      # at translation time in guix-transfer (see README "Patching packages").
      # The overlays below exist for consumers to merge this set into their own
      # nixpkgs; they are deliberately not a place to patch packages.
      #
      # A current by-name file is a function of `{ pkgs }` that builds a wrapped
      # package; older syncs emitted a plain translated derivation. We accept both
      # so the tree keeps evaluating across a re-sync.
      #
      # `hostPkgs` is the nixpkgs instance that provides the wrapper machinery
      # (`callPackage`, `symlinkJoin`, `makeWrapper`); it is a parameter so the
      # overlays can hand in the consumer's package set.
      loadPackage =
        hostPkgs: path:
        let
          value = import path;
        in
        if lib.isFunction value then value { pkgs = hostPkgs; } else value;

      # The whole translated package set, built against an arbitrary nixpkgs.
      # Empty before the first sync has produced a tree.
      guixPackagesFor = hostPkgs: lib.mapAttrs (_: loadPackage hostPkgs) byNamePaths;

      # Build an overlay a consumer can add to their own nixpkgs.
      #
      # Every overlay adds `pkgs.guixPackages`, the full translated set under its
      # own namespace. `only` says which of those packages are additionally
      # spliced at the top level, shadowing the nixpkgs attribute of that name:
      #
      #   [ ]                  nothing -- nixpkgs is untouched (the default)
      #   [ "hello" ]          shadow `pkgs.hello`
      #   { gnused = "sed"; }  shadow `pkgs.gnused` with Guix's `sed`, for the
      #                        many names the two package sets spell differently
      #   null                 shadow every name GuixPkgs provides
      #
      # Shadowing only holds up for leaf packages -- ones nothing else in nixpkgs
      # is built against. A translated Guix package is a plain derivation: it has
      # no split outputs, no `override`, no `meta`, so the first nixpkgs
      # expression that reaches for `xz.bin` or `ncurses.dev` stops evaluating.
      # `only = null` is therefore a curiosity, not a way to run on Guix; see the
      # README.
      #
      # The by-name files are applied to `prev`, never `final`: a translated
      # package is wrapped with `symlinkJoin` and `makeWrapper`, and handing that
      # wrapper a package set whose `bash` or `coreutils` are themselves Guix
      # builds produced by this very overlay is an infinite recursion.
      mkOverlay =
        {
          only ? [ ],
        }:
        final: prev:
        let
          # The translated tree is generated for one system only. The check sits
          # inside each package rather than around the attribute set, so that
          # merely knowing the set of names never forces `prev.stdenv` -- and
          # `prev.stdenv` is null in the earliest stdenv bootstrap stages, which
          # must keep their own tools no matter what.
          supported = prev.stdenv != null && prev.stdenv.hostPlatform.system == system;
          unsupportedMessage = "guixpkgs: the translated package set is only available on ${system}";

          guixPackages = lib.mapAttrs (
            _: path: if supported then loadPackage prev path else throw unsupportedMessage
          ) byNamePaths;

          # `only` normalised to a `nixpkgs attribute -> Guix package name` map.
          requested =
            if only == null then
              lib.mapAttrs (name: _: name) byNamePaths
            else if lib.isList only then
              lib.genAttrs only lib.id
            else
              only;

          # Catch typos at evaluation time instead of silently dropping the
          # request.
          unknown = lib.subtractLists (lib.attrNames byNamePaths) (lib.attrValues requested);

          # Shadowing is different from the namespaced set: off the supported
          # system the nixpkgs package of that name has to stay in place, or
          # every consumer of `bash`, `coreutils`, ... inherits the throw and the
          # whole package set stops evaluating. A shadowed name with no nixpkgs
          # counterpart has nothing to fall back to, so it keeps the throw.
          shadow =
            nixName: guixName:
            if supported then
              loadPackage prev byNamePaths.${guixName}
            else
              prev.${nixName} or (throw unsupportedMessage);
          shadowed =
            if unknown != [ ] then
              throw "guixpkgs overlay: no such Guix package(s): ${lib.concatStringsSep ", " unknown}"
            else
              lib.mapAttrs shadow requested;
        in
        { inherit guixPackages; } // shadowed;

      # The sync logic lives in sync.py (a fully typed Python module); the two
      # build-time values it needs are substituted into its placeholder constants.
      sync-script =
        pkgs.writers.writePython3Bin "sync-guix"
          {
            flakeIgnore = [ "E501" ]; # long /nix/store paths and the channel fingerprint
          }
          (
            builtins.replaceStrings
              [ "@guixCommit@" "@guixTransfer@" ]
              [
                guix-src.rev
                "${guix-transfer.packages.${system}.default}/bin/guix-transfer"
              ]
              (builtins.readFile ./sync.py)
          );

    in
    {
      # Overlays are system-agnostic: each checks the package set it is applied
      # to and leaves nixpkgs alone off x86_64-linux.
      #
      # Additive, and the only overlay worth exporting by name:
      # `pkgs.guixPackages.hello` is Guix's hello, `pkgs.hello` is still
      # Nixpkgs'. Shadowing top-level names is possible but caller-specific, so
      # it goes through `guixpkgs.lib.mkOverlay { only = ...; }` instead.
      overlays.default = mkOverlay { only = [ ]; };

      lib = { inherit mkOverlay; };

      packages.${system} = (guixPackagesFor pkgs) // {
        # The sync tool itself, exposed so it can be built (`nix build .#sync-guix`)
        # independently of the `nix run .#sync` app.
        sync-guix = sync-script;
      };

      apps.${system}.sync = {
        type = "app";
        program = "${sync-script}/bin/sync-guix";
        meta.description = "Sync the Nix package set from upstream Guix";
      };

      # `nix fmt` formats the tree; `nix flake check` verifies it is formatted.
      formatter.${system} = treefmtEval.config.build.wrapper;
      checks.${system}.formatting = treefmtEval.config.build.check self;
    };
}
