{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/009dpfa14qjk0ykg46icn9iph7qf1ny9-xz-5.4.5.nix;
  runtimeEnv = import ../../store/cy51a5z3w8fh9f86fybb9450n0c2qasy-xz-runtime-env.nix;
}
