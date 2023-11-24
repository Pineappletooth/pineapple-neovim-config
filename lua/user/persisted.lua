return{
  "olimorris/persisted.nvim",
  commit = 'd821524f94b576474234d17e68c3751b36ae188b',
  config = function()
    require("persisted").setup()
    require("telescope").load_extension("persisted")
  end,
}
