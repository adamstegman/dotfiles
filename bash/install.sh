#!/usr/bin/env sh

set -euo pipefail

if ! which bash >/dev/null; then
  echo "❎ Skipping bash, it is not installed"
  exit 0
fi

cp bash/bash_profile "$HOME/.bash_profile"
echo "✅ bash setup is complete"
