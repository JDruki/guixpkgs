{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/6lhjsi8vnqjcg67b6in76508grwz502n-less-608.nix;
  runtimeEnv = import ../../store/mbbwkd9fdzrmpch8hb6iczp0791y72pb-less-runtime-env.nix;
}
