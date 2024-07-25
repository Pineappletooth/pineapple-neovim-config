local M = {
  "folke/which-key.nvim",
  event = "VeryLazy",
}

function M.config()
  local wk = require("which-key")
  wk.add {
    { "<leader>G", group = "git" },
    { "<leader>Gc", desc = "Resolve conflits" },
    { "<leader>b", group = "Buffers" },
    { "<leader>d", group = "dap" },
    { "<leader>f", group = "Telescope" },
    { "<leader>l", group = "lsp" },
    { "<leader>q", group = "session" },
    { "<leader>x", group = "quickfix" },
    { "gq", group = "format with formatexpr" },
    { "gw", group = "format" },
  }
end

return M
