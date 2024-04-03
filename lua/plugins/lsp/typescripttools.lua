return {
  "pmizio/typescript-tools.nvim",
  event = {"BufReadPost *.js,*.jsx,*.ts,*.tsx", "BufNewFile *.js,*.jsx,*.ts,*.tsx"},
  -- ft = {"javascript", "javascriptreact", "typescript", "typescriptreact"},
  opts = {},
  config = function()
    require("typescript-tools").setup {}
  end,
}
