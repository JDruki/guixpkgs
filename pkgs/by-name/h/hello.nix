{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/nad8x3j7m2nz1x19678i2arv2g1g4k99-hello-2.12.2.nix;
  runtimeEnv = import ../../store/lbr5d2c682ia4gdg6w0j5iry3ah1c7l9-hello-runtime-env.nix;
}
