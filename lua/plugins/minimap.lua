return {
  'echasnovski/mini.map',
  event = {'BufEnter'},
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
