# env.nu
#
# Installed by:
# version = "0.101.0"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.


if not ("XDG_CONFIG_HOME" in $env) {
    $env.XDG_CONFIG_HOME = ($env.HOME | path join ".config")
    $env.XDG_CACHE_HOME = ($env.HOME | path join ".cache")
    $env.XDG_DATA_HOME = ($env.HOME | path join ".local/share")
    $env.XDG_STATE_HOME = ($env.HOME | path join ".local/state")
}
# /opt/homebrew/bin                                               
# /opt/homebrew/sbin
$env.PATH = (
    $env.PATH 
    | append "/opt/homebrew/bin" 
    | append "/opt/homebrew/sbin"
    | uniq 
)

$env.STARSHIP_THEME = "catppuccin_mocha"
