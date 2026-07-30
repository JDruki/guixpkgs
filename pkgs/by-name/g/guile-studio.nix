{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/ri9ajsrn05ihfhsjbbc0gjkpb2k3py0d-guile-studio-0.1.1-1.dd0ad42.nix;
  runtimeEnv = import ../../store/dhz8m6hzy7dpzwllwa1ywg557spi313a-guile-studio-runtime-env.nix;
}
