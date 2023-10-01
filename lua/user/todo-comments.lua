local M = {
  "folke/todo-comments.nvim",
  commit = "3094ead8edfa9040de2421deddec55d3762f64d1",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = { "TodoTrouble", "TodoTelescope" },
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
}
return M
