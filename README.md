# My dotfiles
Feel free to use them for a nice looking ghostty terminal and tmux
 ## For vscode 
 `mkdir -p ~/Library/Application\ Support/Code/User`
`ln -sf ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json`

## How to install from Brewfile
`brew bundle --file=~/dotfiles/Brewfile`

```
.
├── .tmux.conf
├── .zprofile
├── .zshrc
├── Brewfile
├── config
│   ├── ghostty
│   │   ├── .config
│   │   │   └── ghostty
│   │   │       └── config
│   │   └── config
│   └── starship.toml
└── README.md

5 directories, 8 files
