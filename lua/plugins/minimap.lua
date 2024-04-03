vim.api.nvim_create_user_command('Minimap',function()
  MiniMap.toggle()
end,{})
vim.api.nvim_create_user_command('MinimapFocus',function()
  MiniMap.toggle_focus()
end,{})
return {
  'echasnovski/mini.map',
  command={"Minimap", "MinimapFocus"},
  config = function()
    require('mini.map').setup({
      symbols = {
        encode = require('mini.map').gen_encode_symbols.dot("4x2"),
        scroll_line = '█',
        scroll_view = '┃',
      },
      window = {
        show_integration_count = false,
        focusable = true,
        width = 15
      },
       integrations = {
      require('mini.map').gen_integration.builtin_search(),
      require('mini.map').gen_integration.diagnostic(),
      require('mini.map').gen_integration.gitsigns(),
    },
    })
  end
}
