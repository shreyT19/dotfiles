#!/usr/bin/env bash
set -e

echo "🚀 Setting up dotfiles..."

DOTFILES_DIR="$HOME/dotfiles"

# ----------------------------
# Homebrew
# ----------------------------
if ! command -v brew &>/dev/null; then
  echo "🍺 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# ----------------------------
# Install shell tools
# ----------------------------
brew install \
  zoxide \
  fzf \
  zsh-autosuggestions \
  zsh-syntax-highlighting \
  powerlevel10k \
  git

# ----------------------------
# oh-my-zsh
# ----------------------------
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "🧠 Installing oh-my-zsh..."
  RUNZSH=no CHSH=no sh -c \
    "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# ----------------------------
# Symlinks
# ----------------------------
ln -sf "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
ln -sf "$DOTFILES_DIR/zsh/p10k.zsh" "$HOME/.p10k.zsh"

# ----------------------------
# Cursor extensions
# ----------------------------
if command -v cursor &>/dev/null; then
  echo "🧩 Installing Cursor extensions..."
  while read -r ext; do
    cursor --install-extension "$ext" || true
  done < "$DOTFILES_DIR/cursor/extensions.txt"
else
  echo "⚠️ Cursor CLI not found. Skipping Cursor extensions."
fi

echo "✅ Dotfiles installed"
echo "👉 Restart your terminal"

