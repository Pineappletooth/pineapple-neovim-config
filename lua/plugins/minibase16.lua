return {
    'echasnovski/mini.base16',
    lazy = false,
    enabled=false,
    priority = 40,
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
        require('mini.base16').setup(
            {
                palette = p,
                plugins = {
                    [ 'lewis6991/gitsigns.nvim' ]= false
                }
            }
        )
        vim.api.nvim_set_hl(0,'SignColumn', {bg=p.base00})
        vim.api.nvim_set_hl(0,'LineNr', {bg=p.base00})
        vim.api.nvim_set_hl(0,'NormalFloat',{fg=p.base08})
    end
}
