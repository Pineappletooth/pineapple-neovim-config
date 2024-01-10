return {
  'chentoast/marks.nvim',
  event={"BufEnter"},
  commit  = '74e8d01b2a2131b6e46354cffc553aa7f81bcf5b',
  config = function ()
    require('marks').setup({})
  end
}
