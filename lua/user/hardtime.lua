return {
   "m4xshen/hardtime.nvim",
   commit = "8cc4dec29a177cb7c33a900ccf45b451684c30a0",
   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
   opts = {
      max_count = 7,
      disabled_filetypes = { "help","prompt","qf", "netrw", "NvimTree", "lazy", "mason", "oil", "minifiles", "trouble", "nvim-navbuddy" },
      disabled_keys = {
      ["<Up>"] = { "", "n" },
      ["<Down>"] = { "", "n" },
      ["<Left>"] = { "", "n" },
      ["<Right>"] = { "", "n" },
   }
   },
}
