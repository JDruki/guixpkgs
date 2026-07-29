{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/xvi44mkzj546wvirh3d10w35bh8w0sgd-inetutils-2.5.nix;
  runtimeEnv = import ../../store/j6dngydk5bfqwa4q0ph523ix08239viz-inetutils-runtime-env.nix;
}
