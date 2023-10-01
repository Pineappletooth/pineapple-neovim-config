local M = {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.3",
  event = "Bufenter",
  cmd = { "Telescope" },
  dependencies = {
    {
      "ahmedkhalf/project.nvim",
    },
  },
}

local actions = require "telescope.actions"
function a()
  return "asd"
end
function M.config()
  require('telescope').setup({
  defaults = {
    prompt_prefix = " ",
    selection_caret = " ",
    path_display = { "smart" },
    file_ignore_patterns = { ".git/", "node_modules", "dist" },
    generic_sorter = require('mini.fuzzy').get_telescope_sorter,
    file_sorter =  require('mini.fuzzy').get_telescope_sorter,
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
