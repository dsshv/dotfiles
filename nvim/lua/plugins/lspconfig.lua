return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    -- Настроим tsserver и denols
    lspconfig.ts_ls.setup {
      root_dir = function(fname)
        local util = require("lspconfig.util")
        return util.root_pattern("package.json", "tsconfig.json", "jsconfig.json", ".git")(fname)
      end,
    }

    lspconfig.denols.setup {
      root_dir = function(fname)
        local util = require("lspconfig.util")
        return util.root_pattern("deno.json", "deno.jsonc")(fname)
      end,
      init_options = {
        lint = true,
        unstable = true,
      },
    }
  end,
}

