{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/40rya107jfjyz41rjvazwlcrqwm67avr-htop-3.4.1.nix;
  runtimeEnv = import ../../store/f91kz02iqx864wdf83vf8d1l439jjjzx-htop-runtime-env.nix;
}
