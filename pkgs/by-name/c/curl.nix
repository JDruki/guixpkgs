{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/bhz65rmyvgcrb68x7hsp97001wihlzxw-curl-8.6.0.nix;
  runtimeEnv = import ../../store/r4dha13fqvqp0x3phkv8i3kjmf5699sa-curl-runtime-env.nix;
}
