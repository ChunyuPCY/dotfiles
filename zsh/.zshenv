#!/usr/bin/env zsh
#
# Executes commands at login pre-zshrc.
#
# Adapted from the prezto/runcoms/zprofi

# Don't load global configs, i.e., /etc/zprofile, /etc/zshrc
setopt no_global_rcs

#
# XDG Base directory specification
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
#
export XDG_CONFIG_HOME="$HOME/.config"     # configuration files
export XDG_CACHE_HOME="$HOME/.cache"       # non-essential data
export XDG_DATA_HOME="$HOME/.local/share"  # essential portable data, Application data
export XDG_STATE_HOME="$HOME/.local/state" # persistent non-portable data

# Themes (Catppuccin Mocha)
export THEME="mocha"
export BAT_THEME="Catppuccin ${(C)THEME}"
export TMUX_THEME="Catppuccin ${(C)THEME}"
export STARSHIP_THEME="catppuccin_$THEME"

# Zsh root
ZDOTDIR=$XDG_CONFIG_HOME/zsh

# Software specific
export EDITOR="nvim"
export VISUAL="nvim"

