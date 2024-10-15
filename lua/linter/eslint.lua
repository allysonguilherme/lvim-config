require("lvim.lsp.null-ls.linters").setup({
  {
    command = "eslint",
    filetypes = { "typescript", "html" }
  }
})
