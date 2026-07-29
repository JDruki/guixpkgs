{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/qcz086crn75sv2sjz8njqa95ic1mh28n-iputils-20250605.nix;
  runtimeEnv = import ../../store/mx6c5zi7fc1y9p32nx81hlmfka1jk5jl-iputils-runtime-env.nix;
}
