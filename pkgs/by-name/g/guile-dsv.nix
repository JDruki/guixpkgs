{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/a3y1hsipmgnkdh321l0m6ja8pzgrm8bi-guile-dsv-0.8.0.nix;
  runtimeEnv = import ../../store/lp2jv67738gq16i1h2caii5vpr4ckagg-guile-dsv-runtime-env.nix;
}
