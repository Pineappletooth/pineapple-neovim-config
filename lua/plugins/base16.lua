return {
    'RRethy/base16-nvim',
    lazy = false,
    priority = 1000,
    config = function()
        local p = {
            base00 = '#0e0e10',
            base01 = '#16161a',
            base02 = '#1e1e24',
            base03 = '#4e5260',
            base04 = '#585c66',
            base05 = '#abb2bf',
            base06 = '#b6bdca',
            base07 = '#c8ccd4',
            base08 = '#d45f6e',
            base09 = '#d4a070',
            base0A = '#e8c47a',
            base0B = '#88b87a',
            base0C = '#5ebdca',
            base0D = '#65a8e0',
            base0E = '#5ecfb8',
            base0F = '#be5046'
        }
        require('base16-colorscheme').with_config({
            -- cmp = true,
        })
        require('colorscheme').setup(p)
        vim.api.nvim_set_hl(0, 'DashboardHeader', { fg = p.base08 })
        vim.api.nvim_set_hl(0, 'DashboardKey', { fg = p.base0A })
        vim.api.nvim_set_hl(0, 'DashboardFooter', { fg = p.base0D })

        vim.api.nvim_set_hl(0, 'EndOfBuffer', { fg = p.base00 })
  -- vim.api.nvim_set_hl(0, 'ConflictMarkerBegin', { bg = p.base0B})
  --     vim.api.nvim_set_hl(0, 'ConflictMarkerOurs' , { bg = p.base08 })
  --     vim.api.nvim_set_hl(0, 'ConflictMarkerTheirs' , { bg = p.base0B })
  --     vim.api.nvim_set_hl(0, 'ConflictMarkerEnd' , { bg = p.base08 })
  --     vim.api.nvim_set_hl(0,'ConflictMarkerCommonAncestorsHunk' , { bg = p.base0D })

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
