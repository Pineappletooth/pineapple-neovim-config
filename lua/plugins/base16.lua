return {
    'RRethy/base16-nvim',
    lazy = false,
    priority = 1000,
    config = function()
        local p = {
            base00 = '#1d2026',
            base01 = '#282c34',
            base02 = '#3e4451',
            base03 = '#545862',
            base04 = '#565c64',
            base05 = '#abb2bf',
            base06 = '#b6bdca',
            base07 = '#c8ccd4',
            base08 = '#e06c75',
            base09 = '#d19a66',
            base0A = '#e5c07b',
            base0B = '#98c379',
            base0C = '#56b6c2',
            base0D = '#61afef',
            base0E = '#c678dd',
            base0F = '#be5046'
        }
        require('colorscheme').setup(p)
        vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = p.base08 })
        vim.api.nvim_set_hl(0, 'DashboardKey', { fg = p.base0A })
        vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = p.base0D })

        vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = p.base00 })

        vim.defer_fn(function()
            vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = p.base08 })
            vim.api.nvim_set_hl(0, 'MarkSignNumHl', { fg = p.base08 })
            vim.api.nvim_set_hl(0, 'LspReferenceRead', { bg = p.base02 })
            vim.api.nvim_set_hl(0, 'LspReferenceWrite', { bg = p.base02 })
            vim.api.nvim_set_hl(0, 'Identifier', { fg = p.base0E })
            vim.api.nvim_set_hl(0, 'Statement', { fg = p.base0E })
            vim.api.nvim_set_hl(0, 'Repeat', { fg = p.base0E })
            vim.api.nvim_set_hl(0, 'Structure', { fg = p.base08 })
        end, 500)
    end
}
