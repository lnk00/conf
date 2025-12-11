VOLTA_HOME=$HOME/.volta
AVM_HOME=$HOME/.avm
PATH=/opt/homebrew/bin:$VOLTA_HOME/bin:$HOME/.cargo/bin:$AVM_HOME/bin:$PATH
SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
EDITOR=hx

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias ff="yazi ."
alias gg="lazygit"
alias za="zellij a"
alias zk="zellij delete-all-sessions -y"
alias zl="zellij list-sessions"

eval "$(oh-my-posh init zsh --config ~/.config/ohmyposh/custom.omp.json)"
eval "$(zoxide init zsh)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
