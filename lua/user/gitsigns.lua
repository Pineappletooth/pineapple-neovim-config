local M = {
  "lewis6991/gitsigns.nvim",
  commit = "bdeba1cec3faddd89146690c10b9a87949c0ee66",
  event = "BufReadPre",
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
    current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      delay = 500,
    },
  })
end

return M
