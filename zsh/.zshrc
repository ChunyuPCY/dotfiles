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
zinit load wfxr/forgit

# Add in snippets
# zinit snippet OMZP::git
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
HISTFILE=$XDG_STATE_HOME/zsh/zhistory
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
source $ZDOTDIR/function.zsh
# for file in $ZDOTDIR/aliases/*.zsh; do
#   source "$file"
# done

# 
# ---------------------- shell integrations ---------------------
#
eval "$(fzf --zsh)"
# Add Catppuccin Mocha theme of fzf
export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#b4befe,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8 \
--color=selected-bg:#45475a \
--multi"

# starship: 
export STARSHIP_CONFIG=$XDG_CONFIG_HOME/starship/config.toml
eval "$(starship init zsh)"
starship config palette $STARSHIP_THEME

# Zoxide (smart cd command)
export _ZO_DATA_DIR="$XDG_CACHE_HOME/zoxide"
export _ZO_ECHO=1
eval "$(zoxide init --cmd cd zsh)"

# Eza
export EZA_CONFIG_DIR=$XDG_CONFIG_HOME/eza
# ---------------------------------------------------------------

# 
# ---- AI: encrypt and decrypt api key using the "age" tool -----
#
export DEEPSEEK_API_KEY=$(age -d -i $ZDOTDIR/keys/key.txt $ZDOTDIR/keys/deepseek-key.age)
# ---------------------------------------------------------------

