local M = {
  "numToStr/Comment.nvim",
  commit = "0236521ea582747b58869cb72f70ccfa967d2e89",
  event = {"BufRead", "BufNewFile"},
}

function M.config()
  require('Comment').setup()
end

return M
