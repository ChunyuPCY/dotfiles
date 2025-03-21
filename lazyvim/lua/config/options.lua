-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.wrap = true
opt.showbreak = "↪ "
opt.exrc = true

local g = vim.g
g.ai_cmp = true
g.lazyvim_picker = "fzf"
g.lazyvim_cmp = "blink.cmp"
g.lazyvim_eslint_auto_format = false
g.lazyvim_prettier_needs_config = true
-- g.ai_cmp = false

-- FileTypes
LazyVim.on_very_lazy(function()
  vim.filetype.add({
    extension = {
      mdx = "markdown.mdx",
      qmd = "markdown",
      md = "markdown",
      yml = require("utils").yaml_ft,
      yaml = require("utils").yaml_ft,
      json = "jsonc",
      tpl = "totmpl",
    },
    filename = {
      [".eslintrc.json"] = "jsonc",
      ["vimrc"] = "vim",
    },
    pattern = {
      ["tmp/neomtt.*"] = "markdown",
      ["tsconfig*.json"] = "jsonc",
      [".*/%.vscode/.*%.json"] = "jsonc",
      [".*/waybar/config"] = "jsonc",
    },
  })
end)
