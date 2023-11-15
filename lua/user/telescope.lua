local M = {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.4",
  cmd = { "Telescope" },
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    enabled =  vim.fn.executable("make") == 1,
    commit = "6c921ca12321edaa773e324ef64ea301a1d0da62",
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
      file_ignore_patterns = { ".git", "node_modules", "dist", "*-lock.*" },
      mappings = {
        i = {
          ["<Down>"] = actions.move_selection_next,
          ["<Up>"] = actions.move_selection_previous,
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
        },
      },
    }
  })

end

return M
