return {
  dependencies = {
    "nvim-neotest/nvim-nio",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim", -- улучшает производительность Neotest
    "haydenmeade/neotest-jest", -- адаптер для Jest
  },
  config = function()
    require("neotest").setup {
      adapters = {
        require "neotest-jest" {
          jestCommand = "npm run test --",
          jestConfigFile = "jest.json",
          cwd = function()
            return vim.fn.getcwd()
          end,
        },
      },
    }
  end,
}
