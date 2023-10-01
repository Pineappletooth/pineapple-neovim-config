local M = {
  "echasnovski/mini.indentscope",
  tag = 'v0.10.0',
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    -- symbol = "▏",
  },
  init = function()
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "help",
        "alpha",
        "dashboard",
        "NvimTree",
        "Trouble",
        "lazy",
        "mason",
        "notify",
        "toggleterm",
        "lazyterm",
      },
      callback = function()
        vim.b.miniindentscope_disable = true
      end,
    })
  end,
}
function M.config()
  require('mini.indentscope').setup({
    symbol = "│",
    options = { try_as_border = true },
    draw = {
      animation = require('mini.indentscope').gen_animation.none()
    }
  })
end
return M
