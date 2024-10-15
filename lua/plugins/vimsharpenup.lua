lvim.plugins = {
    -- Vim SharpenUp for mappings and code actions
    { "nickspoons/vim-sharpenup" },
}

-- Sharpenup settings
vim.g.sharpenup_map_prefix = '<Space>os'
vim.g.sharpenup_statusline_opts = { Text = '%s (%p/%P)', Highlight = 0 }
vim.api.nvim_create_augroup("OmniSharpIntegrations", {})
vim.api.nvim_create_autocmd({ "User" }, {
  group = "OmniSharpIntegrations",
  pattern = { "OmniSharpProjectUpdated", "OmniSharpReady" },
  command = "call lightline#update()"
})
