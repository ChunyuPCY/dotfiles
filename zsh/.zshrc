#!/usr/bin/env zsh
#
# Executes commands at the start of an interactive session.
#

if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# PATH
if [[ "$(uname -sm)" = "Darwin arm64" ]] then
  export PATH=/opt/homebrew/bin:$PATH;
fi

# 
# ---------------- Zinit - zsh plugin management ----------------
# 
# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add in snippets
zinit snippet OMZP::git
zinit snippet OMZP::command-not-found

# Load completions
autoload -U compinit && compinit

zinit cdreplay -q
# ---------------------------------------------------------------

# 
# ------------------------- Key Binding -------------------------
#
# Completion (based on history)
bindkey -e                                       # Ctrl + e : Accept Suggestion, default Ctrl + f
bindkey '^p' history-search-backward             # Ctrl + p
bindkey '^n' history-search-forward              # Ctrl + n 
# ---------------------------------------------------------------

# 
# ----------------------- History Setup -------------------------
#
# The file where the history is stored
HISTFILE=$ZDOTDIR/.zhistory
# Number of events stored in the zsh history file
SAVEHIST=5000
# Number of events loaded into memory
HISTSIZE=999
setopt append_history
setopt share_history                             # Share history across zsh sessions
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
setopt hist_verify
# ---------------------------------------------------------------

#
# ------------------- Completion Styling ------------------------
#
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'
# ---------------------------------------------------------------

# Initialize Languration
source $ZDOTDIR/lang.zsh

# Initialize aliases
for file in $ZDOTDIR/aliases/*.zsh; do
  source "$file"
done

# 
# ---------------------- Shell integrations ---------------------
#
eval "$(fzf --zsh)"

# starship: 
export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship/config.toml
eval "$(starship init zsh)"
starship config palette $STARSHIP_THEME

# Zoxide (smart cd command)
export _ZO_DATA_DIR="$XDG_CACHE_HOME/zoxide"
export _ZO_ECHO=1
eval "$(zoxide init zsh)"
# ---------------------------------------------------------------

