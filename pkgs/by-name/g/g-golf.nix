{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/zad5gldnj22w1b9kb0m273kgf175glx2-g-golf-0.8.2.nix;
  runtimeEnv = import ../../store/5gwc3bf2lr54l000svkjch6fr6ni1q71-g-golf-runtime-env.nix;
}
