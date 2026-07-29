{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/dhyrcv5d4h7r4fs4wv1f4cwyl7b8qv1m-guile-png-0.8.0.nix;
  runtimeEnv = import ../../store/730lw5ip8dwqjb2a61wl7hqa3l0v4vzz-guile-png-runtime-env.nix;
}
