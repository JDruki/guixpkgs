{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/jcwg6lw7jzawb89hx8pd8g0bp9h5nvsy-diffutils-3.12.nix;
  runtimeEnv = import ../../store/4jj4smhmz06c85pxwww6disb6azw4ni7-diffutils-runtime-env.nix;
}
