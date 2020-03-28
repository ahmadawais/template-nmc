#!/usr/bin/env bash

# Create the repo with name and description.
gh re --new "{{name}}" --description "{{description}}"

# Git stuff.
git init
git remote add origin https://github.com/ahmadawais/{{name}}.git

# npm stuff.
npm install ora meow chalk cli-welcome cli-check-node cli-handle-unhandled cli-handle-error await-to-js
npm install -D ava execa prettier

# Delete yourself, bash script.
rm -- "$0"
