return {
  {
    'ojroques/nvim-bufdel',
    event = 'VeryLazy',
    config = function ()
      require('bufdel').setup({
        quit = false
      })
    end
  },
  {
    'axkirillov/hbac.nvim',
    event = 'VeryLazy',
    config = function ()
      require("hbac").setup({
          threshold = 5,
      })
    end
  },
}
