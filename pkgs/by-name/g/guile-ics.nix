{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/bsbcbpdbm063ykkcaiyb0jyack8h1lz1-guile-ics-0.7.0.nix;
  runtimeEnv = import ../../store/6hc6wbw511dlxwjjkia5f5sw4y9mb0gd-guile-ics-runtime-env.nix;
}
