-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny


-- LSP
require("lsp.angularls")
require("lsp.emmet")
require("lsp.csharp_ls")
require("lsp.omnisharp")

-- Linters
require("linter.eslint")

-- Formatter
require("formatter.prettier")

-- Plugins
require("plugins.diffview")
require("plugins.go-to-preview")
require("plugins.nvim-ts-autotag")
require("plugins.vimspector")
require("plugins.fzf")
--require("plugins.roslyn")
require("plugins.nvim-dap")
require("plugins.neotest")

-- vim settings
require("vimsettings")

--dap
require("dap.netcoredbg")
