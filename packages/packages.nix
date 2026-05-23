{ pkgs, ... }:
{
  home.packages = with pkgs; [
    # Basics
    btop
    vlc
    just
    tree

    # Desktop env helpers (invoked from hyprland keybinds / user scripts)
    wl-clipboard
    wf-recorder
    clipse
    playerctl
    grim
    slurp
    tesseract
    imagemagick
    zbar
    translate-shell
    ffmpeg
    gifski

    # TUI programs
    lazygit
    claude-code
    amp-cli
    glow

    # Golang
    go
    templ
    delve
    protobuf
    protoc-gen-go
    protoc-gen-go-grpc
    golangci-lint

    # Rust
    rustup
    lldb
    dioxus-cli

    # BEAM
    erlang
    elixir
    gleam
    beamPackages.rebar3

    # Zig
    zig

    # Development tools
    postgresql
    buf

    # Node
    nodejs
    prettier
    tailwindcss_4
    bun

    # GUI programs
    discord
    protonmail-bridge-gui
    proton-pass
  ];
}
