{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/x3dipdi79sslybflvdpc8l35lnihygy1-findutils-4.10.0.nix;
  runtimeEnv = import ../../store/4fsdxnvdxgm3cbv0zq8ng8svlyfi1pkm-findutils-runtime-env.nix;
}
