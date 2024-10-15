lvim.plugins = {
    {
    "OmniSharp/omnisharp-vim",
    config = function()
      vim.g.OmniSharp_server_stdio = 1
      vim.g.OmniSharp_popup = 1
      vim.g.OmniSharp_server_use_net6 = 1
      --vim.g.OmniSharp_server_use_mono = 1
      vim.g.OmniSharp_loglevel = 'debug'
      vim.g.OmniSharp_popup_position = 'peek'
      vim.g.OmniSharp_popup_options = {
        winblend = 10,
        winhl = 'Normal:Normal,FloatBorder:ModeMsg',
        border = 'rounded'
      }
      vim.g.OmniSharp_want_snippet = 1
    end
  },
}
lvim.keys.normal_mode["\\rp"] = ":OmniSharpReloadProject<CR>"
