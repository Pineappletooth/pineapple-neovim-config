return {
   "m4xshen/hardtime.nvim",
   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
   enabled = false,
   opts = {
      max_count = 7,
      disabled_filetypes = { "help","prompt","qf", "netrw", "NvimTree", "lazy", "mason", "oil", "minifiles", "trouble", "nvim-navbuddy", "minimap" },
      disabled_keys = {
         ["<Up>"] = { "", "n" },
         ["<Down>"] = { "", "n" },
         ["<Left>"] = { "", "n" },
         ["<Right>"] = { "", "n" },
      },
      restricted_keys = {
         ["j"] = {},
         ["k"] = {},
         ["h"] = {},
         ["l"] = {},
      }
   },
}
