# 🏙 Tokyo Night

A dark and light Neovim theme written in Lua ported from the Visual Studio Code
[TokyoNight](https://github.com/enkia/tokyo-night-vscode-theme) theme. Includes
extra themes for Kitty, Alacritty, iTerm and Fish.

## Storm

![image](https://user-images.githubusercontent.com/292349/115295095-3a9e5080-a10e-11eb-9aed-6054488c46ce.png)

## Night

![image](https://user-images.githubusercontent.com/292349/115295327-7afdce80-a10e-11eb-89b3-2591262bf95a.png)

## Moon

![image](https://user-images.githubusercontent.com/292349/190951628-10ba28a1-57ff-4479-8eab-47400a402242.png)

## Day

![image](https://user-images.githubusercontent.com/292349/115996270-78c6c480-a593-11eb-8ed0-7d1400b058f5.png)

## ✨ Features

- supports the latest Neovim 0.9.0 features
- terminal colors
- darker background for sidebar-like windows
- supports all major plugins
- TokyoNight [extras](#-extras) for a lot of other apps

### 🍭 Extras

<!-- extras:start -->
- [Alacritty](https://github.com/alacritty/alacritty) ([alacritty](extras/alacritty))
- [Delta](https://github.com/dandavison/delta) ([delta](extras/delta))
- [Fish](https://fishshell.com/docs/current/index.html) ([fish](extras/fish))
- [Fish Themes](https://fishshell.com/docs/current/interactive.html#syntax-highlighting) ([fish_themes](extras/fish_themes))
- [Foot](https://codeberg.org/dnkl/foot) ([foot](extras/foot))
- [iTerm](https://iterm2.com/) ([iterm](extras/iterm))
- [Kitty](https://sw.kovidgoyal.net/kitty/conf.html) ([kitty](extras/kitty))
- [Lua Table for testing](https://www.lua.org) ([lua](extras/lua))
- [Prism](https://prismjs.com) ([prism](extras/prism))
- [Sublime Text](https://www.sublimetext.com/docs/themes) ([sublime](extras/sublime))
- [Terminator](https://gnome-terminator.readthedocs.io/en/latest/config.html) ([terminator](extras/terminator))
- [Tilix](https://github.com/gnunn1/tilix) ([tilix](extras/tilix))
- [Tmux](https://github.com/tmux/tmux/wiki) ([tmux](extras/tmux))
- [WezTerm](https://wezfurlong.org/wezterm/config/) ([wezterm](extras/wezterm))
- [Windows Terminal](https://aka.ms/terminal-documentation) ([windows_terminal](extras/windows_terminal))
- [Xfce Terminal](https://docs.xfce.org/apps/terminal/advanced) ([xfceterm](extras/xfceterm))
- [Xresources](https://wiki.archlinux.org/title/X_resources) ([xresources](extras/xresources))
- [Zathura](https://pwmt.org/projects/zathura/) ([zathura](extras/zathura))
<!-- extras:end -->

## ⚡️ Requirements

- Neovim >= 0.6.0

## 📦 Installation

Install the theme with your preferred package manager:

[folke/lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

## 🚀 Usage

Enable the colorscheme:

```vim
" Vim Script
colorscheme tokyonight

" There are also colorschemes for the different styles
colorscheme tokyonight-night
colorscheme tokyonight-storm
colorscheme tokyonight-day
colorscheme tokyonight-moon
```

```lua
-- Lua
vim.cmd[[colorscheme tokyonight]]
```

To enable the `tokyonight` theme for `Barbecue`:

```lua
require('barbecue').setup {
  -- ... your barbecue config
  theme = 'tokyonight',
  -- ... your barbecue config
}
```

To enable the `TokyoNight` theme for `Lualine`, simply specify it in your
lualine settings:

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

> ❗️ configuration needs to be set **BEFORE** loading the color scheme with
> `colorscheme tokyonight`

The theme comes in four styles, `storm`, `moon`, a darker variant `night` and `day`.

The **day** style will be used if:

- `{ style = "day"}` was passed to `setup(options)`
- or `vim.o.background = "light"`

TokyoNight will use the default options, unless you call `setup`.

```lua
require("tokyonight").setup({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  style = "storm", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
  light_style = "day", -- The theme is used when the background is set to light
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "dark", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,
})
```

## 🪓 Overriding Colors & Highlight Groups

How the highlight groups are calculated:

1. the **colors** for the style are calculated based on your config
2. `config.on_colors(colors)` is ran, where you can override the colors
3. the **colors** are then used to generate the highlight groups
4. `config.on_highlights(highlights, colors)` is ran, where you can overide the highlight groups

Please refer to default values for `colors` and `highlights` for the [storm](extras/lua/tokyonight_storm.lua), [moon](extras/lua/tokyonight_moon.lua), [night](extras/lua/tokyonight_night.lua), [day](extras/lua/tokyonight_day.lua)

Example for changing some settings and colors

```lua
require("tokyonight").setup({
  -- use the night style
  style = "night",
  -- disable italic for functions
  styles = {
    functions = {}
  },
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end
})
```

Example to make Telescope
[borderless](https://github.com/nvim-telescope/telescope.nvim/wiki/Gallery#borderless)

```lua
require("tokyonight").setup({
  on_highlights = function(hl, c)
    local prompt = "#2d3149"
    hl.TelescopeNormal = {
      bg = c.bg_dark,
      fg = c.fg_dark,
    }
    hl.TelescopeBorder = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopePromptBorder = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePreviewTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopeResultsTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
  end,
})
```

### Making `undercurls` work properly in **Tmux**

To have undercurls show up and in color, add the following to your **Tmux**
config file:

```sh
# Undercurl
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
```

## 🍭 Extras

Extra color configs for **Kitty**, **Alacritty**, **Fish**, **WezTerm**,
**iTerm** and **foot** can be found in [extras](extras/). To use them, refer to
their respective documentation.

![image](https://user-images.githubusercontent.com/292349/115395546-d8d6f880-a198-11eb-98fb-a1194787701d.png)

You can easily use the color palette for other plugins inside your Neovim
config:

```lua
local colors = require("tokyonight.colors").setup() -- pass in any of the config options as explained above
local util = require("tokyonight.util")

aplugin.background = colors.bg_dark
aplugin.my_error = util.lighten(colors.red1, 0.3) -- number between 0 and 1. 0 results in white, 1 results in red1
```

## 🔥 Contributing

Pull requests are welcome. For the `extras`, we use a simple template system
that can be used to generate themes for the different styles.

How to add a new extra template:

1. create a file like `lua/tokyonight/extra/cool-app.lua`
2. add the name and output file extension to the `extras` table in
   `lua/tokyonight/extra/init.lua`
3. run the shell script below to generate / update
   extra themes

   ```sh
   $ nvim --headless "+lua require('tokyonight.extra').setup()" +qa
   ```

4. check the newly created themes under `extra/`, but **DO NOT** commit them! They will be build automatically by the ci
