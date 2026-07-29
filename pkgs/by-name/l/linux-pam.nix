{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/nv4y32k2wn8jz2d1grlhky88dh9p5bg6-linux-pam-1.5.2.nix;
  runtimeEnv = import ../../store/v4p7hknq6wl66igzh2srsdv2ab2diq7i-linux-pam-runtime-env.nix;
}
