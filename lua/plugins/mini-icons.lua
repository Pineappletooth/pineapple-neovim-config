return {
  'nvim-mini/mini.icons',
  event = 'VeryLazy',
  config = function ()
    require('mini.icons').setup()
  end
}
