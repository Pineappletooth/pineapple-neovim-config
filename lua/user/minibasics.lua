local M = {
  'echasnovski/mini.basics',
  tag = 'v0.10.0',
  event = "VeryLazy",
  opts = {},
}

function M.config()
  require('mini.basics').setup()
end

return M
