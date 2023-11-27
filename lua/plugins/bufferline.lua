local M = {
  "akinsho/bufferline.nvim",
  tag = "v4.4.0",
  event = { "BufEnter" },
}
-- TODO: keep diagnostics after switch 
function M.config()
  require("bufferline").setup {
    options = {
      offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        if context.buffer:current() then
          return ''
        end
        local icons = require("icons").diagnostics
        local ret = (diagnostics_dict.error and icons.BoldError .. " " .. diagnostics_dict.error .. " " or "")
        return vim.trim(ret)
      end,
      diagnostics = "nvim_lsp",
      close_command = function(n) require("bufdel").delete_buffer_expr(n,false) end,
      right_mouse_command = function(n) require("bufdel").delete_buffer_expr(n,false) end,
    },
  }
end

return M
