return {
  {
    'ojroques/nvim-bufdel',
    commit = '96c4f7ab053ddab0025bebe5f7c71e4795430e47',
    event = 'VeryLazy',
    config = function ()
      require('bufdel').setup({
        quit = false
      })
    end
  },
  {
    'axkirillov/hbac.nvim',
    commit = 'e2e8333aa56ef43a577ac3a2a2e87bdf2f0d4cbb',
    event = 'VeryLazy',
    config = function ()
      require("hbac").setup({
          threshold = 1,
      })
    end
  },
}
