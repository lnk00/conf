{ config, lib, pkgs, ... }:
{
  imports = [
    ./helix/helix.nix
    ./ghostty/ghostty.nix
    ./hypr/hypr.nix
    ./yazi/yazi.nix
    ./zellij/zellij.nix
    ./fish/fish.nix
    ./git/git.nix
    ./xdg/xdg.nix
    ./packages/packages.nix
    ./helium/helium.nix
    ./noctalia/noctalia.nix
    ./vivaldi/vivaldi.nix
  ];

  home.username = "lnk0";
  home.homeDirectory = "/home/lnk0";
  home.stateVersion = "25.11";

  home.sessionVariables = {
    BROWSER = "helium";
  };

  programs.home-manager.enable = true;
}
