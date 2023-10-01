local M = {
  "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  commit = "45d0237c427baba8cd05e0ab26d30e2ee58c2c82"
}

function M.config()
  require("nvim-web-devicons").setup {
    override = {
      zsh = {
        icon = "",
        color = "#428850",
        cterm_color = "65",
        name = "Zsh",
      },
    },
    color_icons = true,
    default = true,
  }
end

return M
