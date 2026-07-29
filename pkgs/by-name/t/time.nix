{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/vhpq9pjvvahsk0d884dxiag6cnf1m3bf-time-1.9.nix;
  runtimeEnv = import ../../store/zzkw0bhi5dvxcb9iq3mhaj4nv0aqbg5g-time-runtime-env.nix;
}
