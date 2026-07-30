{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/gkv698y7k98q92avw9myn9ksvsr6i9hm-shepherd-1.0.9.nix;
  runtimeEnv = import ../../store/cri904rrny6ql3d2lzg3w5af7vc1wzbm-shepherd-runtime-env.nix;
}
