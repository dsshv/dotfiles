-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Russian Language
-- stylua: ignore start
local remap = {
  ["й"] = "q", ["Й"] = "Q",
  ["ц"] = "w", ["Ц"] = "W",
  ["у"] = "e", ["У"] = "E",
  ["к"] = "r", ["К"] = "R",
  ["е"] = "t", ["Е"] = "T",
  ["н"] = "y", ["Н"] = "Y",
  ["г"] = "u", ["Г"] = "U",
  ["ш"] = "i", ["Ш"] = "I",
  ["щ"] = "o", ["Щ"] = "O",
  ["з"] = "p", ["З"] = "P",
  ["х"] = "[", ["Х"] = "{",
  ["ъ"] = "]", ["Ъ"] = "}",
  ["ё"] = "\\", ["Ё"] = "|",
  ["ф"] = "a", ["Ф"] = "A",
  ["ы"] = "s", ["Ы"] = "S",
  ["в"] = "d", ["В"] = "D",
  ["а"] = "f", ["А"] = "F",
  ["п"] = "g", ["П"] = "G",
  ["р"] = "h", ["Р"] = "H",
  ["о"] = "j", ["О"] = "J",
  ["л"] = "k", ["Л"] = "K",
  ["д"] = "l", ["Д"] = "L",
  ["ж"] = ";", ["Ж"] = ":",
  ["э"] = "'", ["Э"] = "\"",
  ["я"] = "z", ["Я"] = "Z",
  ["ч"] = "x", ["Ч"] = "X",
  ["с"] = "c", ["С"] = "C",
  ["м"] = "v", ["М"] = "V",
  ["и"] = "b", ["И"] = "B",
  ["т"] = "n", ["Т"] = "N",
  ["ь"] = "m", ["Ь"] = "M",
  ["б"] = ",", ["Б"] = "<",
  ["ю"] = ".", ["Ю"] = ">",
}
-- stylua: ignore end
for ru, en in pairs(remap) do
  map("n", ru, en, opts)
  map("v", ru, en, opts)
  map("c", ru, en, opts)
  map("o", ru, en, opts)
  map("s", ru, en, opts)
  map("x", ru, en, opts)
  map("t", ru, en, opts)
end
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
