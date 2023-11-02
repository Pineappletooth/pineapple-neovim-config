local M = {
  "akinsho/bufferline.nvim",
  tag = "v4.4.0",
  event = { "BufEnter" },
 }
function M.config()
  require("bufferline").setup {
    options = {
      offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
      diagnostics = "nvim_lsp",
      close_command = function(n) require("bufdel").delete_buffer_expr(n,false) end,
      -- stylua: ignore
      right_mouse_command = function(n) require("bufdel").delete_buffer_expr(n,false) end,
    },
  }
end

return M
