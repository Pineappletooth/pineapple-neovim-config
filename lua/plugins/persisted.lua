return{
  "olimorris/persisted.nvim",
  commit = 'edd8aa41cd87f9da1b6ef0c584068dea192f65b7',
  config = function()
    require("persisted").setup()
    require("telescope").load_extension("persisted")
  end,
}
