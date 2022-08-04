#!/usr/bin/env sh

set -euo pipefail

if which zsh >/dev/null; then
  echo "🟢 zsh is already installed"
else
  echo "❎ Skipping zsh, it is not installed"
  exit 0
fi

if [ "$(basename "$SHELL")" = "zsh" ]; then
  echo "🟢 zsh is already in use"
else
  chsh -s "$(which zsh)"
  echo "🟢 zsh will load on next login"
fi

if [ -d "$HOME/.oh-my-zsh" ]; then
  echo "🟢 oh-my-zsh is already installed"
else
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  echo "🟢 oh-my-zsh is now installed"
fi

cp zsh/themes/* "$HOME/.oh-my-zsh/custom/themes/"
cp zsh/zshrc "$HOME/.zshrc"
echo "✅ zsh setup is complete"
