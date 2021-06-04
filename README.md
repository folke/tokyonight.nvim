
# 🏙 Tokyo Night

A dark and light Neovim theme written in Lua ported from the Visual Studio Code [TokyoNight](https://github.com/enkia/tokyo-night-vscode-theme) theme. Includes extra themes for Kitty, Alacritty, iTerm and Fish.

## Storm

![image](https://user-images.githubusercontent.com/292349/115295095-3a9e5080-a10e-11eb-9aed-6054488c46ce.png)

## Night

![image](https://user-images.githubusercontent.com/292349/115295327-7afdce80-a10e-11eb-89b3-2591262bf95a.png)

## Day

![image](https://user-images.githubusercontent.com/292349/115996270-78c6c480-a593-11eb-8ed0-7d1400b058f5.png)

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
+ [LSP Trouble](https://github.com/folke/lsp-trouble.nvim)
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
+ [Lightline](https://github.com/itchyny/lightline.vim)
+ [Neogit](https://github.com/TimUntersberger/neogit)
+ [vim-sneak](https://github.com/justinmk/vim-sneak)

## ⚡️ Requirements

+ Neovim >= 0.5.0

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
  options = {
    -- ... your lualine config
    theme = 'tokyonight'
    -- ... your lualine config
  }
}
```

To enable the `tokyonight` colorscheme for `Lightline`:

```vim
" Vim Script
let g:lightline = {'colorscheme': 'tokyonight'}
```

## ⚙️ Configuration

> ❗️ configuration needs to be set **BEFORE** loading the color scheme with `colorscheme tokyonight`

The theme comes in three styles, `storm`, a darker variant `night` and `day`.

The **day** style will be used if:

+ `vim.g.tokyonight_style == "day"`
+ or `vim.o.background == "light"`

| Option                              | Default   | Description                                                                                                                                                     |
|-------------------------------------|-----------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|
| tokyonight_style                    | `"storm"` | The theme comes in three styles, `storm`, a darker variant `night` and `day`.                                                                                   |
| tokyonight_terminal_colors          | `true`    | Configure the colors used when opening a `:terminal` in Neovim                                                                                                  |
| tokyonight_italic_comments          | `true`    | Make comments italic                                                                                                                                            |
| tokyonight_italic_keywords          | `true`    | Make keywords italic                                                                                                                                            |
| tokyonight_italic_functions         | `false`   | Make functions italic                                                                                                                                           |
| tokyonight_italic_variables         | `false`   | Make variables and identifiers italic                                                                                                                           |
| tokyonight_transparent              | `false`   | Enable this to disable setting the background color                                                                                                             |
| tokyonight_hide_inactive_statusline | `false`   | Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**. |
| tokyonight_sidebars                 | `{}`      | Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`                                                      |
| tokyonight_dark_sidebar             | `true`    | Sidebar like windows like `NvimTree` get a darker background                                                                                                    |
| tokyonight_dark_float               | `true`    | Float windows like the lsp diagnostics windows get a darker background.                                                                                         |
| tokyonight_colors                   | `{}`      | You can override specific color groups to use other groups or a hex color                                                                                       |
| tokyonight_day_brightness           | `0.3`     | Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors                                                  |

```lua
-- Example config in Lua
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
```

```vim
" Example config in VimScript
let g:tokyonight_style = "night"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]

" Load the colorscheme
colorscheme tokyonight
```

### Making `undercurls` work properly in **Tmux**

To have undercurls show up and in color, add the following to your **Tmux** config file:

```sh
# Undercurl
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
```

## 🍭 Extras

Extra color configs for **Kitty**, **Alacritty**, **Fish**, **WezTerm** and **iTerm** can be found in [extras](extras/). To use them, refer to their respective documentation.

![image](https://user-images.githubusercontent.com/292349/115395546-d8d6f880-a198-11eb-98fb-a1194787701d.png)

## 🔥 Contributing

Pull requests are welcome. For the `extras`, we use a simple template system that can be used to generate themes for the different styles.

How to add a new extra template:

1. create a file like `lua/tokyonight/extra/cool-app.lua`
2. add the name and output file extension to the `extras` table in `lua/tokyonight/extra/init.lua`
3. in the root directory, run `$ lua lua/tokyonight/extra/init.lua` to generate / update extra themes
4. commit the newly created themes under `extra/`


