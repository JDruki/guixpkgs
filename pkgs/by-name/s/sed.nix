{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/dx24np2gfnlc0zg72dmha40pfpl22l37-sed-4.9.nix;
  runtimeEnv = import ../../store/g076kq7n30i4l0j1xrq7vgppsdjic9lr-sed-runtime-env.nix;
}
