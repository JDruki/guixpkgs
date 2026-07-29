{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/jzw12fkdy28sjxx8q1ng62ka354ss00l-guile-wisp-1.0.12.nix;
  runtimeEnv = import ../../store/615ncxgfqllc7gmyhccm4y3xpbhmwwzy-guile-wisp-runtime-env.nix;
}
