-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local fzf = require("fzf-lua")
vim.keymap.set("n", "<leader>fg", fzf.live_grep, { desc = "Live Grep (fzf-lua)" })
