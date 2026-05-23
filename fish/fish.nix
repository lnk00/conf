{ ... }:
{
  programs.fish = {
    enable = true;

    shellAliases = {
      ff = "yazi";
      zz = "zeditor";
      gg = "lazygit";
      sql = "rainfrog";
      mail = "aerc";
      hxconf = "sudo hx /etc/nixos/configuration.nix";
      hxhypr = "hx ~/.config/hypr/hyprland.conf";
      nixsource = "sudo nixos-rebuild switch --flake /etc/nixos#nixos --impure";
      gofullenrich = "cd /home/lnk0/projects/fullEnrich";
      gomirage = "cd /home/lnk0/projects/mirage";
    };

    interactiveShellInit = ''
      set fish_greeting
      set -g fish_key_bindings fish_vi_key_bindings
    '';
  };
}
