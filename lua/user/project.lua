local M = {
  "ahmedkhalf/project.nvim",
  commit = "8c6bad7d22eef1b71144b401c9f74ed01526a4fb",
}

function M.config()
  local project = require "project_nvim"
  project.setup {

    -- detection_methods = { "lsp", "pattern" }, -- NOTE: lsp detection will get annoying with multiple langs in one project
    detection_methods = { "pattern" },

    -- patterns used to detect root dir, when **"pattern"** is in detection_methods
    patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "pom.xml" },
    ignore_lsp = {},
    exclude_dirs = {},
    show_hidden = false,
    silent_chdir = true,
    scope_chdir = "global",
  }

  local telescope = require "telescope"
  telescope.load_extension "projects"
end

return M
