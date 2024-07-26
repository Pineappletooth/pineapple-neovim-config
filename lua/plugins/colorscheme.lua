local M = {
  "folke/tokyonight.nvim",
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
  })
  require("tokyonight").load()
end
return M
