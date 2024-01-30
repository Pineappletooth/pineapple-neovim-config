return {
  "rest-nvim/rest.nvim",
  event = "VeryLazy",
  config = function ()
    local keymap = vim.api.nvim_set_keymap
    keymap('n', '<leader>aa', '<Plug>RestNvim',{silent = true})
  end
}
