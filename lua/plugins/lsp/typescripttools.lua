return {
  "pmizio/typescript-tools.nvim",
  enabled = true,
  event = { "BufReadPre", "BufNewFile" },
  opts = {},
  config = function()
    require("typescript-tools").setup {
      on_attach = function(client, bufnr)
        -- for disabling lsp highlight
        -- client.server_capabilities.semanticTokensProvider = nil
      end,
    }
  end,
}
