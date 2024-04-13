return {
  'olimorris/onedarkpro.nvim',
  priority = 100,
  config = function()
    local colors = require("onedarkpro.helpers").get_colors("onedark")
    require("onedarkpro").setup({
      highlights = {
        DashboardHeader = {
          fg = "#db4b4b"
        },
        DashboardKey = {
          fg = colors.yellow
        },
        DashboardFooter = {
          fg = "#7dcfff"
        },
      }
    })
    vim.cmd.colorscheme "onedark"
  end
}
