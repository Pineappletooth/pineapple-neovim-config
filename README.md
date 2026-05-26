# Pineapple Neovim Config

A modern Neovim IDE configuration built from scratch.

## Requirements

- Neovim >= **0.12.0**
- Git
- A terminal with true color and undercurl support — [Kitty](https://github.com/kovidgoyal/kitty) (macOS/Linux) or [Windows Terminal](https://github.com/microsoft/terminal)
- A [Nerd Font](https://www.nerdfonts.com/)
- A **C** compiler for `nvim-treesitter` — see [requirements](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- [Ripgrep](https://github.com/BurntSushi/ripgrep) for live grep search
- [Fd](https://github.com/sharkdp/fd) for file finding

### macOS

```sh
brew install neovim ripgrep fd
```

### Windows

```sh
winget install -e --id Microsoft.WindowsTerminal
winget install --id=Neovim.Neovim -e
winget install --id=sharkdp.fd -e
winget install --id=BurntSushi.ripgrep.MSVC -e
```

For a Nerd Font, download from [nerdfonts.com](https://www.nerdfonts.com/) — JetBrainsMono or FiraCode are recommended. Install the font and set it in Windows Terminal settings. Use the non-mono variant (e.g. JetBrainsMono, not JetBrainsMonoMono) as it includes correctly sized icons.

For the C compiler on Windows, use [llvm-mingw](https://github.com/mstorsjo/llvm-mingw/releases) — unzip it and add the `bin` folder to your PATH.

## Install

Make sure to remove or backup your current `nvim` directory, then clone:

```sh
git clone https://github.com/Pineappletooth/pineapple-neovim-config.git ~/.config/nvim
```

Run `nvim` and wait for plugins to install.

## Validate

```
:checkhealth
```

## Configuration

### LSP

Open Mason and install a language server:

```
:Mason
```

Servers are configured in `lua/plugins/lsp/lsp.lua`.

### Formatters and linters

Formatters are configured via [conform.nvim](https://github.com/stevearc/conform.nvim) and linters via [nvim-lint](https://github.com/mfussenegger/nvim-lint).

### Keymaps

See [`lua/keymaps.lua`](https://github.com/Pineappletooth/pineapple-neovim-config/blob/master/lua/keymaps.lua)

## Plugins

| Plugin | Description |
|--------|-------------|
| [base16-nvim](https://github.com/RRethy/base16-nvim) | Colorscheme |
| [blink.cmp](https://github.com/saghen/blink.cmp) | Completion engine |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | Buffer tabs |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Formatter |
| [conflict-marker.vim](https://github.com/rhysd/conflict-marker.vim) | Git conflict markers |
| [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) | Start screen |
| [fidget.nvim](https://github.com/j-hui/fidget.nvim) | LSP progress UI |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | Fuzzy finder |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git decorations |
| [guess-indent.nvim](https://github.com/nmac427/guess-indent.nvim) | Auto indent detection |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Indent guides |
| [lazydev.nvim](https://github.com/folke/lazydev.nvim) | Neovim Lua dev tools |
| [marks.nvim](https://github.com/chentoast/marks.nvim) | Mark management |
| [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) | Mason LSP bridge |
| [mason-nvim-dap.nvim](https://github.com/jay-babu/mason-nvim-dap.nvim) | Mason DAP bridge |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP/DAP/linter installer |
| [mini.files](https://github.com/nvim-mini/mini.files) | File explorer |
| [mini.icons](https://github.com/nvim-mini/mini.icons) | Icons |
| [mini.indentscope](https://github.com/nvim-mini/mini.indentscope) | Animated indent scope |
| [mini.map](https://github.com/nvim-mini/mini.map) | Minimap |
| [mini.pairs](https://github.com/nvim-mini/mini.pairs) | Auto pairs |
| [neotest](https://github.com/nvim-neotest/neotest) | Test runner |
| [neotest-jest](https://github.com/nvim-neotest/neotest-jest) | Jest adapter for neotest |
| [nvim-bufdel](https://github.com/ojroques/nvim-bufdel) | Buffer deletion |
| [nvim-colorizer.lua](https://github.com/NvChad/nvim-colorizer.lua) | Color highlighter |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | Debug adapter protocol |
| [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) | DAP UI |
| [nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text) | DAP virtual text |
| [nvim-httpyac](https://github.com/abidibo/nvim-httpyac) | HTTP client |
| [nvim-java](https://github.com/nvim-java/nvim-java) | Java LSP support |
| [nvim-lint](https://github.com/mfussenegger/nvim-lint) | Linter |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configurations |
| [nvim-scrollview](https://github.com/dstein64/nvim-scrollview) | Scrollbar |
| [nvim-surround](https://github.com/kylechui/nvim-surround) | Surround motions |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax tree parsing |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Treesitter text objects |
| [nvim-treesitter-textsubjects](https://github.com/RRethy/nvim-treesitter-textsubjects) | Smart text subjects |
| [persisted.nvim](https://github.com/olimorris/persisted.nvim) | Session management |
| [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) | Lua utilities |
| [profile.nvim](https://github.com/stevearc/profile.nvim) | Neovim profiler |
| [project.nvim](https://github.com/ahmedkhalf/project.nvim) | Project management |
| [rainbow_csv.nvim](https://github.com/cameron-wags/rainbow_csv.nvim) | CSV highlighting |
| [statuscol.nvim](https://github.com/luukvbaal/statuscol.nvim) | Status column |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | TODO highlights |
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Terminal manager |
| [tree-climber.nvim](https://github.com/drybalka/tree-climber.nvim) | Treesitter node navigation |
| [typescript-tools.nvim](https://github.com/pmizio/typescript-tools.nvim) | TypeScript LSP |
| [vim-illuminate](https://github.com/RRethy/vim-illuminate) | Word highlighting |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keymap hints |

---

> The computing scientist's main challenge is not to get confused by the complexities of his own making.

\- Edsger W. Dijkstra
