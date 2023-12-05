local M = {
  "williamboman/mason.nvim",
  tag = "v1.8.3",
  cmd = "Mason",
  event = "VeryLazy",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
      tag = "v1.22.0"
    },
  },
}

local settings = {
  ui = {
    border = "none",
    icons = {
      package_installed = "◍",
      package_pending = "◍",
      package_uninstalled = "◍",
    },
  },
  log_level = vim.log.levels.INFO,
  max_concurrent_installers = 4,
}

function M.config()
  require("mason").setup(settings)
  require("mason-lspconfig").setup {
    ensure_installed = require("utils").ensure_installed,
    automatic_installation = true,
  }
end

return M