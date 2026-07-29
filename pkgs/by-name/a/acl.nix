{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/qqzn4qa0nrb0vazm51n04pwwp1dzyv6j-acl-2.3.1.nix;
  runtimeEnv = import ../../store/03ik48x9xg0q9izjgpm6wlis6ypcdfs7-acl-runtime-env.nix;
}
