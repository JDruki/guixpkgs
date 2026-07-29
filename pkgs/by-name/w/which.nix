{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/5162fmsm04a9f1mdyrfn119p5rhi8xc1-which-2.21.nix;
  runtimeEnv = import ../../store/r41nwyh2ac9vj3yn67nj48z78yk7v3xi-which-runtime-env.nix;
}
