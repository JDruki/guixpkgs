{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/7ngin2skj0mcls4pa805iixd56a0fah2-iproute2-6.4.0.nix;
  runtimeEnv = import ../../store/3dxr4aaf5c9hajv2bvv1va51fbvjpjzf-iproute2-runtime-env.nix;
}
