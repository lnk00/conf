# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).
#
# This file is intentionally limited to system-level concerns (boot, hardware,
# kernel modules, system services, login shells, fonts, system-bound programs).
# Everything user-facing lives under home-manager modules imported by
# ./home.nix.

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
    bluetooth.enable = true;
    bluetooth.powerOnBoot = true;
    bluetooth.settings.General.Experimental = true;
  };

  users.users.lnk0 = {
    shell = pkgs.fish;
    isNormalUser = true;
    extraGroups = [ "wheel" "i2c" ];
  };

  programs = {
    # System-level programs that register kernel modules, set up suid wrappers,
    # add the binary to /etc/shells, or otherwise can't be done from HM.
    nix-ld.enable = true;
    hyprland.enable = true;
    steam.enable = true;
    gpu-screen-recorder.enable = true;

    # Required so pkgs.fish is a valid login shell (writes to /etc/shells).
    # User-level fish config lives in fish/fish.nix.
    fish.enable = true;

    # System gpg-agent (managed at system level so it works for root too).
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
      # Wayland / display-server vars must be set system-wide so the session
      # picks them up before login.
      WLR_NO_HARDWARE_CURSORS = "1";
      NIXOS_OZONE_WL = "1";
    };

    # Minimum set of tools usable by root / available on every shell.
    # User-facing tools live in packages/packages.nix.
    systemPackages = with pkgs; [
      git
      vim
      neovim
      curl
      unzip
      gnumake
      gcc
      gnupg
      pinentry-curses
      gpu-screen-recorder
      gpu-screen-recorder-gtk
    ];
  };

  security.rtkit.enable = true;

  services = {
    xserver.videoDrivers = ["nvidia"];
    tzupdate.enable = true;
    upower.enable = true;
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
    blueman.enable = true;
    gnome.gnome-keyring.enable = true;
  };


  system.stateVersion = "25.11";

}
