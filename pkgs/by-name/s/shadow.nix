{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/03b6ilqaj81ygb47z5mz0ms90ahy5y6p-shadow-4.13.nix;
  runtimeEnv = import ../../store/z4pgqyxrng3vh1724ixfwngqyxp6y9x8-shadow-runtime-env.nix;
}
