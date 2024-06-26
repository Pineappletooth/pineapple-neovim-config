vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "qf", "help", "man", "lspinfo", "spectre_panel" },
  callback = function()
    vim.cmd [[
      nnoremap <silent> <buffer> q :close<CR>
      set nobuflisted
    ]]
  end,
})

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})
-- Automatically close tab/vim when nvim-tree is the last window in the tab
-- vim.cmd "autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif"

vim.api.nvim_create_autocmd({ "VimResized" }, {
  callback = function()
    vim.cmd "tabdo wincmd ="
  end,
})

vim.api.nvim_create_autocmd({ "TextYankPost" }, {
  callback = function()
    vim.highlight.on_yank { higroup = "Visual", timeout = 200 }
  end,
})

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  pattern = { "*.java" },
  callback = function()
    vim.lsp.codelens.refresh()
  end,
})

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  callback = function()
    vim.cmd "hi link illuminatedWord LspReferenceText"
  end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  callback = function()
    local line_count = vim.api.nvim_buf_line_count(0)
    if line_count >= 5000 then
      vim.cmd "IlluminatePauseBuf"
    end
  end,
})

vim.api.nvim_create_autocmd("CursorHold", {
  callback = function()
    local float_opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
    }

    if not vim.b.diagnostics_pos then
      vim.b.diagnostics_pos = { nil, nil }
    end

    local cursor_pos = vim.api.nvim_win_get_cursor(0)
    if
        (cursor_pos[1] ~= vim.b.diagnostics_pos[1] or cursor_pos[2] ~= vim.b.diagnostics_pos[2])
        and #vim.diagnostic.get() > 0
    then
      vim.diagnostic.open_float(nil, float_opts)
    end

    vim.b.diagnostics_pos = cursor_pos
  end,
})

vim.api.nvim_create_autocmd({ 'FocusGained', 'BufEnter', 'CursorHold', 'CursorHoldI' }, {
  pattern = '*',
  command = "if mode() !~ '\v(c|r.?|!|t)' && getcmdwintype() == '' | checktime | endif",
})

-- Notification after file change
-- https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
vim.api.nvim_create_autocmd({ 'FileChangedShellPost' }, {
  pattern = '*',
  command = "echohl WarningMsg | echo 'File changed on disk. Buffer reloaded.' | echohl None",
})

--vim.opt.listchars = { tab = "⇥ ",eol = "↲",nbsp = "␣",trail = "•",extends = "⟩" }
--vim.cmd[[set list]]
--vim.cmd[[colorscheme tokyonight-night]]
--
local colors = {
  'base16-3024',
  'base16-apathy',
  'base16-apprentice',
  'base16-ashes',
  'base16-atelier-cave',
  'base16-atelier-cave-light',
  'base16-atelier-dune',
  'base16-atelier-dune-light',
  'base16-atelier-estuary',
  'base16-atelier-estuary-light',
  'base16-atelier-forest',
  'base16-atelier-forest-light',
  'base16-atelier-heath',
  'base16-atelier-heath-light',
  'base16-atelier-lakeside',
  'base16-atelier-lakeside-light',
  'base16-atelier-plateau',
  'base16-atelier-plateau-light',
  'base16-atelier-savanna',
  'base16-atelier-savanna-light',
  'base16-atelier-seaside',
  'base16-atelier-seaside-light',
  'base16-atelier-sulphurpool',
  'base16-atelier-sulphurpool-light',
  'base16-atlas',
  'base16-ayu-dark',
  'base16-ayu-light',
  'base16-ayu-mirage',
  'base16-bespin',
  'base16-black-metal',
  'base16-black-metal-bathory',
  'base16-black-metal-burzum',
  'base16-black-metal-dark-funeral',
  'base16-black-metal-gorgoroth',
  'base16-black-metal-immortal',
  'base16-black-metal-khold',
  'base16-black-metal-marduk',
  'base16-black-metal-mayhem',
  'base16-black-metal-nile',
  'base16-black-metal-venom',
  'base16-blueforest',
  'base16-blueish',
  'base16-brewer',
  'base16-bright',
  'base16-brogrammer',
  'base16-brushtrees',
  'base16-brushtrees-dark',
  'base16-catppuccin',
  'base16-catppuccin-frappe',
  'base16-catppuccin-latte',
  'base16-catppuccin-macchiato',
  'base16-catppuccin-mocha',
  'base16-chalk',
  'base16-circus',
  'base16-classic-dark',
  'base16-classic-light',
  'base16-codeschool',
  'base16-colors',
  'base16-cupcake',
  'base16-cupertino',
  'base16-da-one-black',
  'base16-da-one-gray',
  'base16-da-one-ocean',
  'base16-da-one-paper',
  'base16-da-one-sea',
  'base16-da-one-white',
  'base16-danqing',
  'base16-darcula',
  'base16-darkmoss',
  'base16-darktooth',
  'base16-darkviolet',
  'base16-decaf',
  'base16-default-dark',
  'base16-default-light',
  'base16-dirtysea',
  'base16-dracula',
  'base16-edge-dark',
  'base16-edge-light',
  'base16-eighties',
  'base16-embers',
  'base16-emil',
  'base16-equilibrium-dark',
  'base16-equilibrium-gray-dark',
  'base16-equilibrium-gray-light',
  'base16-equilibrium-light',
  'base16-espresso',
  'base16-eva',
  'base16-eva-dim',
  'base16-evenok-dark',
  'base16-everforest',
  'base16-flat',
  'base16-framer',
  'base16-fruit-soda',
  'base16-gigavolt',
  'base16-github',
  'base16-google-dark',
  'base16-google-light',
  'base16-gotham',
  'base16-grayscale-dark',
  'base16-grayscale-light',
  'base16-greenscreen',
  'base16-gruber',
  'base16-gruvbox-dark-hard',
  'base16-gruvbox-dark-medium',
  'base16-gruvbox-dark-pale',
  'base16-gruvbox-dark-soft',
  'base16-gruvbox-light-hard',
  'base16-gruvbox-light-medium',
  'base16-gruvbox-light-soft',
  'base16-gruvbox-material-dark-hard',
  'base16-gruvbox-material-dark-medium',
  'base16-gruvbox-material-dark-soft',
  'base16-gruvbox-material-light-hard',
  'base16-gruvbox-material-light-medium',
  'base16-gruvbox-material-light-soft',
  'base16-hardcore',
  'base16-harmonic-dark',
  'base16-harmonic-light',
  'base16-heetch',
  'base16-heetch-light',
  'base16-helios',
  'base16-hopscotch',
  'base16-horizon-dark',
  'base16-horizon-light',
  'base16-horizon-terminal-dark',
  'base16-horizon-terminal-light',
  'base16-humanoid-dark',
  'base16-humanoid-light',
  'base16-ia-dark',
  'base16-ia-light',
  'base16-icy',
  'base16-irblack',
  'base16-isotope',
  'base16-kanagawa',
  'base16-katy',
  'base16-kimber',
  'base16-lime',
  'base16-macintosh',
  'base16-marrakesh',
  'base16-materia',
  'base16-material',
  'base16-material-darker',
  'base16-material-lighter',
  'base16-material-palenight',
  'base16-material-vivid',
  'base16-mellow-purple',
  'base16-mexico-light',
  'base16-mocha',
  'base16-monokai',
  'base16-mountain',
  'base16-nebula',
  'base16-nord',
  'base16-nova',
  'base16-ocean',
  'base16-oceanicnext',
  'base16-one-light',
  'base16-onedark',
  'base16-outrun-dark',
  'base16-pandora',
  'base16-papercolor-dark',
  'base16-papercolor-light',
  'base16-paraiso',
  'base16-pasque',
  'base16-phd',
  'base16-pico',
  'base16-pinky',
  'base16-pop',
  'base16-porple',
  'base16-primer-dark',
  'base16-primer-dark-dimmed',
  'base16-primer-light',
  'base16-purpledream',
  'base16-qualia',
  'base16-railscasts',
  'base16-rebecca',
  'base16-rose-pine',
  'base16-rose-pine-dawn',
  'base16-rose-pine-moon',
  'base16-sagelight',
  'base16-sakura',
  'base16-sandcastle',
  'base16-seti',
  'base16-shades-of-purple',
  'base16-shadesmear-dark',
  'base16-shadesmear-light',
  'base16-shapeshifter',
  'base16-silk-dark',
  'base16-silk-light',
  'base16-snazzy',
  'base16-solarflare',
  'base16-solarflare-light',
  'base16-solarized-dark',
  'base16-solarized-light',
  'base16-spaceduck',
  'base16-spacemacs',
  'base16-standardized-dark',
  'base16-standardized-light',
  'base16-stella',
  'base16-still-alive',
  'base16-summercamp',
  'base16-summerfruit-dark',
  'base16-summerfruit-light',
  'base16-synth-midnight-dark',
  'base16-synth-midnight-light',
  'base16-tango',
  'base16-tender',
  'base16-tokyo-city-dark',
  'base16-tokyo-city-light',
  'base16-tokyo-city-terminal-dark',
  'base16-tokyo-city-terminal-light',
  'base16-tokyo-night-dark',
  'base16-tokyo-night-light',
  'base16-tokyo-night-storm',
  'base16-tokyo-night-terminal-dark',
  'base16-tokyo-night-terminal-light',
  'base16-tokyo-night-terminal-storm',
  'base16-tokyodark',
  'base16-tokyodark-terminal',
  'base16-tomorrow',
  'base16-tomorrow-night',
  'base16-tomorrow-night-eighties',
  'base16-tube',
  'base16-twilight',
  'base16-unikitty-dark',
  'base16-unikitty-light',
  'base16-unikitty-reversible',
  'base16-uwunicorn',
  'base16-vice',
  'base16-vulcan',
  'base16-windows-10',
  'base16-windows-10-light',
  'base16-windows-95',
  'base16-windows-95-light',
  'base16-windows-highcontrast',
  'base16-windows-highcontrast-light',
  'base16-windows-nt',
  'base16-windows-nt-light',
  'base16-woodland',
  'base16-xcode-dusk',
  'base16-zenburn',
}
local function testColors()
  local i = 1
  local timer = vim.loop.new_timer()
  timer:start(0, 2500, vim.schedule_wrap(function()
    vim.cmd('colorscheme ' .. colors[i])
    print(colors[i])
    i = i + 1
    if i > #colors then
      timer:close()
    end
  end))
end
local k = 0
local function nextColor()
  k = k + 1
  if k > #colors then
    k = 1
  end
  vim.cmd('colorscheme ' .. colors[k])
  print(colors[k])
end
local function prevColor()
  k = k -1
  if k == 0 then
    k = #colors
  end
    vim.cmd('colorscheme ' .. colors[k])
  print(colors[k])

end
vim.api.nvim_create_user_command('TestColors', testColors, {})
-- vim.keymap.set("n", "<C-K>", nextColor)
-- vim.keymap.set("n", "<C-J>", prevColor)
-- ayu mirage
-- catpuccin
-- horizon terminal
-- humanoid
-- katy
-- material palenifht
-- onedark
-- porple
-- primer
-- roepinemoon
-- tojyicirty ternubak dark
-- tokyodark
vim.api.nvim_create_autocmd('User', {
  pattern = 'GitConflictDetected',
  callback = function()
    vim.notify('Conflict detected in '..vim.fn.expand('<afile>'))
  end
})
