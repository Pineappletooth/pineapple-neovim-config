local M = {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.4",
  lazy = false,
  cmd = { "Telescope" }
}



function M.config()
  local actions = require "telescope.actions"
  require('telescope').setup({
    defaults = {
      prompt_prefix = " ",
      selection_caret = " ",
      path_display = { "smart" },
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
