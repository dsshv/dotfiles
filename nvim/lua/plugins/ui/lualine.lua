return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  opts = function()
    return {
      sections = {
        lualine_a = { { "mode", separator = { left = "" } } },
        lualine_b = {
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { "filename", separator = { right = "" } },
          { "branch", separator = { right = "" } },
        },
        lualine_c = { { "diagnostics" } },
        lualine_y = {
          { "location", padding = { left = 0, right = 1 }, separator = { left = "" } },
        },
        lualine_z = {
          {
            function()
              return " " .. os.date("%R")
            end,
            separator = { right = "" },
          },
        },
      },
    }
  end,
}
