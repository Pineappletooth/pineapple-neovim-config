local M = {
  "williamboman/mason.nvim",
  cmd = "Mason",
  event = "VeryLazy",
  dependencies = {
    {
      "williamboman/mason-lspconfig.nvim",
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

function M.config(_, opts)
  local conf = vim.tbl_deep_extend('keep', opts, settings)
  require("mason").setup(conf)
  require("mason-lspconfig").setup {
    ensure_installed = require("installed_languages").ensure_installed,
    automatic_installation = true,
  }
end

return M
