return {
    'echasnovski/mini.base16',
    lazy = false,
    priority = 40,
    config = function()
        local p = {
            base00 = '#282c34',
            base01 = '#353b45',
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
        local c = {
            base00 = '#112641',
            base01 = '#3a475e',
            base02 = '#606b81',
            base03 = '#8691a7',
            base04 = '#d5dc81',
            base05 = '#e2e98f',
            base06 = '#eff69c',
            base07 = '#fcffaa',
            base08 = '#ffcfa0',
            base09 = '#cc7e46',
            base0A = '#46a436',
            base0B = '#9ff895',
            base0C = '#ca6ecf',
            base0D = '#42f7ff',
            base0E = '#ffc4ff',
            base0F = '#00a5c5',
        }
        require('mini.base16').setup(
            {
                palette = p
            }
        )
    end
}
