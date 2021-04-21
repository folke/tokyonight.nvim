
# 🏙 Tokyo Night

A dark Neovim theme written in Lua ported from the Visual Studio Code [TokyoNight](https://github.com/enkia/tokyo-night-vscode-theme) theme. Includes extra themes for Kitty, Alacritty and Kitty.

## Storm

![image](https://user-images.githubusercontent.com/292349/115295095-3a9e5080-a10e-11eb-9aed-6054488c46ce.png)

## Night

![image](https://user-images.githubusercontent.com/292349/115295327-7afdce80-a10e-11eb-89b3-2591262bf95a.png)

## ✨ Features

+ supports the latest Neovim 5.0 features like TreeSitter and LSP
+ minimal inactive statusline
+ vim terminal colors
+ darker background for sidebar-like windows
+ color configs for [Kitty](https://sw.kovidgoyal.net/kitty/conf.html?highlight=include), [Alacritty](https://github.com/alacritty/alacritty) and [Fish Shell](https://fishshell.com/)
+ **lualine** theme

### Plugin Support

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
+ [Lualine](https://github.com/hoob3rt/lualine.nvim)
+ [Neogit](https://github.com/TimUntersberger/neogit)

## ⚡️ Requirements

+ Neovim >= 0.5.0
  
## 📦 Installation

Install the theme with your preferred package manager:

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'folke/tokyonight.nvim'
```

[packer](https://github.com/wbthomason/packer.nvim)

**Note:** It is advised to call tokyonight last in the packer plugin order,
doing otherwise may result in the colors being overriden by other plugins

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
  options = {
    -- ... your lualine config
    theme = 'tokyonight'
    -- ... your lualine config
  }
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
| tokyonight_dark_sidebar             | `true`    | Sidebar like windows like `NvimTree` get a darker background                                                                                                    |
| tokyonight_dark_float               | `true`    | Float windows like the lsp diagnostics windows get a darker background.                                                                                         |

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

## 🍭 Extras

Extra color configs for **Kitty**, **Alacritty**, **Fish** and **iTerm** can be found in [extras](extras/). To use them, refer to their respective documentation.

![image](https://user-images.githubusercontent.com/292349/115395546-d8d6f880-a198-11eb-98fb-a1194787701d.png)
