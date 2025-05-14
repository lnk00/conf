VOLTA_HOME=$HOME/.volta
SOLANA_HOME=$HOME/.local/share/solana/install/active_release
AVM_HOME=$HOME/.avm
PATH=/opt/homebrew/bin:$VOLTA_HOME/bin:$HOME/.cargo/bin:$SOLANA_HOME/bin:$AVM_HOME/bin:$PATH
EDITOR=hx

alias ff="yazi ."
alias cd="z"
alias gg="lazygit"
alias za="zellij a"
alias zk="zellij delete-all-sessions -y"
alias zl="zellij list-sessions"

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/custom.omp.json)"
eval "$(zoxide init zsh)"
