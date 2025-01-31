-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Basic keymap
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Buffers
map("n", "<tab>", "<cmd>BufferLineCycleNext<CR>", opts)
map("n", "<s-tab>", "<cmd>BufferLineCyclePrev<CR>", opts)
map("n", "<leader>cx", "<cmd>BufferLineCloseOthers<CR>", { desc = "Close other buffers" })

-- Neotree
map("n", "<C-n>", "<cmd>Neotree toggle<CR>", { desc = "Explorer Neotree" })

-- Trouble
map("n", "<leader>qx", "<cmd>Trouble diagnostics toggle<CR>", { desc = "toggle trouble" })
map("n", "<leader>qq", "<cmd>Trouble quickfix toggle<CR>", { desc = "toggle quickfix (trouble)" })
map("n", "<leader>ql", "<cmd>Trouble loclist toggle<CR>", { desc = "toggle location list (trouble)" })
