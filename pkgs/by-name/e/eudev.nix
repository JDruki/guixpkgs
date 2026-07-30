{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/5jnsym7xx44q17fnn2x7d1105dsgsdqx-eudev-3.2.14.nix;
  runtimeEnv = import ../../store/z8vxcira1hv7k23idqq7dll5jc4l87zw-eudev-runtime-env.nix;
}
