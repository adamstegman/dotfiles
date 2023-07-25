#!/usr/bin/env sh

set -eu

if ! which zsh >/dev/null; then
  echo "❎ Skipping zsh, it is not installed"
  exit 0
fi

if [ "$(basename "$SHELL")" = "zsh" ]; then
  echo "🟢 zsh is already in use"
else
  echo "⚠️  current shell is not zsh"
fi

if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "🟢 oh-my-zsh is already installed"
else
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo "🟢 oh-my-zsh is now installed"
fi

cp zsh/themes/* "$HOME/.oh-my-zsh/custom/themes/"
# Don't overwrite local changes to .zshrc so local applications that write to it are safe
grep -q '# adamstegman' "$HOME/.zshrc" || cat zsh/zshrc >> "$HOME/.zshrc"
echo "✅ zsh setup is complete"
