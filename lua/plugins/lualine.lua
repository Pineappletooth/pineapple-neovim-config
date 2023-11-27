local M = {
  "nvim-lualine/lualine.nvim",
  commit = "2248ef254d0a1488a72041cfb45ca9caada6d994",
  event = { "VeryLazy" },
}

function M.config()
  local icons = require("icons")
  local status_ok, lualine = pcall(require, "lualine")
  if not status_ok then
    return
  end

  local hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end

  local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn" },
    symbols = { error = icons.diagnostics.BoldError.." ", warn = icons.diagnostics.BoldWarning.." " },
    colored = false,
    always_visible = true,
  }
  local diff = {
    "diff",
    colored = false,
    symbols = { added = icons.git.LineAdded, modified = icons.git.LineModified, removed = icons.git.LineModified }, -- changes diff symbols
    cond = hide_in_width,
  }

  local filetype = {
    "filetype",
    icons_enabled = false,
  }

  local location = {
    "location",
    padding = 0,
  }

  local spaces = function()
    return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
  end
  lualine.setup {
    options = {
      globalstatus = true,
      icons_enabled = true,
      theme = "auto",
      disabled_filetypes = { "alpha", "dashboard" },
      always_divide_middle = true,
    },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = {
        "filename",
        diagnostics,
        {
          require("dr-lsp").lspCount,
          fmt = function(str)
            local definitions, references = str:match("LSP: (.-) (.+)")

            -- Check if both parts are not nil
            if definitions and references then
              -- Format the extracted parts
              local formattedString = "LSP: " .. definitions .. "  " .. references
              -- Print the formatted string
              return formattedString
            else
              -- Handle the case where the pattern doesn't match the input
              return nil
            end
          end
        },
        { require("dr-lsp").lspProgress },
      },
      lualine_x = { diff, spaces, "encoding", filetype },
      lualine_y = { location },
      lualine_z = { "progress" },
    },
  }
end

return M
