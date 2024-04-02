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
}
