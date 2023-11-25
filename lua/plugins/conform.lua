return {
  'stevearc/conform.nvim',
  tag="v4.0.0",
  cmd = "ConformInfo",
   event = { "BufWritePre" },
  keys = {
    {
      "<leader>c",
      function()
        require("conform").format({ lsp_fallback = true, async = true })
      end,
      mode = { "n", "v" },
      desc = "Format File",
    },
  },
  opts = {
     formatters_by_ft = {
        lua = { "stylua" },
      },
    formatters = {
        injected = { options = { ignore_errors = true } },
    }
  },
  config = function()
    require("conform").setup({
    })
  end
}
