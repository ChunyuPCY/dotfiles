source ./themes/catppuccin_mocha.nu

$env.config.buffer_editor = "nvim"
$env.config.show_banner = false

# --------------------- Starship ---------------------
$env.STARSHIP_CONFIG = ($env.XDG_CONFIG_HOME |path join "starship/config.toml")
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
starship config palette $env.STARSHIP_THEME
# ----------------------------------------------------

# ---------------------- Zoxide ----------------------
$env._ZO_DATA_DIR = $env.XDG_CACHE_HOME | path join "zoxide"
$env.ZO_ECHO = 1
zoxide init nushell | save -f ~/.zoxide.nu
if ("~/.zoxide.nu" | path exists ) {
  source ~/.zoxide.nu
}
# ----------------------------------------------------
