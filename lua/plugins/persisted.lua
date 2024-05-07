return{
  "olimorris/persisted.nvim",
  enabled = true,
  lazy = false,
  config = function()
    require("persisted").setup({
      use_git_branch = true,
    })
    require("telescope").load_extension("persisted")
  end,
}
