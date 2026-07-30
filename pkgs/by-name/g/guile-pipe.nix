{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/prf9fqk16c5lfizk0piw5868461vafk8-guile-pipe-0.0.0-0.0746ec3.nix;
  runtimeEnv = import ../../store/zn6xfabz7mchvzncm42gsi7b2zdprks6-guile-pipe-runtime-env.nix;
}
