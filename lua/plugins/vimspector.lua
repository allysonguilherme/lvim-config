lvim.plugins = {
    {
        'puremourning/vimspector',
    },
}

--vim.g.vimspector_enable_mappings = 'HUMAN'

lvim.keys.normal_mode["\\vl"] = ":call vimspector#Launch()<CR>"
lvim.keys.normal_mode["\\vr"] = ":call vimspector#Reset()<CR>"
lvim.keys.normal_mode["\\vb"] = ":call vimspector#ToggleBreakpoint()<CR>"
