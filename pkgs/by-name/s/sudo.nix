{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/77zxrx5rhl1mzvcm2qdlkg8kj534i7i8-sudo-1.9.17p1.nix;
  runtimeEnv = import ../../store/ynx9hwprz9clk5wfmh4vcv664kly84x3-sudo-runtime-env.nix;
}
