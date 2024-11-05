local dap = require("dap")
dap.adapters.netcoredbg = {
    type = 'executable',
    command = '/usr/bin/netcoredbg',
    args = {'--interpreter=vscode'}
}

dap.configurations.cs = {
    {
        type = 'netcoredbg',
        name = 'launch - netcoredbg',
        request = 'launch',
        program = function()
            return vim.fn.input('Path to dll: ', vim.fn.getcwd() ..'/bin/Debug/', 'file')
        end,
        cwd = '${workspaceFolder}',
        stopAtEbtry = false,
        console = 'integratedTerminal',
    },
    {
        type = 'netcoredbg',
        name = 'attach -netcoredbg',
        request = 'attach',
        processId = require('dap.utils').pick_process,
        cwd = '${workspaceFolder}',
    }
}
