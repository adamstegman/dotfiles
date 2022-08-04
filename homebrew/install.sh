#!/usr/bin/env sh

set -eu

if [ ! "$(uname -s)" = "Darwin" ]; then
  echo "❎ Skipping Homebrew, not on a Mac"
  exit
fi

if which brew >/dev/null; then
  echo "🟢 Homebrew is already installed"
else
  echo "❌ Homebrew is not installed, are you using strap.sh?"
fi

echo "🔵 Installing Homebrew packages..."
brew bundle --file "$(dirname $0)/Brewfile"
echo "✅ Homebrew setup is complete"
