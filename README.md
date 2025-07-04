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
│   ├── nvim
│   │   ├── init.lua
│   │   ├── lazy-lock.json
│   │   └── lua
│   │       ├── plugins
│   │       │   ├── autoclose.lua
│   │       │   ├── catppuccin.lua
│   │       │   ├── completions.lua
│   │       │   ├── gitsigns.lua
│   │       │   ├── lsp-config.lua
│   │       │   ├── lualine.lua
│   │       │   ├── neo-tree.lua
│   │       │   ├── telescope.lua
│   │       │   └── treesitter.lua
│   │       ├── plugins.lua
│   │       └── vim-options.lua
│   └── starship.toml
├── README.md
├── setup.sh
└── vscode
    └── settings.json

9 directories, 23 files

