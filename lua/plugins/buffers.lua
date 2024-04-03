return {
  {
    'ojroques/nvim-bufdel',
    event = 'BufEnter',
    config = function ()
      require('bufdel').setup({
        quit = false
      })
    end
  },
}
