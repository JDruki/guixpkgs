{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/h77vji7zsmhh36ic5fanvcz0y929z7ps-guile-ics-0.7.0.nix;
  runtimeEnv = import ../../store/d27w7r400w8s0a4r0xma71s22c6zg6wh-guile-ics-runtime-env.nix;
}
