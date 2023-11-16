local M = {
  "nvim-telescope/telescope.nvim",
  commit = "721cdcae134eb5c564cb6c9df6c317c3854528ad",
  cmd = { "Telescope" }
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
    },
    pickers = {
      live_grep = {debounce = 1000},
      find_files = {debounce = 1000}
    }
  })

end

return M
