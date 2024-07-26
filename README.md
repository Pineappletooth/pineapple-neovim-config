# A Basic Stable IDE config for Neovim

> This is a fork of https://github.com/LunarVim/nvim-basic-ide with some extra features, mappings and with updated dependencies

## First steps

For the setup the following requirements are needed

- Neovim >= **0.9.0** 
- Git 
- a terminal that support true color and undercurl, [Kitty](https://github.com/kovidgoyal/kitty) for macOS/Linux and for windows [Windows terminal](https://github.com/microsoft/terminal)
- a [Nerd Font](https://www.nerdfonts.com/)
- a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- Ripgrep for live search [github](https://github.com/BurntSushi/ripgrep)
- Fd for finding files [github](https://github.com/sharkdp/fd) 

**Installation for windows**

Run the following commands:

```sh
winget install -e --id Microsoft.WindowsTerminal
winget install --id=Neovim.Neovim  -e
winget install --id=sharkdp.fd  -e
winget install --id=BurntSushi.ripgrep.MSVC  -e
```
For a nerdfont download it from their webpage [Nerd Font](https://www.nerdfonts.com/) jetbrainsmono or firacode are recommended, install the font and then in windows terminal settings set the font.

warning for the font set the non mono version as those include the icons with the correct size, for example do not install jetbrainsmono mono, instead install jetbrainsmono.

For the C compiler llvm-mingw will be needed [it can be obtained here](https://github.com/mstorsjo/llvm-mingw/releases)

unzip in a folder *then add the bin folder to the path*

****
For MacOS:
```sh
brew install neovim
#TODO
```

## Install the config

Make sure to remove or backup your current `nvim` directory

clone the repo in the AppData/Local/nvim folder for windows or in the ~/.config/nvim for Unix based Os
```sh
git clone https://github.com/Pineappletooth/pineapple-neovim-config.git ~/.config/nvim
```

Run `nvim` and wait for the plugins to be installed

**NOTE** (You will notice treesitter pulling in a bunch of parsers the next time you open Neovim) if not use :TSUpdate

**NOTE** Checkout this file for some predefined keymaps: [keymaps](https://github.com/Pineappletooth/pineapple-neovim-config/tree/master/lua/keymaps.lua)

## Validate your installation

Open `nvim` and enter the following:

```
:checkhealth
```
If there are no errors here everything is good


## Configuration

### LSP

To add a new LSP

First Enter:

```
:Mason
```

and press `i` on the Language Server you wish to install

Next you will need to add the server to this list: [servers](https://github.com/LunarVim/nvim-basic-ide/tree/master/lua/utils/init.lua#L3)
Note: Builtin LSP doesn't contain all lsps from [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#terraform_lsp).

If you want to install any from there, for example terraform_lsp(which adds more functionality than terraformls, like complete resource listing),

1. You can add the lsp name in [mason lsp block](https://github.com/LunarVim/nvim-basic-ide/tree/master/user/utils/init.lua#L3-L13)

```lua
-- lua/utils/init.lua
M.servers = {
	"lua_ls",
	"cssls",
	"html",
	"tsserver",
	"pyright",
	"bashls",
	"jsonls",
	"yamlls",
    	"terraform_lsp" -- New LSP
}
```

2. Manually install the binary of the lsp and put it in your path by downloading the binary or through your package manager. For terraform_lsp [example](https://github.com/juliosueiras/terraform-lsp/releases)

### Formatters and linters

Make sure the formatter or linter is installed and add it to this setup function: [null-ls](https://github.com/LunarVim/nvim-basic-ide/blob/e6b6c96280ca730a2564f2e36050df055acfb1a8/lua/user/null-ls.lua#L22)

**NOTE** Some are already setup as examples, remove them if you want

### Plugins

### You can install new plugins here: [plugins](https://github.com/LunarVim/nvim-basic-ide/tree/master/lua/user)

Heres the wiki for installing new plugins refer to this: [wiki](https://github.com/LunarVim/nvim-basic-ide/wiki/adding_new_plugins)

## Plugins

- [alpha-nvim](https://github.com/goolord/alpha-nvim)
- [bufdelete.nvim](https://github.com/famiu/bufdelete.nvim)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [cmp-buffer](https://github.com/hrsh7th/cmp-buffer)
- [cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
- [cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua)
- [cmp-path](https://github.com/hrsh7th/cmp-path)
- [cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
- [Comment.nvim](https://github.com/numToStr/Comment.nvim)
- [DAPInstall.nvim](https://github.com/ravenxrz/DAPInstall.nvim)
- [friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [null-ls.nvim](https://github.com/jose-elias-alvarez/null-ls.nvim)
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)
- [nvim-dap](https://github.com/mfussenegger/nvim-dap)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [nvim-ts-context-commentstring](https://github.com/JoosepAlviste/nvim-ts-context-commentstring)
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)
- [plenary.nvim](https://github.com/nvim-lua/plenary.nvim)
- [project.nvim](https://github.com/ahmedkhalf/project.nvim)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim)
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- [vim-illuminate](https://github.com/RRethy/vim-illuminate)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- TODO: needs update
---

> The computing scientist's main challenge is not to get confused by the complexities of his own making.

\- Edsger W. Dijkstra
