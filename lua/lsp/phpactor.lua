local lspconfig = require("lspconfig")

lspconfig.phpactor.setup  {
    cmd = { "phpactor", "language-server"},
    filetypes= { "php" },
    root_dir = lspconfig.util.root_pattern("composer.json", ".git"),
    capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
    settings= {
        phpactor = {
            completion = {
                enable = true,
            }
        }
    }
}
