local M = {
  "echasnovski/mini.indentscope",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    symbol = "│",
    options = { try_as_border = true },
  },
  enabled = true,
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
      animation = require('mini.indentscope').gen_animation.none(),
    },
    mappings = {
      -- Textobjects
      object_scope = 'ii',
      object_scope_with_border = 'ai',

      -- Motions (jump to respective border line; if not present - body line)
      goto_top = '[i',
      goto_bottom = ']i',
    },
  })
end
return M
