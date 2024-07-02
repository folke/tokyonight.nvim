# 🏙 Tokyo Night

A dark and light [Neovim](https://github.com/neovim/neovim) theme written in
[Lua](https://www.lua.org) ported from the [Visual Studio Code
TokyoNight](https://github.com/enkia/tokyo-night-vscode-theme) theme. Includes
[extra](#-extras) themes for [Kitty](https://sw.kovidgoyal.net/kitty/conf.html),
[Alacritty](https://github.com/alacritty/alacritty),
[iTerm](https://iterm2.com/) and
[Fish](https://fishshell.com/docs/current/index.html).

<table width="100%">
  <tr>
    <th>Moon</th>
    <th>Storm</th>
  </tr>
  <tr>
    <td width="50%">
      <img src="https://user-images.githubusercontent.com/292349/190951628-10ba28a1-57ff-4479-8eab-47400a402242.png" />
    </td>
    <td width="50%">
      <img src="https://user-images.githubusercontent.com/292349/115295095-3a9e5080-a10e-11eb-9aed-6054488c46ce.png" />
    </td>
  </tr>
  <tr>
    <th>Night</th>
    <th>Day</th>
  </tr>
  <tr>
    <td width="50%">
      <img src="https://user-images.githubusercontent.com/292349/115295327-7afdce80-a10e-11eb-89b3-2591262bf95a.png" />
    </td>
    <td width="50%">
      <img src="https://user-images.githubusercontent.com/292349/115996270-78c6c480-a593-11eb-8ed0-7d1400b058f5.png" />
    </td>
  </tr>
</table>

## ✨ Features

- Supports the latest [Neovim](https://github.com/neovim/neovim)
  [0.9.0](https://github.com/neovim/neovim/releases/tag/v0.9.0) features.
- Terminal colors.
- Supports all major plugins.
- Provides [TokyoNight](https://github.com/folke/tokyonight.nvim)
  [extras](#-extras) for numerous other applications.

### 🍭 Extras

<!-- extras:start -->
- [Alacritty](https://github.com/alacritty/alacritty) ([alacritty](extras/alacritty))
- [Delta](https://github.com/dandavison/delta) ([delta](extras/delta))
- [Dunst](https://dunst-project.org/) ([dunst](extras/dunst))
- [Fish](https://fishshell.com/docs/current/index.html) ([fish](extras/fish))
- [Fish Themes](https://fishshell.com/docs/current/interactive.html#syntax-highlighting) ([fish_themes](extras/fish_themes))
- [Foot](https://codeberg.org/dnkl/foot) ([foot](extras/foot))
- [Fzf](https://github.com/junegunn/fzf) ([fzf](extras/fzf))
- [GitUI](https://github.com/extrawurst/gitui) ([gitui](extras/gitui))
- [Helix](https://helix-editor.com/) ([helix](extras/helix))
- [iTerm](https://iterm2.com/) ([iterm](extras/iterm))
- [Kitty](https://sw.kovidgoyal.net/kitty/conf.html) ([kitty](extras/kitty))
- [Lazygit](https://github.com/jesseduffield/lazygit) ([lazygit](extras/lazygit))
- [Lua Table for testing](https://www.lua.org) ([lua](extras/lua))
- [Prism](https://prismjs.com) ([prism](extras/prism))
- [Sublime Text](https://www.sublimetext.com/docs/themes) ([sublime](extras/sublime))
- [Terminator](https://gnome-terminator.readthedocs.io/en/latest/config.html) ([terminator](extras/terminator))
- [Tilix](https://github.com/gnunn1/tilix) ([tilix](extras/tilix))
- [Tmux](https://github.com/tmux/tmux/wiki) ([tmux](extras/tmux))
- [Vim](https://vimhelp.org/) ([vim](extras/vim))
- [WezTerm](https://wezfurlong.org/wezterm/config/files.html) ([wezterm](extras/wezterm))
- [Windows Terminal](https://aka.ms/terminal-documentation) ([windows_terminal](extras/windows_terminal))
- [Xfce Terminal](https://docs.xfce.org/apps/terminal/advanced) ([xfceterm](extras/xfceterm))
- [Xresources](https://wiki.archlinux.org/title/X_resources) ([xresources](extras/xresources))
- [Yazi](https://github.com/sxyazi/yazi) ([yazi](extras/yazi))
- [Zathura](https://pwmt.org/projects/zathura/) ([zathura](extras/zathura))
- [Zellij](https://zellij.dev/) ([zellij](extras/zellij))
<!-- extras:end -->

## ⚡️ Requirements

- [Neovim](https://github.com/neovim/neovim) >=
  [0.8.0](https://github.com/neovim/neovim/releases/tag/v0.8.0)

## 📦 Installation

Install the theme with your preferred package manager, such as
[folke/lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

## 🚀 Usage

```lua
vim.cmd[[colorscheme tokyonight]]
```

```vim
colorscheme tokyonight

" There are also colorschemes for the different styles.
colorscheme tokyonight-night
colorscheme tokyonight-storm
colorscheme tokyonight-day
colorscheme tokyonight-moon
```

Some plugins need extra configuration to work with **TokyoNight**.

<details>
  <summary>Click here for more details</summary>

### [Barbecue](https://github.com/utilyre/barbecue.nvim)

```lua
-- Lua
require('barbecue').setup {
  -- ... your barbecue config
  theme = 'tokyonight',
  -- ... your barbecue config
}
```

### [Lualine](https://github.com/nvim-lualine/lualine.nvim)

```lua
-- Lua
require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'tokyonight'
    -- ... your lualine config
  }
}
```

### [Lightline](https://github.com/itchyny/lightline.vim)

```vim
" Vim Script
let g:lightline = {'colorscheme': 'tokyonight'}
```

</details>

## ⚙️ Configuration

> [!IMPORTANT]
> Set the configuration **BEFORE** loading the color scheme with `colorscheme tokyonight`.

The theme offers four styles: [storm](#storm), [moon](#moon), [night](#night),
and [day](#day).

The [day](#day) style is used when `{ style = "day" }` is passed to
`setup(options)` or when `vim.o.background = "light"`.

[TokyoNight](https://github.com/folke/tokyonight.nvim) uses the default options,
unless `setup` is explicitly called.

<details>
  <summary>Default Options</summary>

```lua
require("tokyonight").setup({
  style = "moon", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
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
  day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights tokyonight.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,

  cache = true, -- When set to true, the theme will be cached for better performance

  ---@type table<string, boolean|{enabled:boolean}>
  plugins = {
    -- enable all plugins when not using lazy.nvim
    -- set to false to manually enable/disable plugins
    all = package.loaded.lazy == nil,
    -- uses your plugin manager to automatically enable needed plugins
    -- currently only lazy.nvim is supported
    auto = true,
    -- add any plugins here that you want to enable
    -- for all possible plugins, see:
    --   * https://github.com/folke/tokyonight.nvim/tree/main/lua/tokyonight/groups
    -- telescope = true,
  },
})
```

</details>

## 🪓 Overriding Colors & Highlight Groups

How the highlight groups are calculated:

1. `colors` are determined based on your configuration, with the ability to
   override them using `config.on_colors(colors)`.
1. These `colors` are utilized to generate the highlight groups.
1. `config.on_highlights(highlights, colors)` can be used to override highlight
   groups.

For default values of `colors` and `highlights`, please consult the
[storm](extras/lua/tokyonight_storm.lua),
[moon](extras/lua/tokyonight_moon.lua),
[night](extras/lua/tokyonight_night.lua), and
[day](extras/lua/tokyonight_day.lua) themes.

<details>
  <summary>Settings & Changing Colors</summary>

```lua
require("tokyonight").setup({
  -- use the night style
  style = "night",
  -- disable italic for functions
  styles = {
    functions = {}
  },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end
})
```

</details>

<details>
  <summary>Borderless Telescope</summary>

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

</details>

<details>
  <summary>Fix <code>undercurls</code> in Tmux</summary>

To have undercurls show up and in color, add the following to your
[Tmux](https://github.com/tmux/tmux) configuration file:

```sh
# Undercurl
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
```

</details>

## 🍭 Extras

Extra color configs for [Kitty](https://sw.kovidgoyal.net/kitty/conf.html),
[Alacritty](https://github.com/alacritty/alacritty),
[Fish](https://fishshell.com/docs/current/index.html), [WezTerm](https://wezfurlong.org/wezterm/config/files.html),
[iTerm](https://iterm2.com/) and [foot](https://codeberg.org/dnkl/foot) can be
found in [extras](extras/). To use them, refer to their respective
documentation.

![image](https://user-images.githubusercontent.com/292349/115395546-d8d6f880-a198-11eb-98fb-a1194787701d.png)

You can easily use the color palette for other plugins inside your
[Neovim](https://github.com/neovim/neovim) configuration:

```lua
local colors = require("tokyonight.colors").setup() -- pass in any of the config options as explained above
local util = require("tokyonight.util")

aplugin.background = colors.bg_dark
aplugin.my_error = util.lighten(colors.red1, 0.3) -- number between 0 and 1. 0 results in white, 1 results in red1
```

## 🔥 Contributing

Pull requests are welcome.

For the [extras](#-extras), we use a simple template system that can be used to
generate themes for the different styles.

How to add a new extra template:

1. Create a file like `lua/tokyonight/extra/cool-app.lua`.
2. Add the name and output file extension to the `extras` table in
   `lua/tokyonight/extra/init.lua`.
3. Run the following command to generate new [extra](#-extras) themes from the tokyonight plugin directory:

   ```sh
   ./extras/gen
   ```

4. Check the newly created themes in the `extra/` directory. Please **DO NOT**
   commit them, as they are already automatically built by the CI.
