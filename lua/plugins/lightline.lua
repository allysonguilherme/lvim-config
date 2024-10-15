lvim.plugins = {
    -- Lightline for statusline
    { "itchyny/lightline.vim" },
    { "maximbaz/lightline-ale" },
}


-- Lightline settings
vim.g.lightline = {
  colorscheme = 'default',
  active = {
    right = {
      { 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' },
      { 'lineinfo' }, { 'percent' },
      { 'fileformat', 'fileencoding', 'filetype', 'sharpenup' }
    }
  },
  inactive = {
    right = { { 'lineinfo' }, { 'percent' }, { 'sharpenup' } }
  },
  component = {
    sharpenup = vim.fn['sharpenup#statusline#Build'](),
  },
  component_expand = {
    linter_checking = 'lightline#ale#checking',
    linter_infos = 'lightline#ale#infos',
    linter_warnings = 'lightline#ale#warnings',
    linter_errors = 'lightline#ale#errors',
    linter_ok = 'lightline#ale#ok'
  },
  component_type = {
    linter_checking = 'right',
    linter_infos = 'right',
    linter_warnings = 'warning',
    linter_errors = 'error',
    linter_ok = 'right'
  }
}
vim.g.lightline_ale_indicator_checking = "\\uf110 "
vim.g.lightline_ale_indicator_infos = "\\uf129 "
vim.g.lightline_ale_indicator_warnings = "\\uf071 "
vim.g.lightline_ale_indicator_errors = "\\uf05e "
vim.g.lightline_ale_indicator_ok = "\\uf00c "
