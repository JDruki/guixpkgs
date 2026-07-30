{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/isp13xmn7bwsfk0rfr4z8mvdh29fhznz-linux-libre-6.12.62.nix;
  runtimeEnv = import ../../store/m4irlnpl2949dig80057z7z5cnj1afb7-linux-libre-runtime-env.nix;
}
