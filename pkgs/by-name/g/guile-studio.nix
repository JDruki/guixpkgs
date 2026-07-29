{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/lpkf60x3k3l4wmg91ilql5zhp5ajgggx-guile-studio-0.1.1-1.dd0ad42.nix;
  runtimeEnv = import ../../store/7zvpl739wyqxg4fqscb7pj9n4ss52yq4-guile-studio-runtime-env.nix;
}
