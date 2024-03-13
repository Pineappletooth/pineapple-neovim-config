return{
  "olimorris/persisted.nvim",
  config = function()
    require("persisted").setup()
    require("telescope").load_extension("persisted")
  end,
}
