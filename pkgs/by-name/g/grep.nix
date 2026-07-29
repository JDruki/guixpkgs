{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/gcwbkmgv0mi19pzn8ssa8y8ssy5xna1d-grep-3.11.nix;
  runtimeEnv = import ../../store/js5si020y7jqdjkcwilzf8xrgnisjbsy-grep-runtime-env.nix;
}
