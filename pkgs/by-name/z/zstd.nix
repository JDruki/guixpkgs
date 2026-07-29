{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/xbbghi2liq6f6k5r42xz4xszwhdfrqdn-zstd-1.5.7.nix;
  runtimeEnv = import ../../store/cha7dld0cvk414lrz5i0rxc2m5v789is-zstd-runtime-env.nix;
}
