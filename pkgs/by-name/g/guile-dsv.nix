{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/mbwv3rlsnagsvys4qkjrr9r4c7r78pj2-guile-dsv-0.8.0.nix;
  runtimeEnv = import ../../store/zghramrqkrydizhnhgdyg2ba1kcyf7my-guile-dsv-runtime-env.nix;
}
