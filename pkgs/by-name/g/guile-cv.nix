{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/js57zxvrpwyw7c2r07iinqzhrnjaxkq6-guile-cv-0.4.0.nix;
  runtimeEnv = import ../../store/gycg083k3dwclpzm6sgvbhalwypyaz5j-guile-cv-runtime-env.nix;
}
