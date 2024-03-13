return {
  'nmac427/guess-indent.nvim',
  event = "BufEnter",
  config = function() require('guess-indent').setup {} end,
}
