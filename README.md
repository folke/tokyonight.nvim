
# 🏙 Tokyo Night

A dark Neovim theme written in Lua ported from the Visual Studio Code [TokyoNight](https://github.com/enkia/tokyo-night-vscode-theme) theme.

## Storm

![image](https://user-images.githubusercontent.com/292349/115295095-3a9e5080-a10e-11eb-9aed-6054488c46ce.png)

## Night

![image](https://user-images.githubusercontent.com/292349/115295327-7afdce80-a10e-11eb-89b3-2591262bf95a.png)

## ✨ Features

+ [TreeSitter](https://github.com/nvim-treesitter/nvim-treesitter)
+ [LSP Diagnostics](https://neovim.io/doc/user/lsp.html)
+ [LSP Saga](https://github.com/glepnir/lspsaga.nvim)
+ [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
+ [Git Gutter](https://github.com/airblade/vim-gitgutter)
+ [Telescope](https://github.com/nvim-telescope/telescope.nvim)
+ [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
+ [WhichKey](https://github.com/liuchengxu/vim-which-key)
+ [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
+ [Dashboard](https://github.com/glepnir/dashboard-nvim)
+ [BufferLine](https://github.com/akinsho/nvim-bufferline.lua)
+ a TokyNight [Lualine](https://github.com/hoob3rt/lualine.nvim) theme is included

## 📦 Installation

Install the theme with your preferred package manager:

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'folke/tokyonight.nvim'
```

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'folke/tokyonight.nvim'
```

## 🚀 Usage

Enable the colorscheme:

```vim
" Vim Script
colorscheme tokyonight
```

```lua
-- Lua
vim.cmd[[colorscheme tokyonight]]
```

To enable the `TokyoNight` theme for `Lualine`, simply specify it in your lualine settings:

```lua
require('lualine').setup {
  -- ... your lualine config
  theme = 'tokyonight'
  -- ... your lualine config
}
```

## ⚙️ Configuration

The theme comes in two styles, `storm` and a darker variant `night`.

| Option                              | Default   | Description                                                                                                                                                     |
| ----------------------------------- | --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| tokyonight_style                    | `"storm"` | The theme comes in two styles, `"storm"` and a darker variant `"night"`.                                                                                        |
| tokyonight_terminal_colors          | `true`    | Configure the colors used when opening a `:terminal` in Neovim                                                                                                  |
| tokyonight_italic_comments          | `true`    | Make comments italic                                                                                                                                            |
| tokyonight_italic_keywords          | `true`    | Make keywords italic                                                                                                                                            |
| tokyonight_italic_functions         | `false`   | Make functions italic                                                                                                                                           |
| tokyonight_transparent              | `false`   | Enable this to disable setting the background color                                                                                                             |
| tokyonight_hide_inactive_statusline | `false`   | Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**. |
| tokyonight_sidebars                 | `{}`      | Set a darker background on sidebar-like windows. For example: `["quickfix", "__vista__", "terminal"]`                                                           |


```lua
-- Example config in Lua
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "quickfix", "__vista__", "terminal" }
```

```vim
" Example config in VimScript
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = true
let g:tokyonight_sidebars = [ "quickfix", "__vista__", "terminal" ]
```
