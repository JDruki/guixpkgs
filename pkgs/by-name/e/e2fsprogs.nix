{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/nm3wp8jmkn069mnid5l6jndk2nv5dyg7-e2fsprogs-1.47.2.nix;
  runtimeEnv = import ../../store/2ybxm4mcl0azkillg6n9crmw7wxlqdp6-e2fsprogs-runtime-env.nix;
}
