export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
eval "$(starship init zsh)"
source <(fzf --zsh)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
alias ls="eza --icons=always"
