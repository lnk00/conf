# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a macOS dotfiles/configuration repository containing setup scripts and configuration files for development tools. The repository manages configurations for terminal applications, editors, and development environment setup.

## Setup and Installation

### Initial Setup
Run the main setup script to install tools and configure the environment:
```bash
./setup-macos.sh
```

This script:
- Installs Homebrew if not present
- Installs development tools via Homebrew (ghostty, helix, zellij, etc.)
- Sets up Node.js via Volta
- Installs Rust toolchain
- Copies configuration files from `files/` to `~/.config/`
- Sets up zsh configuration

### Manual Configuration Copy
To manually copy configuration files without running the full setup:
```bash
cp -R ./files/* ~/.config/
cp .zshrc ~/.zshrc
```

## Architecture and Structure

### Configuration Layout
- `files/` - Contains all dotfiles organized by application
  - `ghostty/` - Terminal emulator config and themes
  - `helix/` - Text editor config with custom keybindings and themes
  - `ohmyposh/` - Shell prompt theme configuration
  - `zed/` - Code editor settings with language-specific formatting
  - `zellij/` - Terminal multiplexer config with custom theme
- `.zshrc` - Shell configuration with aliases and environment setup
- `setup-macos.sh` - Automated setup script

### Key Tools and Configuration

**Terminal Stack:**
- Ghostty (terminal) with dream-grey theme and GeistMono font
- Zellij (multiplexer) with compact layout and custom keybindings
- Oh My Posh (prompt) with custom dual-block layout

**Editors:**
- Helix with custom theme, relative line numbers, vim-like keybindings
- Zed with Neovim theme, Biome formatting, Claude integration

**Development Environment:**
- Node.js managed via Volta
- Rust via rustup
- Multiple language servers (TypeScript, Go, Tailwind CSS, etc.)
- Docker, Git tooling (lazygit)

### Shell Aliases and Tools
Key aliases defined in `.zshrc`:
- `ff` - yazi file manager
- `cd` - zoxide smart cd
- `gg` - lazygit
- `za` - zellij attach
- `zk` - zellij kill all sessions
- `zl` - zellij list sessions

### Theme Consistency
All tools use a consistent grey/monochrome color scheme:
- Ghostty: dream-grey theme
- Helix: custom theme (files/helix/themes/custom.toml)
- Zellij: custom theme with grey palette
- Font: GeistMono Nerd Font across all applications