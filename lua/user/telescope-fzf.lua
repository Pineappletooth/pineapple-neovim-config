return {
  'nvim-telescope/telescope-fzf-native.nvim',
  build = 'make',
  enabled =  vim.fn.executable("make") == 1,
  commit = "6c921ca12321edaa773e324ef64ea301a1d0da62",
  config = function ()
    require("telescope").load_extension("fzf")
  end,
}
