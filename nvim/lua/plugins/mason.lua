return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
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
