local M = {
  "nvim-telescope/telescope.nvim",
  cmd = { "Telescope" },
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    enabled =  vim.fn.executable("make") == 1,
    config = function ()
      require("telescope").load_extension("fzf")
    end,
  }
}

function M.config()
  local actions = require "telescope.actions"
  require('telescope').setup({
    defaults = {
      prompt_prefix = " ",
      selection_caret = " ",
      path_display = { "truncate" },
      mappings = {
        i = {
          ["<Down>"] = actions.move_selection_next,
          ["<Up>"] = actions.move_selection_previous,
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
        },
      },
    },
    pickers = {
      live_grep = {debounce = 1000},
      find_files = {debounce = 1000}
    }
  })

end

return M
