{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/08sylp2ajh304z3vvs69a20a7flbsjv5-sudo-1.9.17p1.nix;
  runtimeEnv = import ../../store/7kskl31kp826r6zmjxwy16a63r0bcdns-sudo-runtime-env.nix;
}
