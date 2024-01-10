return {
   "m4xshen/hardtime.nvim",
   commit = "4ba3be553fa0b713c7b817f6d201b07d282accf3",
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
