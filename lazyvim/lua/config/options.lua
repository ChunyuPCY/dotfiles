-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.o.showbreak = "↪ "
vim.o.exrc = true
vim.o.winborder = "rounded"

local g = vim.g
g.ai_cmp = false
g.primary = "#fab387"

-- In case you don't want to use `:LazyExtras`,
-- then you need to set the option below.
g.lazyvim_picker = "fzf"

-- set to `true` to follow the main branch
-- you need to have a working rust toolchain to build the plugin
-- in this case.
g.lazyvim_blink_main = false

-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
g.lazyvim_python_lsp = "pyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
g.lazyvim_python_ruff = "ruff"

-- LSP Server to use for Rust.
-- Set to "bacon-ls" to use bacon-ls instead of rust-analyzer.
-- only for diagnostics. The rest of LSP support will still be
-- provided by rust-analyzer.
g.lazyvim_rust_diagnostics = "rust-analyzer"

-- Enable the option to require a Prettier config file
-- If no prettier config file is found, the formatter will not be used
g.lazyvim_prettier_needs_config = false

-- Set to false to disable auto format
g.lazyvim_eslint_auto_format = false

-- vim.api.nvim_set_hl(0, "@function", { italic = true })
-- vim.api.nvim_set_hl(0, "@variable", { italic = true })
