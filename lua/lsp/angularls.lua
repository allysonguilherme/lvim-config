require("lvim.lsp.manager").setup("angularls")

local lspconfig = require("lspconfig")
lspconfig.angularls.setup({
  cmd = { "ngserver", "--stdio", "--tsProbeLocations", "", "--ngProbeLocations", "" },
  on_new_config = function(new_config, new_root_dir)
    new_config.cmd = {
      "ngserver",
      "--stdio",
      "--tsProbeLocations",
      new_root_dir,
      "--ngProbeLocations",
      new_root_dir,
    }
  end,
  filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx" },
  root_dir = lspconfig.util.root_pattern("angular.json", "project.json")
})
