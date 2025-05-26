local map = vim.keymap.set
local buf = vim.lsp.buf

-- Keymaps within the LSP client
local on_attach = function(_, bufnr)
  local opts = { noremap = true, silent = true, buffer = bufnr }
  map("n", "gd", buf.definition, opts)
  map("n", "gD", buf.declaration, opts)
  map("n", "gi", buf.implementation, opts)
  map("n", "gr", buf.references, opts)
end

return on_attach
