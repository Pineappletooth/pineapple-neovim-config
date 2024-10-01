return {
  'nvim-java/nvim-java',
  ft = {"java"},
  dependencies = {
    {
      "williamboman/mason.nvim",
      opts = {
        registries = {
          "github:nvim-java/mason-registry",
          "github:mason-org/mason-registry",
        },
      },
    },
  },
  config = function()
    require('java').setup()
    require('lspconfig').jdtls.setup({})
  end
}
