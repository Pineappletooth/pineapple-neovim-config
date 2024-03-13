return {
  'karb94/neoscroll.nvim',
  enabled = true,
  config = function ()
    require('neoscroll').setup({
      -- performance_mode = true
      pre_hook = function()
        vim.opt.eventignore:append({
            'WinScrolled',
            'CursorMoved',
         })
    end,
        post_hook = function()
        vim.opt.eventignore:remove({
            'WinScrolled',
            'CursorMoved',
        })
    end,
    })
  end
}
