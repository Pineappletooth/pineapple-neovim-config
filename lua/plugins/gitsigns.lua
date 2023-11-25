local M = {
  "lewis6991/gitsigns.nvim",
  commit = "af0f583cd35286dd6f0e3ed52622728703237e50",
  event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  opts = {

  }
}

function M.config()
  require('gitsigns').setup({
    signs = {
      add = { text = "▎" },
      change = { text = "▎" },
      delete = { text = "" },
      topdelete = { text = "" },
      changedelete = { text = "▎" },
      untracked = { text = "┋" },
    },
    current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      delay = 1000,
    },
  })
end

return M
