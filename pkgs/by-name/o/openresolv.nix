{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/n16x43qsnjr4r4pq0xcnas3gc8506ki3-openresolv-3.13.2.nix;
  runtimeEnv = import ../../store/bh8byrjyqjih5qv5ajgkgiam9rgf751p-openresolv-runtime-env.nix;
}
