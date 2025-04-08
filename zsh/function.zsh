alias clash='export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890;echo VPN loaded!'
clash

alias code='open -a "Visual Studio Code"'

alias zshup="source $XDG_CONFIG_HOME/zsh/.zshrc;echo zshrc updated!"

alias c="clear"
alias e="exit"

alias cat="bat"

# 
# --------------------- Eza (better ls) ---------------------
#
# 默认显示 icons：
alias ls="eza --icons"
# 显示文件目录详情
alias ll="eza --icons --long --header"
# 显示全部文件目录，包括隐藏文件
alias la="eza --icons --long --header --all"
# 显示详情的同时，附带 git 状态信息
alias lg="eza --icons --long --header --all --git"
# 替换 tree 命令
alias lt="eza --tree -L 2 --icons"
# -----------------------------------------------------------

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

# alias vi='NVIM_APPNAME="nvim-from-scratch" nvim'
