#!/usr/bin/env bash

# Set up a git repo.
git init &>/dev/null
gh repo create --description "description" --homepage "https://twitter.com/MrAhmadAwais" --public --source=. &>/dev/null

# npm stuff.
npm install ora meow chalk cli-welcome cli-check-node cli-handle-unhandled cli-handle-error await-to-js update-notifier
npm install -D ava execa prettier

# Delete yourself, bash script.
rm -- "$0"
