{ config, lib, pkgs, ... }:
{
  # noctalia.toml is intentionally NOT declared here — a third-party service
  # deploys it into ~/.config/helix/themes/ at runtime, and `noc` inherits
  # from it.
  programs.helix = {
    enable = true;
    defaultEditor = true;

    settings  = builtins.fromTOML (builtins.readFile ./config/config.toml);
    languages = builtins.fromTOML (builtins.readFile ./config/languages.toml);

    themes = {
      noc   = builtins.fromTOML (builtins.readFile ./config/themes/noc.toml);
      e-ink = builtins.fromTOML (builtins.readFile ./config/themes/e-ink.toml);
    };

    extraPackages = with pkgs; [
      gopls
      golangci-lint-langserver
      zls
      typescript-language-server
      svelte-language-server
      vscode-langservers-extracted
      tailwindcss-language-server
      emmet-ls
    ];
  };
}
