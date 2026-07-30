{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/cz28c0lk9iblcxs546w4yxps0pnw30da-guile-png-0.8.0.nix;
  runtimeEnv = import ../../store/sn17hnymjsp7jiba36gcrkagvlf48lcb-guile-png-runtime-env.nix;
}
