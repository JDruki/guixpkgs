{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/bsdvxhipmj95vi878dsvyp64flmhd206-bash-5.2.37.nix;
  runtimeEnv = import ../../store/1lmzsx9b5cgjai3rg6290msrzjpgyx12-bash-runtime-env.nix;
  shellPath = "/bin/bash";
}
