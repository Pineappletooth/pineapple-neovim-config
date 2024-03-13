local M = {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  opts = {
    indent = { char = "│" },
    scope = { enabled = false },
    exclude = {
      filetypes = {
        "help",
        "alpha",
        "dashboard",
        "NvimTree",
        "Trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
      },
    },
  },
  main = "ibl",
}
return M
