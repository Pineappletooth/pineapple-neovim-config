local M = {
  "folke/which-key.nvim",
  tag = "v1.5.1",
  event = "VeryLazy",
}

function M.config()
  local wk = require("which-key")
  wk.setup {}
  wk.register({
    f = {name = "Telescope"},
    b = {name = "Buffers"},
    d = {name = "dap"},
    l = {name = "lsp"},
    q = {name = "session"}
  }, { prefix = "<leader>" })
end

return M
