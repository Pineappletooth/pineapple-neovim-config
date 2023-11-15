local M = {
  "folke/which-key.nvim",
  tag = "v1.6.0",
  event = "VeryLazy",
}

function M.config()
  local wk = require("which-key")
  wk.setup {
    triggers_nowait = {}
  }
  wk.register({
    f = {name = "Telescope"},
    b = {name = "Buffers"},
    d = {name = "dap"},
    l = {name = "lsp"},
    q = {name = "session"}
  }, { prefix = "<leader>",  })
end

return M
