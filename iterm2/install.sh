#!/usr/bin/env sh

set -eu

. ./util/platform.sh

if ! is_mac_os; then
  echo "❎ Skipping iTerm2, not on a Mac"
  exit
fi

mkdir -p "$HOME/Library/Application Support/iTerm2/DynamicProfiles"
cp iterm2/*.plist "$HOME/Library/Application Support/iTerm2/DynamicProfiles/"
echo "✅ iTerm2 setup is complete"
