#!/usr/bin/env zsh
#
# Executes commands at the start of a login session.
#
# NOTE: This happens __before__ .zshrc in an interactive session.
#

if [[ -f ~/.zprofile ]]; then
  source ~/.zprofile
fi

if [[ -f "/opt/homebrew/bin/brew" ]] then
  # if you're using macos, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
