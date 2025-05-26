return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local util = require("lspconfig.util")
    local on_attach = require("config.lsp.keymaps")

    -- ⚡️ Deno (denols)
    lspconfig.denols.setup({
      root_dir = function(fname)
        return util.root_pattern("deno.json", "deno.jsonc")(fname)
      end,
      init_options = {
        lint = true,
        unstable = true,
      },
      on_attach = on_attach(),
    })

    -- ⚡️ Typescript / NodeJS (tsserver)
    lspconfig.ts_ls.setup({
      root_dir = function(fname)
        if util.root_pattern("deno.json", "deno.jsonc")(fname) then
          return nil
        end
        return util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")(fname)
      end,
      single_file_support = false,
      on_attach = on_attach(),
    })

    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          runtime = { version = "LuaJIT" },
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            checkThirdParty = false,
            library = vim.api.nvim_get_runtime_file("", true),
          },
          telemetry = { enable = false },
        },
      },
      on_attach = on_attach(),
    })
  end,
}
