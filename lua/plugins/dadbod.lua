lvim.plugins = {
    {"tpope/vim-dadbod"},
    {"kristijanhusak/vim-dadbod-ui"},
    {"kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }},
}

vim.g.completion_enable_auto_popup= 1
vim.g.db_ui_use_nerd_fonts = 1

vim.cmd([[
  autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer { sources = { { name = 'vim-dadbod-completion' } } }
]])
