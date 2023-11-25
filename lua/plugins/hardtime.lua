return {
   "m4xshen/hardtime.nvim",
   commit = "ddf9c8d1028ce318e8c6a0acece6bad31b6f49c5",
   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
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
