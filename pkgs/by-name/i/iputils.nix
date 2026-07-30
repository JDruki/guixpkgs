{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/24yx1afrpp8fnxs55ls71jng1wlkh333-iputils-20250605.nix;
  runtimeEnv = import ../../store/j5ii8pid7r5cmk8s7rvyimrascdzvkih-iputils-runtime-env.nix;
}
