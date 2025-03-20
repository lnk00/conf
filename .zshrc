VOLTA_HOME=$HOME/.volta
PATH=/opt/homebrew/bin:$VOLTA_HOME/bin:$HOME/.cargo/bin:$PATH

alias ff="yazi ."
alias cd="z"
alias gg="lazygit"
alias za="zellij a"
alias zk="zellij delete-all-sessions -y"
alias zl="zellij list-sessions"

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/custom.omp.json)"
eval "$(zoxide init zsh)"
