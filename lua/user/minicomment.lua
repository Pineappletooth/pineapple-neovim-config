local M = {
  "echasnovski/mini.comment",
  event = "VeryLazy",
  tag = "v0.10.0",
  opts = {
    options = {
      custom_commentstring = function()
        return require("ts_context_commentstring.internal").calculate_commentstring() or vim.bo.commentstring
      end,
    },
    mappings = {
         -- Normal and Visual modes
      comment = 'yc',

      -- Toggle comment on current line
      comment_line = 'ycc',

      -- Toggle comment on visual selection
      comment_visual = 'yc',

      -- Define 'comment' textobject (like `dgc` - delete whole comment block)
      textobject = 'yc',
    }
  },
}

function M.config()
  require('mini.comment').setup()
end

return M
