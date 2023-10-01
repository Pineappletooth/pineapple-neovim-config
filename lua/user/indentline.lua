local M = {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufNewFile" },
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
