#!/usr/bin/env sh

set -eu

if ! which bash >/dev/null; then
  echo "❎ Skipping bash, it is not installed"
  exit 0
fi

# Don't overwrite local changes to .bashrc so local applications that write to it are safe
grep -q '# adamstegman' "$HOME/.bashrc" || cat bash/bashrc >> "$HOME/.bashrc"
echo "✅ bash setup is complete"
