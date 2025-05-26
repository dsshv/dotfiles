return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      -- lua
      "lua-language-server",
      "stylua",
      -- shell
      "shellcheck",
      "shfmt",
      -- html & css
      "html-lsp",
      "css-lsp",
      -- typescript
      "typescript-language-server",
      "deno",
      "prettier",
      "eslint_d",
      -- rust
      "rust-analyzer",
    },
  },
}
