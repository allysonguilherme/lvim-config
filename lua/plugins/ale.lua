lvim.plugins = {
    -- ALE for linting and error highlighting
    { "dense-analysis/ale" },
}


-- ALE settings
vim.g.ale_sign_error = '•'
vim.g.ale_sign_warning = '•'
vim.g.ale_sign_info = '·'
vim.g.ale_sign_style_error = '·'
vim.g.ale_sign_style_warning = '·'
vim.g.ale_linters = { cs = { 'OmniSharp' } }
