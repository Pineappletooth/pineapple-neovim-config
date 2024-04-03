return {
  "echasnovski/mini.pairs",
  event = "BufWritePre",
  opts = {},
  config = function ()
    require('mini.pairs').setup()
  end,
}
