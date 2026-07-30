{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/qmws1w2ikq4fygiaxm2vf37ck57x9ki0-guile-cv-0.4.0.nix;
  runtimeEnv = import ../../store/rbsn41rv716pgjb50zm5lc6clgr6kf95-guile-cv-runtime-env.nix;
}
