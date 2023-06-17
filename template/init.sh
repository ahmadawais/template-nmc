#!/usr/bin/env bash

# npm stuff.
npm install ora meow chalk cli-welcome cli-check-node cli-handle-unhandled cli-handle-error await-to-js update-notifier
npm install -D ava execa prettier

# Delete yourself, bash script.
rm -- "$0"
