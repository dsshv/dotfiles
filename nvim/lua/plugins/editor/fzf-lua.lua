return {
  "ibhagwan/fzf-lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  cmd = "FzfLua",
  keys = {
    -- Leader key for fzf-lua is "<leader>f"
    { "<leader>fw", LazyVim.pick("live_grep"), desc = "Grep (root dir)" },
    { "<leader>fW", LazyVim.pick("live_grep", { root = false }), desc = "Grep (root dir)" },
    -- Unbind some default LazyVim keys
    { "<leader>sg", nil },
    { "<leader>sG", nil },
    { "<leader>fe", nil },
    { "<leader>fE", nil },
    { "<leader>fn", nil },
  },
}
