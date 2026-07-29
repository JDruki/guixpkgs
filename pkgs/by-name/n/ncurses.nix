{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/c2irpm67j1m0m67issl4c7gj1g4s4fym-ncurses-6.2.20210619.nix;
  runtimeEnv = import ../../store/z4frnsvrls3mlfmhbr4r9kfgnggfjmm8-ncurses-runtime-env.nix;
}
