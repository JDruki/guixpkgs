{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/5fb127f4492jvdnymcp0cpzshmw6h6n7-dhcpcd-10.3.0.nix;
  runtimeEnv = import ../../store/74d09vfv7kh306ggrvxh4nvcgj5r2kdz-dhcpcd-runtime-env.nix;
}
