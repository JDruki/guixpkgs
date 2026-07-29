{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/yy13bz428lqyirx55f4cgvqippl0q6l3-nano-8.7.nix;
  runtimeEnv = import ../../store/xn5sn82pm34588gn9miqqi3wig8w5rvs-nano-runtime-env.nix;
}
