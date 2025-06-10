#!/bin/bash

set -e  # Exit immediately if a command fails

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "🧪 Checking for Homebrew..."
if ! command -v brew &> /dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Ensure Homebrew is available in current shell
eval "$(/opt/homebrew/bin/brew shellenv)"

# Add to .zprofile if not already present
if ! grep -q 'brew shellenv' "$HOME/.zprofile"; then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
  echo "✅ Added Homebrew shellenv to .zprofile"
fi

echo "📦 Installing packages from Brewfile..."
brew bundle --file="$DOTFILES_DIR/Brewfile"

echo "🔗 Symlinking dotfiles..."

# Symlink dotfiles to ~/
for file in .tmux.conf .zprofile .zshrc; do
  ln -sf "$DOTFILES_DIR/$file" ~/"$file"
  echo "✅ Linked $file"
done

# Symlink ghostty config
mkdir -p ~/.config/ghostty
ln -sf "$DOTFILES_DIR/config/ghostty/.config/ghostty/config" ~/.config/ghostty/config
echo "✅ Linked ghostty config"

# Symlink starship.toml
ln -sf "$DOTFILES_DIR/config/starship.toml" ~/.config/starship.toml
echo "✅ Linked starship.toml"

# Symlink VS Code settings (macOS/Linux)
VSCODE_SETTINGS_PATH="$HOME/Library/Application Support/Code/User/settings.json"
mkdir -p "$(dirname "$VSCODE_SETTINGS_PATH")"
ln -sf "$DOTFILES_DIR/vscode/settings.json" "$VSCODE_SETTINGS_PATH"
echo "✅ Linked VS Code settings"

echo "Setup complete!"
