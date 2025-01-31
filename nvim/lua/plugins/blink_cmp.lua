return {
  "saghen/blink.cmp",
  -- optional: provides snippets for the snippet source
  dependencies = "rafamadriz/friendly-snippets",
  ---@module 'blink.cmp'
  ---@type blink.cmp.Config
  opts = {
    keymap = {
      ["<tab>"] = { "select_next", "fallback" },
      ["<s-tab>"] = { "select_prev", "fallback" },
    },
  },
}
