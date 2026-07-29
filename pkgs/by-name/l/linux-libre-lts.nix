{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/zgwiyfjz8gr20wmm9rig98ybmq92077g-linux-libre-6.12.62.nix;
  runtimeEnv = import ../../store/igrb0xqakklplxpyb6nn9jfl62qzfwys-linux-libre-runtime-env.nix;
}
