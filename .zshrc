VOLTA_HOME=$HOME/.volta
PATH=/opt/homebrew/bin:$VOLTA_HOME/bin:$HOME/.cargo/bin:$PATH

alias ff="yazi ."
alias cd="z"
alias gg="lazygit"

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/custom.omp.json)"
eval "$(zoxide init zsh)"
