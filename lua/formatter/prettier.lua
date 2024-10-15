require("lvim.lsp.null-ls.formatters").setup({
  {
    command = "prettier",
    filetypes = { "typescript", "html", "scss", "css" }
  }
})
