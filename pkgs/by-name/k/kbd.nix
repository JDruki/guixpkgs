{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/lli3z9lz2m4620hplcpfrfg2ikf6ipzb-kbd-2.5.1.nix;
  runtimeEnv = import ../../store/qnglab9mbsi3i5zwfaahzhicdd3wxvhy-kbd-runtime-env.nix;
}
