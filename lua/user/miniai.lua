local M = {
  'echasnovski/mini.ai',
  tag = 'v0.10.0',
  event = "VeryLazy",
  opts = {},
}

function M.config()
  require('mini.ai').setup()
end

return M
