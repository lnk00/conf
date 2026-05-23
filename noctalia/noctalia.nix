{ pkgs, inputs, ... }:
{
  home.packages = [
    inputs.noctalia.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];

  xdg.configFile."noctalia/colorschemes/Monochrome High Contrast/Monochrome High Contrast.json".source =
    ./colorschemes/monochrome-high-contrast.json;
}
