-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

keymap.del("n", "<S-h>")
keymap.del("n", "<S-l>")

keymap.set({ "n", "v" }, "<S-h>", "^", { desc = "Go to start without blank" })
keymap.set({ "n", "v" }, "<S-l>", "$", { desc = "Go to end without blank" })
keymap.set("n", "<Tab>h", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
keymap.set("n", "<Tab>l", "<cmd>bnext<cr>", { desc = "Next Buffer" })
