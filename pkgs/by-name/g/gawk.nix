{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/xxdpljkq5m5d4manz2y0bqwabfrcdqya-gawk-5.3.0.nix;
  runtimeEnv = import ../../store/cms6cqbbjmy4bn454kyv7jy9843ri2bk-gawk-runtime-env.nix;
}
