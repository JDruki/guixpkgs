{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/2zrl38ld8791kcj5darzvxbnsia4wh27-procps-4.0.3.nix;
  runtimeEnv = import ../../store/8mkmcx3j9w2774yazlph6kwa11adgy67-procps-runtime-env.nix;
}
