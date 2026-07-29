{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/mjmhb5bndr92xxnj1q5akbhjzwicls9q-cpio-2.15.nix;
  runtimeEnv = import ../../store/vmpivk81mf74akqjs8n9hbjjjmw6xgzi-cpio-runtime-env.nix;
}
