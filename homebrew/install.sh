#!/usr/bin/env sh

set -euo pipefail

if [ ! "$(uname -s)" = "Darwin" ]; then
  echo "❎ Skipping Homebrew, not on a Mac"
  exit
fi

if which brew >/dev/null; then
  echo "🟢 Homebrew is already installed"
else
  xcode-select --install
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "🟢 Homebrew is now installed"
fi

echo "🔵 Installing Homebrew packages..."
brew bundle --file "$(dirname $0)/Brewfile"
echo "✅ Homebrew setup is complete"
