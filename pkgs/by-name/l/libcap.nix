{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/33lnh66p45j3m89p4yzzq5i6im6v203w-libcap-2.64.nix;
  runtimeEnv = import ../../store/ilbsagqskmz8lf0m9w8g2z5w6qm8pp7v-libcap-runtime-env.nix;
}
