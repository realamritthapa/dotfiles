export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
eval "$(starship init zsh)"
source <(fzf --zsh)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
alias ls="eza --icons=always"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
alias brewfile-update='brew bundle dump --file=~/dotfiles/Brewfile --force'
alias brewfile-clean='brew bundle cleanup --file=~/dotfiles/Brewfile --force'
alias safari="open -a 'safari'"
alias chrome="open -a 'Google Chrome'"
