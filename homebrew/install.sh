#!/usr/bin/env sh

set -eu

. ./util/platform.sh

if ! is_mac_os; then
  echo "❎ Skipping Homebrew, not on a Mac"
  exit
fi

if which brew >/dev/null; then
  echo "🟢 Homebrew is already installed"
else
  echo "🔵 Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo "✅ Homebrew installed"
fi

echo "🔵 Installing Homebrew packages..."
brew bundle --file "$(dirname $0)/Brewfile"
echo "✅ Homebrew setup is complete"
