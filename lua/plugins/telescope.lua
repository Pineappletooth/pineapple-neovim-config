local function detect_build_command()
  if vim.fn.executable("make") == 1 then
    return "make"
  elseif  vim.fn.executable("mingw32-make") == 1 then
    return "mingw32-make"
  elseif vim.fn.executable("cmake") == 1 then
    return "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
  end
  return ""
end

local M = {
{
  "nvim-telescope/telescope.nvim",
  cmd = { "Telescope" },
  config = function ()
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

  end,
  },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    dependencies = {
        "nvim-telescope/telescope.nvim",
    },
    build = detect_build_command(),
    enabled = detect_build_command() ~= "",
    config = function ()
      require("telescope").load_extension("fzf")
    end
  }

}


return M
