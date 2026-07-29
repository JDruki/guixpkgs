{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/h47q2hnlw8x5q16ml76kvxknsyab730j-tar-1.35.nix;
  runtimeEnv = import ../../store/m1jnsrzc0w0rpppfw8zdnjrdg040yy8k-tar-runtime-env.nix;
}
