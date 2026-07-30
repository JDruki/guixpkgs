{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/zmm2ksjs93l8s6jq7m8z3i9mkdc8cxdq-htop-3.4.1.nix;
  runtimeEnv = import ../../store/5zy7q6ji8rwnqayj05npg5dz6gvsn5bz-htop-runtime-env.nix;
}
