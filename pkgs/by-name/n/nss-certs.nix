{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/c5fl9qgs8k7rmx91743nqh95p1zxknyl-nss-certs-3.101.4.nix;
  runtimeEnv = import ../../store/gxspb9csr0a59vsp9mvg8q0gvisx5c71-nss-certs-runtime-env.nix;
}
