{ pkgs, ... }:
{
  # noctalia-shell deploys ~/.config/hypr/noctalia/noctalia-colors.conf at
  # runtime; the existing hyprland.conf sources it, so that subdir is
  # intentionally left unmanaged.
  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile ./config/hyprland.conf;
  };

  xdg.configFile = {
    "hypr/hyprpaper.conf".source   = ./config/hyprpaper.conf;
    "hypr/hyprtoolkit.conf".source = ./config/hyprtoolkit.conf;
  };

  # Helper binaries invoked from hyprland keybinds.
  home.packages = with pkgs; [
    hyprcursor
    hyprsunset
    hyprshot
  ];
}
