{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/3j907z1fvrbi8idqhx4vsp6i9c54xlj8-util-linux-2.40.4.nix;
  runtimeEnv = import ../../store/97qrb16r9fn63cj05ld3h3ymjrwznsir-util-linux-runtime-env.nix;
}
