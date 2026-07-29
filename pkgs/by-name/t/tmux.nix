{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/aqmrkyhcdc0javqwgrl5fvas3bihh4as-tmux-3.6a.nix;
  runtimeEnv = import ../../store/kgpk5aywl2c7dksm4kwjj879x7kvha2g-tmux-runtime-env.nix;
}
