local M = {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  branch = 'main',
  init = function()
    local ensure_installed = require("installed_languages").treesitter -- put the language you want in this array
    local alreadyInstalled = require('nvim-treesitter.config').get_installed()
    local parsersToInstall = vim.iter(ensure_installed)
      :filter(function(parser)
        return not vim.tbl_contains(alreadyInstalled, parser)
      end)
      :totable()
    require('nvim-treesitter').install(parsersToInstall)
    -- require('nvim-treesitter-textsubjects').configure({
    --   prev_selection = ',',
    --   keymaps = {
    --     ['.'] = 'textsubjects-smart',
    --     [';'] = 'textsubjects-container-outer',
    --     ['i;'] = 'textsubjects-container-inner',
    --   },
    -- })
  end,
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter-textobjects",
      branch = 'main',
    },
    {
      "JoosepAlviste/nvim-ts-context-commentstring",
      opts = {
        enable_autocmd = false,
      },
    }

  },
}
return M
