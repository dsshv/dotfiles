-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  changed_themes = require "themes.bocci",
  theme = "everforest",
  transparency = true,
}

M.ui = {
  statusline = {
    theme = "default",
    separator_style = "round",
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "css-lsp",
    "html-lsp",
    "rust-analyzer",
  },
}

local autocmd = vim.api.nvim_create_autocmd

-- Автоматическое обновление loclist при изменении диагностик
autocmd("DiagnosticChanged", {
  callback = function()
    vim.diagnostic.setloclist { open = false } -- обновить loclist, не открывая его автоматически
    vim.diagnostic.setqflist { open = false }
  end,
})

return M
