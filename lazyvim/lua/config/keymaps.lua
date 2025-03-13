-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

-- keymap.set("n", "<A-h>", "^", { desc = "Go to start without blank" })
-- keymap.set("n", "<A-l>", "$", { desc = "Go to end without blank" })

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })
