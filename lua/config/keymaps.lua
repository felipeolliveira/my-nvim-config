-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- General
vim.keymap.set("n", "<tab>", "<cmd>bnext<cr>", { desc = "Next Tab" })
vim.keymap.set("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Previous Tab" })
vim.keymap.set({ "n", "i", "v", "o", "c" }, "<C-z>", "<cmd>u<cr>", { desc = "Undo with classic ctrl-z" })
vim.keymap.set("n", "<leader><space>", LazyVim.pick("files", { root = false }), { desc = "Find Files (cwd)" })

-- LSP
vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { desc = "Rename LSP definition" })
