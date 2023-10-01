local M = {
  "folke/tokyonight.nvim",
  tag = "v2.3.0",
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
}
-- colorscheme tokyonight
-- colorscheme tokyonight-night
-- colorscheme tokyonight-storm
-- colorscheme tokyonight-day
-- colorscheme tokyonight-moon
function M.config()
  require("tokyonight").setup({
  --   on_highlights = function(highlights, colors)
  --     highlights.MiniIndentscopeSymbol = {
  --     fg = colors.purple,
  --   }
  --   end
  })
end
return M
