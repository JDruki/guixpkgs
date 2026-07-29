{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/jxgka25sb6wa7fj54ayfr9a7gg6kc8kx-guile-pipe-0.0.0-0.0746ec3.nix;
  runtimeEnv = import ../../store/iv3gb5gqzkj51ag3hx02ag34s20kmkj2-guile-pipe-runtime-env.nix;
}
