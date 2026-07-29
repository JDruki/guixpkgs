{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/yikij9h9vf6mxzlnl11bpf6aikxcvl4b-coreutils-9.1.nix;
  runtimeEnv = import ../../store/1rn3s4qyrb6dihgvl4qrg4yyxc8s03ms-coreutils-runtime-env.nix;
}
