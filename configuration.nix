# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  nix.settings.experimental-features = ["nix-command" "flakes"];
  nixpkgs.config.allowUnfree = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  networking.networkmanager.enable = true;

  hardware = {
    graphics.enable = true;
    nvidia.open = true;
    nvidia.nvidiaSettings = true;
    nvidia.modesetting.enable = true;
    i2c.enable = true;
  };
 
  users.users.lnk0 = {
    shell = pkgs.fish;
    isNormalUser = true;
    extraGroups = [ "wheel" "i2c" ];
    packages = with pkgs; [
      tree
    ];
  };

  programs = {
    nix-ld.enable = true;
    hyprland.enable = true;
    waybar.enable = true;
    git.enable = true;
    steam.enable = true;

    fish = {
      enable = true;
      shellAliases = {
        ff = "yazi";
        zz = "zeditor";
        gg = "lazygit";
        sql = "rainfrog";
        mail = "aerc";
        hxconf = "sudo hx /etc/nixos/configuration.nix";
        hxhypr = "hx ~/.config/hypr/hyprland.conf";
        nixsource = "sudo nixos-rebuild switch";
        gofullenrich = "cd /home/lnk0/projects/fullEnrich";
        gokbd = "cd /home/lnk0/projects/kbd";
      };
      interactiveShellInit = ''
        set fish_greeting
      '';
    };

    gnupg.agent = {
      enable = true;
      pinentryPackage = pkgs.pinentry-curses;
    };
  };

  fonts.packages = with pkgs; [
    geist-font
    nerd-fonts.geist-mono
    font-awesome
  ];


  environment = {
    sessionVariables = {
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
      EDITOR = "hx";
    };

    systemPackages = with pkgs; [
      # Basics
      git
      vim
      helix
      ghostty
      unzip
      btop
      neofetch
      gnupg
      pinentry-curses
      vlc
      just

      # Desktop env
      hyprpaper
      hyprcursor
      hyprsunset
      wl-clipboard
      wf-recorder
      clipse
      playerctl
      tofi
      grim
      slurp
      swaynotificationcenter
      pipewire
      wireplumber

      # TUI programs
      yazi
      zellij
      lazygit
      claude-code
      github-copilot-cli
      opencode
      glow
      rainfrog

      # Golang
      go
      gopls
      templ
      delve
      protobuf
      protoc-gen-go
      protoc-gen-go-grpc
      golangci-lint
      golangci-lint-langserver

      # Rust
      rustup
      lldb
      dioxus-cli

      # Development tools
      gnumake
      postgresql
      gcc

      # Node
      nodejs
      nodePackages.typescript-language-server
      nodePackages.svelte-language-server
      nodePackages.prettier
      vscode-langservers-extracted
      tailwindcss-language-server
      tailwindcss_4
      emmet-ls
      bun

      # GUI programs 
      spotify
      slack
      discord
      figma-linux
      zed-editor
      obsidian

      # Proton suite
      proton-pass
    ];
  };

  services = {
    xserver.videoDrivers = ["nvidia"];
    tzupdate.enable = true;
  };


  system.stateVersion = "25.11";

}

