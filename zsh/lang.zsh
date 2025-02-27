# 
# ------------------ Lua environment management -----------------
#
export LUVER_DIR="${LUVER_DIR:-"${XDG_DATA_HOME:-"${HOME}/.local/share"}/luver"}"

if [[ ! -d "${LUVER_DIR}/self" ]]; then
  git clone --quiet https://github.com/MunifTanjim/luver.git "${LUVER_DIR}/self"
fi

source "${LUVER_DIR}/self/luver.plugin.zsh"
# ---------------------------------------------------------------

#
# --------------- Volta - Javascript Tool Manager ---------------
#
export VOLTA_HOME=$XDG_DATA_HOME/volta
export PATH=$VOLTA_HOME/bin:$PATH;
export VOLTA_FEATURE_PNPM=1

# NPMRC
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npmrc
# ---------------------------------------------------------------

#
# export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
#
# ---------------------------------------------------------------

#
# ----------------------------- Rsut ----------------------------
#
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export PATH="$PATH:$CARGO_HOME/bin"
# ---------------------------------------------------------------
