{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/bmsal1lq4qbr4brnla59f4zrfym723xp-openjdk-25.nix;
  runtimeEnv = import ../../store/0x7fv8wcllmri1r5y0r5npg6abw7wswq-openjdk-runtime-env.nix;
}
