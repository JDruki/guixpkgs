{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/9hjsl8jsqm8v7ssv3vpiqc2sdmldwmcj-tmux-3.6a.nix;
  runtimeEnv = import ../../store/4il5d4g7z9mawih78nrnmxgn75wha3pk-tmux-runtime-env.nix;
}
