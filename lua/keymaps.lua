-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

local function descOpts(desc)
  return {
    silent = true,
    desc = desc
  }
end

local function toggle_qf()
  local qf_exists = false
  for _, win in pairs(vim.fn.getwininfo()) do
    if win["quickfix"] == 1 then
      qf_exists = true
    end
  end
  if qf_exists == true then
    vim.cmd "cclose"
  else
    vim.cmd "copen"
  end
end

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

--Insert
--lsp
keymap("i","<C-s>",function() vim.lsp.buf.signature_help() end, opts)
-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-k>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("n", "<leader>w", "<C-w>w", {desc="cycle through windows"})
keymap("n", "<C-d>", "<C-d>zz", opts)
keymap("n", "<C-u>", "<C-u>zz", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", { desc = "Disable highlight search" })

-- Close buffers
keymap("n", "<S-q>", "<cmd>BufDel<CR>", opts)

-- Better copy paste
keymap('n', '<C-s>', ':w<CR>') -- Save
keymap('v', '<C-c>', '"+y') -- Copy
keymap('n', '<C-v>', '"+P') -- Paste normal mode
keymap('v', '<C-v>', '"+P') -- Paste visual mode
keymap('c', '<C-v>', '<C-R>+') -- Paste command mode
keymap('i', '<C-v>', '<ESC>l"+Pli') -- Paste insert mode-- Insert --
keymap('', '<C-v>', '+p<CR>', { noremap = true, silent = true})
keymap('!', '<C-v>', '<C-R>+', { noremap = true, silent = true})
keymap('t', '<C-v>', '<C-R>+', { noremap = true, silent = true})
keymap('v', '<C-v>', '<C-R>+', { noremap = true, silent = true})
keymap('x', '<leader>p', '"_dP', {noremap = true})
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
keymap("n", "vv", "<C-v>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

--search without advance
keymap("n", "<leader>*", "*N", opts)

-- keymap("n", "<leader>n", "<cmd>set number!<CR>", { desc = "toggle numbers" })


-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

keymap("n", "<leader>n", ":Minimap<CR>", { desc = "MiniMap toggle" })
keymap("n", "<leader>N", ":MinimapFocus<CR>", { desc = "MiniMap focus" })

-- Telescope <C-q> to send search to quickfix
keymap("n", "<leader>ft", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fF", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>ff", ":Telescope current_buffer_fuzzy_find<CR>", opts)
keymap("n", "<leader>fd", ":Telescope diagnostics bufnr=0<CR>", opts)
keymap("n", "<leader>fD", ":Telescope diagnostics", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fl", ":Telescope lsp_references<CR>", opts)
keymap("n", "<leader>fo", ":Telescope oldfiles<CR>", { desc = "Recent", silent = true })
keymap("n", "<leader>fr", ":Telescope resume<CR>", { desc = "Resume last search", silent = true })
keymap("n", "<leader>fm", ":Telescope marks<CR>", { desc = "marks", silent = true })
keymap("n", "<leader>fgs", ":Telescope git_status<CR>", opts)
keymap("n", "<leader>fgc", ":Telescope git_commits<CR>", opts)

-- Git
keymap("n", "<leader>Gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap("n", "<leader>Gd", "<cmd>Gitsigns toggle_current_line_blame<CR>", {desc = "toggle_current_line_blame", silent = true})
keymap("n", "<leader>Gct", "<cmd>ConflictMarkerThemselves<CR>", opts)
keymap("n", "<leader>Gco", "<cmd>ConflictMarkerOurselves<CR>", opts)
keymap("n", "<leader>Gcn", "<cmd>ConflictMarkerNone<CR>", opts)
keymap("n", "<leader>Gcb", "<cmd>ConflictMarkerBoth<CR>", opts)


-- Go to
keymap("n", "<leader>gw", "<cmd>cd %:h <CR>", { desc = "Change CWD to current"})
keymap("n", "<leader>gc", "<cmd>e $MYVIMRC<CR>", { desc = "Go to config"})

-- Comment
keymap("n", "<leader>}", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", opts)
keymap("x", "<leader>}", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", opts)

-- DAP
keymap("n", "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", opts)
keymap("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", opts)
keymap("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", opts)
keymap("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", opts)
keymap("n", "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", opts)
keymap("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", opts)
keymap("n", "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", opts)
keymap("n", "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", opts)
keymap("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", opts)

-- quickfix
keymap("n", "<leader>xq", "<cmd>cclose<cr>", opts)
keymap("n", "<leader>xx", toggle_qf, descOpts("Toggle quickfix"))
keymap("n", "<leader>xn", "<cmd>cnewer<cr>", opts)
keymap("n", "<leader>xo", "<cmd>colder<cr>", opts)
keymap("n", "<leader>xd", "<cmd>lua vim.diagnostic.setqflist()<cr>", opts)
keymap("n", "<leader>xt", "<cmd>TodoQuickFix<cr>", opts)
keymap("n", "<leader>xl", "<cmd>lopen<cr>", opts)
keymap("n", "g}", "<cmd>cnext<cr>", opts)
keymap("n", "g{", "<cmd>cprev<cr>", opts)

-- Lsp
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", {desc = "Format file (use = to single line)"})
keymap("n", "<leader>ln", "<cmd>Navbuddy<cr>", opts)

keymap("n", "<leader><space>", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>bl", "<cmd>bl<CR>", { desc = "next buffer" })
keymap("n", "<leader>bp", "<cmd>bp<CR>", { desc = "previous buffer", silent = true })
keymap("n", "<leader>bd", "<cmd>BufDel<CR>", { desc = "delete current buffer", silent = true })
keymap("n", "<leader>bD", "<cmd>BufDelAll<CR>", { desc = "delete all buffer", silent = true })
keymap("n", "<leader>bb", "<cmd>BufDelOthers<CR>", { desc = "delete all except buffer current one", silent = true })
keymap("n", "<leader>k", "<cmd>WhichKey<CR>", { desc = "show all keymaps", silent = true })
keymap("n", "<leader>r", "<cmd>set rnu!<CR>", { desc = "Toggle RNU" })
keymap("n", "<leader>le", "<cmd>lua vim.diagnostic.open_float()<CR>", { silent = true })
keymap("n", "<leader>s", "<cmd>Telescope grep_string<CR>", { desc = "Grep string" })
keymap("n", "<leader>fs", "<cmd>Telescope grep_string<CR>", { desc = "Grep string" })
keymap("n", "<leader>/", "<cmd>Telescope live_grep<CR>", { desc = "Live grep" })

-- restore the session for the current directory
keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]],
  { desc = "restore current directory session" })
-- restore the last session
keymap("n", "<leader>ql",
  [[<cmd>lua require("persistence").load({ last = true })<cr>]],
  { desc = "restore last session" })
-- stop Persistence => session won't be saved on exit
keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], { desc = "disable session saving" })
keymap("n", "]h", "<cmd>Gitsigns next_hunk", { desc = "Next Hunk" })
keymap("n", "[h", "<cmd>Gitsigns prev_hunk", { desc = "Prev Hunk" })
keymap({ "n", "v" }, "<leader>ghs", ":Gitsigns stage_hunk<CR>", { desc = "Stage Hunk" })
keymap({ "n", "v" }, "<leader>ghr", ":Gitsigns reset_hunk<CR>", { desc = "Reset Hunk" })
keymap("n", "<leader>ghS", "<cmd>Gitsigns stage_buffer", { desc = "Stage Buffer" })
keymap("n", "<leader>ghu", "<cmd>Gitsigns undo_stage_hunk", { desc = "Undo Stage Hunk" })
keymap("n", "<leader>ghR", "<cmd>Gitsigns reset_buffer", { desc = "Reset Buffer" })
keymap("n", "<leader>ghp", "<cmd>Gitsigns preview_hunk", { desc = "Preview Hunk" })
keymap("n", "<leader>ghb", "<cmd>lua require'gitsigns'.blame_line{full=true}<CR>", { desc = "Blame Line" })
keymap("n", "<leader>ghd", "<cmd>Gitsigns diffthis", { desc = "Diff This" })
keymap("n", "<leader>ghD", "<cmd>lua require'gitsigns'.diffthis('~')<CR>", { desc = "Diff This ~" })
keymap({'n', 'v', 'o'}, '°',"_<cmd>lua require('tree-climber').goto_parent({skip_comments = true})<cr>_", {silent = true, desc="goto parent"})

keymap({'n', 'v', 'o'}, '|', "g_<cmd>lua require('tree-climber').goto_child({skip_comments = true})<cr>_", {silent = true, desc="goto child"})
keymap({'n', 'v', 'o'}, '<tab>',"_<cmd>lua require('tree-climber').goto_next({skip_comments = true})<cr>", {silent = true, desc="goto next"})
keymap({'n', 'v', 'o'}, '<S-TAB>',"_<cmd>lua require('tree-climber').goto_prev({skip_comments = true})<cr>", {silent = true, desc="goto prev"})
keymap({'v', 'o'}, 'in', "<cmd>lua require('tree-climber').select_node()<cr>", {silent = true, desc="select node"})
keymap('n', '<c-t>', "<cmd>lua require('tree-climber').swap_prev()<cr>", {silent=true, desc="swap prev"})
keymap('n', '<c-y>', "<cmd>lua require('tree-climber').swap_next()<cr>", {silent=true, desc="swap next"})
keymap('n', '<leader><tab>', "<cmd>lua require('tree-climber').highlight_node()<cr>", {silent = true, desc="highlight node"})
--tests

keymap("n","<leader>tr", function()require("neotest").run.run() end, {silent=true, desc="run nearest test"})
keymap("n","<leader>tf", function()require("neotest").run.run(vim.fn.expand("%")) end, {silent=true, desc="run current file"})
keymap({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", { desc = "GitSigns Select Hunk" })
keymap("n","<leader>ts", function()require("neotest").run.stop() end, {silent=true, desc="stop test"})
keymap("n","<leader>ta", function()require("neotest").run.attach() end, {silent=true, desc="attach test"})
keymap("n","<leader>tp", function()require("neotest").output_panel.toggle() end, {silent=true, desc="open output pannel"})
keymap("n","<leader>ts", function()require("neotest").summary.toggle() end, {silent=true, desc="open summary pannel"})

