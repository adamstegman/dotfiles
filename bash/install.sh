#!/usr/bin/env sh

set -eu

if ! which bash >/dev/null; then
  echo "❎ Skipping bash, it is not installed"
  exit 0
fi

# Don't overwrite local changes to .bash_profile so local applications that write to it are safe
grep '# adamstegman' "$HOME/.bash_profile" || cat bash/bash_profile >> "$HOME/.bash_profile"
echo "✅ bash setup is complete"
