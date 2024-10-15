lvim.plugins = {
    {
        "mfussenegger/nvim-dap"
    }
}

lvim.keys.normal_mode["<F9>"]=":lua require'dap'.toggle_breakpoint()<CR>"
lvim.keys.normal_mode["<F5>"]=":lua require'dap'.continue()<CR>"
lvim.keys.normal_mode["<F10>"]=":lua require'dap'.step_over()<CR>"
lvim.keys.normal_mode["<F11>"]=":lua require'dap'.step_into()<CR>"
lvim.keys.normal_mode["<leader>c"]=":lua require'dapui'.close()<CR>"

