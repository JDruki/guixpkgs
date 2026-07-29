{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/dx6s9pyb9v061q05d5236f5pm446z06h-eudev-3.2.14.nix;
  runtimeEnv = import ../../store/68br6z90hvxy86nhrcm6rfq1wp7bj8z3-eudev-runtime-env.nix;
}
