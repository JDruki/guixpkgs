{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/m6iz0r6xmzkx4zbskb1fzvz1kikzv6nl-shepherd-1.0.9.nix;
  runtimeEnv = import ../../store/srql5j0gvf96y30sm1zrlp01xph68wqv-shepherd-runtime-env.nix;
}
