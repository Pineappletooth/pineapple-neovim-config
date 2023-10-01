local M = {
  "numToStr/Comment.nvim",
  tag = "v0.8.0",
  event = {"BufRead", "BufNewFile"},
}

function M.config()
  require('Comment').setup()
end

return M
