local M = {}

M.servers = {
  "lua_ls",
  "cssls",
  "html",
  "pyright",
  "bashls",
  "jsonls",
  "yamlls",
  "cssmodules_ls",
  "gopls",
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
  "cssmodules_ls",
  "jdtls",
}

M.treesitter = {
  "lua",
  "markdown",
  "markdown_inline",
  "bash",
  "python",
  "typescript",
  "javascript",
  "tsx",
  "vimdoc"
}

return M
