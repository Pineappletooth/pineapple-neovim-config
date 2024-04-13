return {
  'olimorris/onedarkpro.nvim',
  priority = 100,
  config = function()
    local colors = require("onedarkpro.helpers").get_colors("onedark")
    require("onedarkpro").setup({
      highlights = {
        DashboardHeader = {
          fg = colors.purple
        }
      }
    })
    vim.cmd.colorscheme "onedark"
  end
}
