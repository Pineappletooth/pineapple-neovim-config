local M = {
  "folke/which-key.nvim",
  event = "VeryLazy",
}

function M.config()
  local wk = require("which-key")
  wk.setup {
    triggers_nowait = {},
  }
  wk.register({
    f = { name = "Telescope" },
    b = { name = "Buffers" },
    d = { name = "dap" },
    l = { name = "lsp" },
    q = { name = "session" },
    G = {
      name = "git",
      c = "Resolve conflits",
    },
    x = { name = "quickfix" }
  }, { prefix = "<leader>", })

  wk.register({
    g = {
      q = "format with formatexpr",
      w = "format"
    }
  })
end

return M
