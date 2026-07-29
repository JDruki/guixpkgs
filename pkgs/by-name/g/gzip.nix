{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/gqs76a403zn5d0j0n280z3rzxgf1yxr0-gzip-1.14.nix;
  runtimeEnv = import ../../store/a080fc5lzyigigfq9l1ad1qyncmwhw2n-gzip-runtime-env.nix;
}
