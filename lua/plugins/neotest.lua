lvim.plugins = {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "Issafalcon/neotest-dotnet"
        }
    }
}

require("neotest").setup({
    adapters = {
        require("neotest-dotnet")({
            dap = {
                args = {justMycode = false},
                adapter_name = "netcoredbg"
            }
        })
    }
})

lvim.keys.normal_mode["<leader>tn"]=":lua require'neotest'.run.run()<CR>"
lvim.keys.normal_mode["<leader>ta"]=":lua require'neotest'.run.run(vim.fn.expand(\"%\"))<CR>"
lvim.keys.normal_mode["<leader>td"]=":lua require'neotest'.run.run({strategy = \"dap\"})<CR>"
lvim.keys.normal_mode["<leader>to"]=":lua require'neotest'.output.open({enter = true})<CR>"
lvim.keys.normal_mode["<leader>ts"]=":lua require'neotest'.summary.open()<CR>"
lvim.keys.normal_mode["<leader>tsc"]=":lua require'neotest'.summary.close()<CR>"
