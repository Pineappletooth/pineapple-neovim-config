local M = {
  "folke/persistence.nvim",
  commit = "4b8051c01f696d8849a5cb8afa9767be8db16e40",
  event = "BufReadPre", -- this will only start session saving when an actual file was opened
  opts = {
    options = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp" }
  }
}
return M
