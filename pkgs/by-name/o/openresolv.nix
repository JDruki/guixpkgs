{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/icw79bdin979iswvfvk858r46xcmcciw-openresolv-3.13.2.nix;
  runtimeEnv = import ../../store/xxaiiyj25ghxhvfmd7qh1hyk166adcsx-openresolv-runtime-env.nix;
}
