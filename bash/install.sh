#!/usr/bin/env sh

set -eu

if ! which bash >/dev/null; then
  echo "❎ Skipping bash, it is not installed"
  exit 0
fi

[ -f "$HOME/.bash_profile" ] || cp bash/bash_profile "$HOME/.bash_profile"
echo "✅ bash setup is complete"
