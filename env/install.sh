#!/usr/bin/env sh

set -eu

# Don't overwrite local changes to .env so local applications that write to it are safe
grep '# adamstegman' "$HOME/.env" || cat env/env >> "$HOME/.env"
echo "✅ env setup is complete"
