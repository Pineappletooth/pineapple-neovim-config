local M = {
  "nvim-telescope/telescope.nvim",
  cmd = { "Telescope" },
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    enabled = vim.fn.executable("make") == 1,
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
      live_grep = { debounce = 1000 },
      find_files = { debounce = 1000 }
    },
    extensions = {
      fzf = {
        fuzzy = true,                 -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true,  -- override the file sorter
        case_mode = "ignore_case",     -- or "ignore_case" or "respect_case"
        -- the default case_mode is "smart_case"
      }
    }
  })
  require("telescope").load_extension("fzf")
end

return M
