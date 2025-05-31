#!/bin/sh

cp .zshrc ~/.zshrc

echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing casks..."
brew install --cask google-chrome
brew install --cask ghostty
brew install --cask font-geist
brew install --cask font-geist-mono-nerd-font
brew install --cask proton-mail-bridge
brew install --cask mouseless@preview
brew install --cask bruno

echo "Installing formulas..."
brew install helix
brew install yazi
brew install zellij
brew install jandedobbeleer/oh-my-posh/oh-my-posh
brew install jesseduffield/lazygit/lazygit
brew install zoxide
brew install typescript-language-server
brew install vscode-langservers-extracted
brew install tailwindcss-language-server
brew install biome
brew install golang
brew install gopls
brew install oven-sh/bun/bun
brew install docker

echo "Installing node..."
curl https://get.volta.sh | bash
volta install node

echo "Installing rust..."
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

cp -R ./files/* ~/.config/

source ~/.zshrc
