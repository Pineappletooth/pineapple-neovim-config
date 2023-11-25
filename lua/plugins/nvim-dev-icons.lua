local M = {
  "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  commit = "11eb26fc166742db8d1e8a6f5a7de9df37b09aae"
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
