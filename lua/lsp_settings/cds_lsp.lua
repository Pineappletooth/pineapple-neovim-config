local lspconfig = require("lspconfig")
return {
  default_config = {
    cmd = {
      -- Since we installed cds-lsp globally, we can refer to it using this command
      vim.fn.expand("cds-lsp"),
      -- And then remembering to kindly ask it to be ready for some sweet stdio communication
      "--stdio",
    },
    -- Also remember to tell it which files it actually works with!
    filetypes = { "cds" },
    root_dir = lspconfig.util.root_pattern(".git", "package.json"),
    settings = {},
  },
}
