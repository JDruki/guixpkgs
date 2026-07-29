{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/4k83zn8nl8f0mbd3p2p6b68dz8gwadi2-attr-2.5.1.nix;
  runtimeEnv = import ../../store/yhd6b1i3j7l9kvhmxs5508n2rjcz6bid-attr-runtime-env.nix;
}
