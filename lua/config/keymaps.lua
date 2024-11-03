-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local wk = require("which-key")

-- Navigation
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next Tab" })
map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Previous Tab" })
map({ "n", "i", "v", "o", "c" }, "<C-z>", "<cmd>u<cr>", { desc = "Undo with classic ctrl-z" })
map("n", "<leader><space>", LazyVim.pick("files", { root = false }), { desc = "Find Files (cwd)" })

-- Files
map("n", "<leader>fd", "<cmd>call delete(expand('%')) | bdelete!<cr>", { desc = "Delete current file and buffer" })

-- Terminal
map("n", "<C-/>", function()
  LazyVim.terminal()
end, { desc = "Terminal (cwd)" })

-- Docker
wk.add({
  { "<leader>d", group = "docker", icon = { icon = "", color = "blue" } },
})
map("n", "<leader>dd", "<cmd>LazyDocker<cr>", { desc = "Toggle lazyDocker", noremap = true, silent = true })
