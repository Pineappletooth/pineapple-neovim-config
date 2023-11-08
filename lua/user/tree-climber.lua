return {
   "drybalka/tree-climber.nvim",
   commit = "9b0c8c8358f575f924008945c74fd4f40d814cd7",
   event = {"BufEnter" },
   config = function ()
      local keyopts = { noremap = true, silent = true }
      vim.keymap.set({'n', 'v', 'o'}, '°', function() require('tree-climber').goto_parent({skip_comments = true}) end, keyopts)
      vim.keymap.set({'n', 'v', 'o'}, '|', function() require('tree-climber').goto_child({skip_comments = true}) end, keyopts)
      vim.keymap.set({'n', 'v', 'o'}, '<tab>', function() require('tree-climber').goto_next({skip_comments = true}) end, keyopts)
      vim.keymap.set({'n', 'v', 'o'}, '<S-TAB>', function() require('tree-climber').goto_prev({skip_comments = true}) end, keyopts)
      vim.keymap.set({'v', 'o'}, 'in', require('tree-climber').select_node, keyopts)
      vim.keymap.set('n', '<c-k>', require('tree-climber').swap_prev, keyopts)
      vim.keymap.set('n', '<c-j>', require('tree-climber').swap_next, keyopts)
      vim.keymap.set('n', '<c-h>', require('tree-climber').highlight_node, keyopts)
   end
}
