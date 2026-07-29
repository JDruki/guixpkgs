{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/bs1vxnfbnm5qpngwgg4m7mpvfsc305l5-dhcpcd-10.3.0.nix;
  runtimeEnv = import ../../store/3v5l0jb3sds6cyzihidm4mj0rax1z075-dhcpcd-runtime-env.nix;
}
