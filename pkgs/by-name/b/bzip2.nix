{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/8glxd39wy20azlga2vmh5m0xg1r9galn-bzip2-1.0.8.nix;
  runtimeEnv = import ../../store/5vf6ffc3ifldxmqg2z2aaz23wym2014h-bzip2-runtime-env.nix;
}
