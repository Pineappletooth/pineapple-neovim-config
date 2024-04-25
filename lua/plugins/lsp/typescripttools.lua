return {
  "pmizio/typescript-tools.nvim",
  enabled = true,
  event = { "BufReadPost *.js,*.jsx,*.ts,*.tsx", "BufNewFile *.js,*.jsx,*.ts,*.tsx" },
  -- ft = {"javascript", "javascriptreact", "typescript", "typescriptreact"},
  opts = {},
  config = function()
    require("typescript-tools").setup {
      on_attach = function(client, bufnr)
        -- client.server_capabilities.semanticTokensProvider = nil
      end,
    }
  end,
}
