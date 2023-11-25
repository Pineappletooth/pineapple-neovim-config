local M = {
  'ojroques/nvim-bufdel',
  commit = '96c4f7ab053ddab0025bebe5f7c71e4795430e47',
  event = 'VeryLazy'
}

function M.config()
  require('bufdel').setup({
    quit = false
  })
end

return M
