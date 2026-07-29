{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/cxqkzdc3w63cpgw6srijba5mwjn86dqq-patch-2.8.nix;
  runtimeEnv = import ../../store/yhdx7md3javp8rfcs5rc9bmrdxv3z8wy-patch-runtime-env.nix;
}
