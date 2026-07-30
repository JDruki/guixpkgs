{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/i2r3mgqpa52g5k6pdhr16wa8lhwx404a-guile-wisp-1.0.12.nix;
  runtimeEnv = import ../../store/9skqva0pa9s6zcbcwl95w0w3hrgvaq5p-guile-wisp-runtime-env.nix;
}
