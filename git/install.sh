#!/usr/bin/env sh

set -eu

if ! which git >/dev/null; then
  echo "❎ Skipping git, it is not installed"
  exit 0
fi

git config --global user.name "Adam Stegman"

git config --global alias.ci commit
git config --global alias.co checkout
git config --global alias.st "status -s"

git config --global push.default simple

git config --global rebase.autosquash true

git config --global help.autocorrect 1

git config --global init.defaultBranch main

git config --global pager.branch false

git config --global pull.ff only

echo "✅ git setup is complete"
