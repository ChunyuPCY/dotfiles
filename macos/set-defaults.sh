#!/usr/bin/env bash
#
# Sets reasonable macOS defaults.
#
# Inspiration from https://mths.be/macos

if [ "$(uname -s)" != "Darwin" ]; then
  exit 0
fi

# Allows errors to occur without stopping the script
set +e

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do
  sudo -n true
  sleep 60
  kill -0 "$$" || exit
done 2>/dev/null &

# Close any open System Preferences panes, to prevent them from overriding
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

###############################################################################
# General UI/UX                                                               #
###############################################################################

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

echo "  › Save to disk by default, instead of iCloud"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Show all files and their extensions
defaults write com.apple.finder AppleShowAllExtensions -bool true
defaults write com.apple.finder AppleShowAllFiles -bool true

# Ensures the script will stop immediately if an error occurs after this command
set -e
