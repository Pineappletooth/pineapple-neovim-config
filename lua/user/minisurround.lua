local M = {
  'echasnovski/mini.surround',
  tag = 'v0.10.0',
  event = {"BufRead", "BufNewFile"},
  opts = {},
}

function M.config()
  require('mini.surround').setup()
end

return M
