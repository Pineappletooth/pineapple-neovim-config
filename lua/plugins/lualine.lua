local M = {
  "nvim-lualine/lualine.nvim",
  enabled = false,
  event = { "VeryLazy" },
}



local function search_result()
  if vim.v.hlsearch == 0 then
    return ''
  end
  local last_search = vim.fn.getreg('/')
  if not last_search or last_search == '' then
    return ''
  end
  local searchcount = vim.fn.searchcount { maxcount = 9999 }
  return last_search .. '(' .. searchcount.current .. '/' .. searchcount.total .. ')'
end

function M.config()

  local color = require('base16-colorscheme').colors
  local colors = {
    red = color.base01,
    grey = '#a0a1a7',
    black = '#383a42',
    white = '#f3f3f3',
    light_green = '#83a598',
    orange = '#fe8019',
    green = '#8ec07c',
  }

  local theme = {
    normal = {
      a = { fg = colors.white, bg = color.base08 },
      b = { fg = colors.black, bg = color.base06 },
      c = { fg = colors.white, bg = color.base03 },
      z = { fg = colors.white, bg = color.base08 },
    },
    insert = { a = { fg = colors.black, bg = color.base0B } },
    visual = { a = { fg = colors.black, bg = color.base09 } },
    replace = { a = { fg = colors.black, bg = color.base0D } },
  }

  local icons = require("icons")
  local status_ok, lualine = pcall(require, "lualine")
  if not status_ok then
    return
  end

  local empty = require('lualine.component'):extend()
  function empty:draw(default_highlight)
    self.status = ''
    self.applied_separator = ''
    self:apply_highlights(default_highlight)
    self:apply_section_separators()
    return self.status
  end

  -- Put proper separators and gaps between components in sections
  local function process_sections(sections)
    for name, section in pairs(sections) do
      local left = name:sub(9, 10) < 'x'
      for pos = 1, name ~= 'lualine_z' and #section or #section - 1 do
        table.insert(section, pos * 2, { empty, color = { fg = colors.black, bg = color.base00 } })
      end
      for id, comp in ipairs(section) do
        if type(comp) ~= 'table' then
          comp = { comp }
          section[id] = comp
        end
        comp.separator = left and { right = '' } or { left = '' }
      end
    end
    return sections
  end


  local hide_in_width = function()
    return vim.fn.winwidth(0) > 80
  end

  local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    sections = { "error", "warn" },
    symbols = { error = icons.diagnostics.BoldError .. " ", warn = icons.diagnostics.BoldWarning .. " " },
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
      theme = theme,
      disabled_filetypes = { "alpha", "dashboard" },
      always_divide_middle = true,
    },
    sections = process_sections {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = {
        "filename",
        diagnostics,
        {
          require("dr-lsp").lspCount,
          fmt = function(str)
            local definitions, references = str:match("LSP: (.-) (.+)")
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
