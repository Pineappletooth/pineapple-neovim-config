-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

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

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", "P", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ft", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ff", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
keymap("n", "<leader>gp", "<cmd>cd %:h <CR>",{desc ="Change CWD to current", silent = true})

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

-- Lsp
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)

keymap("n", "<leader><space>", "<cmd>Telescope find_files<CR>", opts)
keymap("n", "<leader>bl", "<cmd>bl<CR>", {desc = "next buffer"})
keymap("n", "<leader>bp", "<cmd>bp<CR>", {desc = "previous buffer", silent = true})
keymap("n","<leader>bd","<cmd>BufDel<CR>",{desc ="delete current buffer", silent = true})
keymap("n","<leader>bD","<cmd>BufDelAll<CR>",{desc ="delete all buffer", silent = true})
keymap("n","<leader>bb","<cmd>BufDelOthers<CR>",{desc ="delete all except buffer current one", silent = true})
keymap("n", "<leader>h", "<cmd>WhichKey<CR>", {desc = "show all keymaps", silent = true})
keymap("n", "<leader>r", "<cmd>set rnu!<CR>", {desc ="Toggle RNU"})
keymap("n","<leader>le","<cmd>lua vim.diagnostic.open_float()<CR>", {silent = true})
keymap("n","<leader>s","<cmd>Telescope live_grep<CR>", {desc = "Live grep"})
keymap("n","<leader>fs","<cmd>Telescope grep_string<CR>", {desc = "Grep string"})
keymap("n","<leader>x","<cmd>noh<CR>", {desc = "End search"})
keymap("n", "<leader>/","<cmd>Telescope live_grep<CR>", {desc = "Live grep"})

-- restore the session for the current directory
keymap("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr> <cmd>NvimTreeFocus<cr> <cmd>b#<CR>]], {desc = "restore current directory session"})
-- restore the last session
keymap("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr> <cmd>NvimTreeFocus<cr> <cmd>b#<CR>]], {desc = "restore last session"})
-- stop Persistence => session won't be saved on exit
keymap("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {desc = "disable session saving"})
keymap("n", "]h", "<cmd>Gitsigns next_hunk", { desc ="Next Hunk"})
keymap("n", "[h", "<cmd>Gitsigns prev_hunk", { desc ="Prev Hunk"})
keymap({ "n", "v" }, "<leader>ghs", ":Gitsigns stage_hunk<CR>", { desc ="Stage Hunk"})
keymap({ "n", "v" }, "<leader>ghr", ":Gitsigns reset_hunk<CR>", { desc ="Reset Hunk"})
keymap("n", "<leader>ghS", "<cmd>Gitsigns stage_buffer", { desc ="Stage Buffer"})
keymap("n", "<leader>ghu", "<cmd>Gitsigns undo_stage_hunk", { desc ="Undo Stage Hunk"})
keymap("n", "<leader>ghR", "<cmd>Gitsigns reset_buffer", { desc ="Reset Buffer"})
keymap("n", "<leader>ghp", "<cmd>Gitsigns preview_hunk", { desc ="Preview Hunk"})
keymap("n", "<leader>ghb", "<cmd>lua require'gitsigns'.blame_line{full=true}<CR>", { desc ="Blame Line"})
keymap("n", "<leader>ghd", "<cmd>Gitsigns diffthis", { desc ="Diff This"})
keymap("n", "<leader>ghD", "<cmd>lua require'gitsigns'.diffthis('~')<CR>", { desc ="Diff This ~"})
keymap({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", { desc ="GitSigns Select Hunk"})
