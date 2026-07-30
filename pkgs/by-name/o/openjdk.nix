{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/kv6klnlx5mnhw5x3wr3618fz3w7f753q-openjdk-25.nix;
  runtimeEnv = import ../../store/liff7zvlh8ysxv4hkvsvpikv6hgnp1bi-openjdk-runtime-env.nix;
}
