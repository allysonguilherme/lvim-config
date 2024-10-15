vim.opt.clipboard = "unnamedplus"
-- Settings
--vim.cmd([[
--  filetype indent plugin on
--  if !exists('g:syntax_on') | syntax enable | endif
--]])
--vim.opt.encoding = "utf-8"
--vim.scriptencoding = "utf-8"
--
--vim.opt.completeopt = { "menuone", "noinsert", "noselect", "popuphidden" }
--vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.expandtab = true
--vim.opt.shiftround = true
vim.opt.shiftwidth = 4
--vim.opt.softtabstop = -1
vim.opt.tabstop = 4
--vim.opt.textwidth = 80
--vim.opt.title = true
--vim.opt.hidden = true
--vim.opt.nofixeol = true
--vim.opt.splitbelow = true
--vim.opt.splitright = true
--vim.opt.hlsearch = true
--vim.opt.incsearch = true
--vim.opt.laststatus = 2
--vim.opt.number = false
--vim.opt.ruler = false
--vim.opt.showmode = false
--vim.opt.signcolumn = "yes"
--vim.opt.mouse = "a"
--vim.opt.updatetime = 1000

-- Colorscheme and truecolor support
--vim.api.nvim_create_augroup("ColorschemePreferences", {})
--vim.api.nvim_create_autocmd("ColorScheme", {
--  group = "ColorschemePreferences",
--  pattern = "*",
--  command = [[
--    highlight Normal ctermbg=NONE guibg=NONE
--    highlight SignColumn ctermbg=NONE guibg=NONE
--    highlight Todo ctermbg=NONE guibg=NONE
--    highlight link ALEErrorSign WarningMsg
--    highlight link ALEWarningSign ModeMsg
--    highlight link ALEInfoSign Identifier
--  ]]
--})
