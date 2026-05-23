{ pkgs, inputs, ... }:
{
  home.packages = [
    inputs.helium.defaultPackage.${pkgs.stdenv.hostPlatform.system}
  ];
}
