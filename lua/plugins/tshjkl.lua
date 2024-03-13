return {
  'gsuuon/tshjkl.nvim',
  config = function()
    require('tshjkl').setup({
      select_current_node = false,
      keymaps = {
        toggle = '<leader>N',
      }
    })
  end
}
