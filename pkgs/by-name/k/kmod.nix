{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/yn57bglnb2pjvbrha4q544bvcm66hbcv-kmod-29.nix;
  runtimeEnv = import ../../store/6x4xvazg7jwd92lf8043pzz3j74iln7b-kmod-runtime-env.nix;
}
