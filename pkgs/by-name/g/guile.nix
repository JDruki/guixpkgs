{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/pd7y74psrbx55pj31gm6cizrjgfv770z-guile-3.0.9.nix;
  runtimeEnv = import ../../store/d5rhljby3dyj8gjknf77lxn1ph4n7kxa-guile-runtime-env.nix;
}
