local M = {
  "lewis6991/gitsigns.nvim",
  commit = "c5ff7628e19a47ec14d3657294cc074ecae27b99",
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
    update_debounce = 5000,
    current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
    current_line_blame_opts = {
      delay = 5000,
    },
  })
end

return M
