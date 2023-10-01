local M = {
  "echasnovski/mini.fuzzy",
  tag = 'v0.10.0',
}
function M.config()
  require('mini.fuzzy').setup()
end
return M
