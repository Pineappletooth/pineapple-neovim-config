local M = {
  "akinsho/bufferline.nvim",
  tag = "v4.4.0",
  event = { "BufReadPre", "BufAdd", "BufNew", "BufReadPost" },
 }
function M.config()
  require("bufferline").setup {
    options = {
      offsets = { { filetype = "NvimTree", text = "", padding = 1 } },
      diagnostics = "nvim_lsp",
    },
  }
end

return M
