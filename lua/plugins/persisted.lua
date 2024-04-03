return{
  "olimorris/persisted.nvim",
  lazy = false,
  config = function()
    require("persisted").setup({
      use_git_branch = true,
    })
    require("telescope").load_extension("persisted")
  end,
}
