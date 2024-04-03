local M = {}

M.servers = {
  "lua_ls",
  "cssls",
  "html",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "eslint",
  "cssmodules_ls",
  "gopls",
  -- "jdtls"
}
M.ensure_installed = {
  "lua_ls",
  "cssls",
  "html",
  "tsserver",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "eslint",
  "cssmodules_ls",
  -- "gopls",
  "jdtls"
}

return M
