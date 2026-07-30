{ pkgs }:
pkgs.callPackage ../../wrap-guix-package.nix {
  package = import ../../store/h4j70dmsfp5zlrwj35z492pmjs1xirxq-g-golf-0.8.2.nix;
  runtimeEnv = import ../../store/5ha5z06h9hg4ni432a2sbm7shkbc6ia6-g-golf-runtime-env.nix;
}
