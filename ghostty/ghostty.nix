{ ... }:
{
  # noctalia theme is intentionally NOT declared here — assumed to be
  # deployed into ~/.config/ghostty/themes/noctalia by the same third-party
  # service that manages the helix noctalia theme.
  programs.ghostty = {
    enable = true;

    settings = {
      theme = "noctalia";
      font-family = "GeistMono Nerd Font Mono";
      font-size = 11;
      font-thicken = false;
      window-padding-x = 12;
      window-padding-y = 12;
      shell-integration-features = "no-cursor";
      cursor-style = "block";
      background-opacity = 0.95;
      background-blur = false;
      keybind = [
        "shift+enter=text:\\x1b\\r"
        "ctrl+j=scroll_page_lines:3"
        "ctrl+k=scroll_page_lines:-3"
      ];
    };

    themes = {
      e-ink = {
        foreground = "2d2d2d";
        background = "f5f5f5";
        cursor-color = "4a4a4a";
        cursor-text = "ffffff";
        selection-background = "c8c8c8";
        selection-foreground = "2d2d2d";
        palette = [
          "0=#000000"
          "1=#dc3545"
          "2=#888888"
          "3=#fd7e14"
          "4=#1a1a1a"
          "5=#0d0d0d"
          "6=#4a4a4a"
          "7=#b8b8b8"
          "8=#666666"
          "9=#e74c3c"
          "10=#a8a8a8"
          "11=#f39c12"
          "12=#3a3a3a"
          "13=#2d2d2d"
          "14=#6a6a6a"
          "15=#ffffff"
        ];
      };
    };
  };
}
