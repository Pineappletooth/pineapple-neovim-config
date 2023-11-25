local M = {
  "folke/tokyonight.nvim",
  tag = "v2.9.0",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}
-- colorscheme tokyonight
-- colorscheme tokyonight-night
-- colorscheme tokyonight-storm
-- colorscheme tokyonight-day
-- colorscheme tokyonight-moon
function M.config()
  pcall(vim.cmd.colorscheme, M.name)
  require("tokyonight").setup({
    style = "night",
    on_highlights = function(hl, c)
      hl.DiagnosticUnnecessary = {
        fg = c.dark5,
      }
      hl.MiniIndentscopeSymbolOff = {
        fg = c.cyan
      }
    end,
  --   on_highlights = function(highlights, colors)
  --     highlights.MiniIndentscopeSymbol = {
  --     fg = colors.purple,
  --   }
  --   end
  })
  require("tokyonight").load()
end
return M
