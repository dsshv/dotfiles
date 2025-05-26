return {
  "saghen/blink.cmp",
  optional = true,
  dependencies = {
    "saghen/blink.compat",
    -- optional: provides snippets for the snippet source
    "rafamadriz/friendly-snippets",
    "Exafunction/codeium.nvim",
  },
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
    },
    sources = {
      compat = { "codeium" },
      providers = {
        codeium = {
          kind = "Codeium",
          score_offset = 100,
          async = true,
        },
      },
    },
    completion = {
      ghost_text = {
        enabled = true,
      },
    },
  },
}
