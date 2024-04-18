return {
  'olimorris/onedarkpro.nvim',
  priority = 100,
  config = function()
    local colors = require("onedarkpro.helpers").get_colors("onedark_dark")
    require("onedarkpro").setup({
      highlights = {
        DashboardHeader = {
          fg = "#db4b4b"
        },
        DashboardKey = {
          fg = colors.yellow
        },
        DashboardFooter = {
          fg = colors.blue
        },
      }
    })
    vim.cmd.colorscheme "onedark_dark"
  end
}
