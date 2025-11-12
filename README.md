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

<details>
<summary>🎨 Supported Plugins</summary>

<!-- plugins:start -->

| Plugin | Source |
| --- | --- |
| [aerial.nvim](https://github.com/stevearc/aerial.nvim) | [`aerial`](lua/tokyonight/groups/aerial.lua) |
| [ale](https://github.com/dense-analysis/ale) | [`ale`](lua/tokyonight/groups/ale.lua) |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | [`alpha`](lua/tokyonight/groups/alpha.lua) |
| [barbar.nvim](https://github.com/romgrk/barbar.nvim) | [`barbar`](lua/tokyonight/groups/barbar.lua) |
| [blink.cmp](https://github.com/Saghen/blink.cmp) | [`blink`](lua/tokyonight/groups/blink.lua) |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | [`bufferline`](lua/tokyonight/groups/bufferline.lua) |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | [`cmp`](lua/tokyonight/groups/cmp.lua) |
| [codeium.nvim](https://github.com/Exafunction/codeium.nvim) | [`codeium`](lua/tokyonight/groups/codeium.lua) |
| [copilot.lua](https://github.com/zbirenbaum/copilot.lua) | [`copilot`](lua/tokyonight/groups/copilot.lua) |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | [`dap`](lua/tokyonight/groups/dap.lua) |
| [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) | [`dashboard`](lua/tokyonight/groups/dashboard.lua) |
| [flash.nvim](https://github.com/folke/flash.nvim) | [`flash`](lua/tokyonight/groups/flash.lua) |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | [`fzf`](lua/tokyonight/groups/fzf.lua) |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter) | [`gitgutter`](lua/tokyonight/groups/gitgutter.lua) |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | [`gitsigns`](lua/tokyonight/groups/gitsigns.lua) |
| [glyph-palette.vim](https://github.com/lambdalisue/glyph-palette.vim) | [`glyph-palette`](lua/tokyonight/groups/glyph-palette.lua) |
| [grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim) | [`grug-far`](lua/tokyonight/groups/grug-far.lua) |
| [headlines.nvim](https://github.com/lukas-reineke/headlines.nvim) | [`headlines`](lua/tokyonight/groups/headlines.lua) |
| [hop.nvim](https://github.com/phaazon/hop.nvim) | [`hop`](lua/tokyonight/groups/hop.lua) |
| [vim-illuminate](https://github.com/RRethy/vim-illuminate) | [`illuminate`](lua/tokyonight/groups/illuminate.lua) |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | [`indent-blankline`](lua/tokyonight/groups/indent-blankline.lua) |
| [indentmini.nvim](https://github.com/nvimdev/indentmini.nvim) | [`indentmini`](lua/tokyonight/groups/indentmini.lua) |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | [`lazy`](lua/tokyonight/groups/lazy.lua) |
| [leap.nvim](https://github.com/ggandor/leap.nvim) | [`leap`](lua/tokyonight/groups/leap.lua) |
| [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) | [`lspsaga`](lua/tokyonight/groups/lspsaga.lua) |
| [mini.animate](https://github.com/echasnovski/mini.animate) | [`mini_animate`](lua/tokyonight/groups/mini_animate.lua) |
| [mini.clue](https://github.com/echasnovski/mini.clue) | [`mini_clue`](lua/tokyonight/groups/mini_clue.lua) |
| [mini.completion](https://github.com/echasnovski/mini.completion) | [`mini_completion`](lua/tokyonight/groups/mini_completion.lua) |
| [mini.cursorword](https://github.com/echasnovski/mini.cursorword) | [`mini_cursorword`](lua/tokyonight/groups/mini_cursorword.lua) |
| [mini.deps](https://github.com/echasnovski/mini.deps) | [`mini_deps`](lua/tokyonight/groups/mini_deps.lua) |
| [mini.diff](https://github.com/echasnovski/mini.diff) | [`mini_diff`](lua/tokyonight/groups/mini_diff.lua) |
| [mini.files](https://github.com/echasnovski/mini.files) | [`mini_files`](lua/tokyonight/groups/mini_files.lua) |
| [mini.hipatterns](https://github.com/echasnovski/mini.hipatterns) | [`mini_hipatterns`](lua/tokyonight/groups/mini_hipatterns.lua) |
| [mini.icons](https://github.com/echasnovski/mini.icons) | [`mini_icons`](lua/tokyonight/groups/mini_icons.lua) |
| [mini.indentscope](https://github.com/echasnovski/mini.indentscope) | [`mini_indentscope`](lua/tokyonight/groups/mini_indentscope.lua) |
| [mini.jump](https://github.com/echasnovski/mini.jump) | [`mini_jump`](lua/tokyonight/groups/mini_jump.lua) |
| [mini.map](https://github.com/echasnovski/mini.map) | [`mini_map`](lua/tokyonight/groups/mini_map.lua) |
| [mini.notify](https://github.com/echasnovski/mini.notify) | [`mini_notify`](lua/tokyonight/groups/mini_notify.lua) |
| [mini.operators](https://github.com/echasnovski/mini.operators) | [`mini_operators`](lua/tokyonight/groups/mini_operators.lua) |
| [mini.pick](https://github.com/echasnovski/mini.pick) | [`mini_pick`](lua/tokyonight/groups/mini_pick.lua) |
| [mini.starter](https://github.com/echasnovski/mini.starter) | [`mini_starter`](lua/tokyonight/groups/mini_starter.lua) |
| [mini.statusline](https://github.com/echasnovski/mini.statusline) | [`mini_statusline`](lua/tokyonight/groups/mini_statusline.lua) |
| [mini.surround](https://github.com/echasnovski/mini.surround) | [`mini_surround`](lua/tokyonight/groups/mini_surround.lua) |
| [mini.tabline](https://github.com/echasnovski/mini.tabline) | [`mini_tabline`](lua/tokyonight/groups/mini_tabline.lua) |
| [mini.test](https://github.com/echasnovski/mini.test) | [`mini_test`](lua/tokyonight/groups/mini_test.lua) |
| [mini.trailspace](https://github.com/echasnovski/mini.trailspace) | [`mini_trailspace`](lua/tokyonight/groups/mini_trailspace.lua) |
| [nvim-navic](https://github.com/SmiteshP/nvim-navic) | [`navic`](lua/tokyonight/groups/navic.lua) |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | [`neo-tree`](lua/tokyonight/groups/neo-tree.lua) |
| [neogit](https://github.com/TimUntersberger/neogit) | [`neogit`](lua/tokyonight/groups/neogit.lua) |
| [neotest](https://github.com/nvim-neotest/neotest) | [`neotest`](lua/tokyonight/groups/neotest.lua) |
| [noice.nvim](https://github.com/folke/noice.nvim) | [`noice`](lua/tokyonight/groups/noice.lua) |
| [nvim-notify](https://github.com/rcarriga/nvim-notify) | [`notify`](lua/tokyonight/groups/notify.lua) |
| [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) | [`nvim-tree`](lua/tokyonight/groups/nvim-tree.lua) |
| [octo.nvim](https://github.com/pwntester/octo.nvim) | [`octo`](lua/tokyonight/groups/octo.lua) |
| [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim) | [`rainbow`](lua/tokyonight/groups/rainbow.lua) |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | [`render-markdown`](lua/tokyonight/groups/render-markdown.lua) |
| [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar) | [`scrollbar`](lua/tokyonight/groups/scrollbar.lua) |
| [sidekick.nvim](https://github.com/folke/sidekick.nvim) | [`sidekick`](lua/tokyonight/groups/sidekick.lua) |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | [`snacks`](lua/tokyonight/groups/snacks.lua) |
| [vim-sneak](https://github.com/justinmk/vim-sneak) | [`sneak`](lua/tokyonight/groups/sneak.lua) |
| [supermaven-nvim](https://github.com/supermaven-inc/supermaven-nvim) | [`supermaven`](lua/tokyonight/groups/supermaven.lua) |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | [`telescope`](lua/tokyonight/groups/telescope.lua) |
| [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | [`treesitter-context`](lua/tokyonight/groups/treesitter-context.lua) |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | [`trouble`](lua/tokyonight/groups/trouble.lua) |
| [vimwiki](https://github.com/vimwiki/vimwiki) | [`vimwiki`](lua/tokyonight/groups/vimwiki.lua) |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | [`which-key`](lua/tokyonight/groups/which-key.lua) |
| [yanky.nvim](https://github.com/gbprod/yanky.nvim) | [`yanky`](lua/tokyonight/groups/yanky.lua) |

<!-- plugins:end -->

</details>

<details>
<summary>🍭 Extras</summary>

<!-- extras:start -->

| Tool | Extra |
| --- | --- |
| [Aerc](https://git.sr.ht/~rjarry/aerc/) | [extras/aerc](extras/aerc) |
| [Aider](https://aider.chat) | [extras/aider](extras/aider) |
| [Alacritty](https://github.com/alacritty/alacritty) | [extras/alacritty](extras/alacritty) |
| [Btop++](https://github.com/aristocratos/btop) | [extras/btop](extras/btop) |
| [Delta](https://github.com/dandavison/delta) | [extras/delta](extras/delta) |
| [(Better-)Discord](https://betterdiscord.app/) | [extras/discord](extras/discord) |
| [Dunst](https://dunst-project.org/) | [extras/dunst](extras/dunst) |
| [eza](https://eza.rocks) | [extras/eza](extras/eza) |
| [Fish](https://fishshell.com/docs/current/index.html) | [extras/fish](extras/fish) |
| [Fish Themes](https://fishshell.com/docs/current/interactive.html#syntax-highlighting) | [extras/fish_themes](extras/fish_themes) |
| [Foot](https://codeberg.org/dnkl/foot) | [extras/foot](extras/foot) |
| [Fuzzel](https://codeberg.org/dnkl/fuzzel) | [extras/fuzzel](extras/fuzzel) |
| [Fzf](https://github.com/junegunn/fzf) | [extras/fzf](extras/fzf) |
| [Ghostty](https://github.com/ghostty-org/ghostty) | [extras/ghostty](extras/ghostty) |
| [GitUI](https://github.com/extrawurst/gitui) | [extras/gitui](extras/gitui) |
| [GNOME Terminal](https://gitlab.gnome.org/GNOME/gnome-terminal) | [extras/gnome_terminal](extras/gnome_terminal) |
| [Helix](https://helix-editor.com/) | [extras/helix](extras/helix) |
| [iSH ](https://ish.app) | [extras/ish](extras/ish) |
| [iTerm](https://iterm2.com/) | [extras/iterm](extras/iterm) |
| [Kitty](https://sw.kovidgoyal.net/kitty/conf.html) | [extras/kitty](extras/kitty) |
| [Konsole](https://konsole.kde.org/) | [extras/konsole](extras/konsole) |
| [Lazygit](https://github.com/jesseduffield/lazygit) | [extras/lazygit](extras/lazygit) |
| [Lua Table for testing](https://www.lua.org) | [extras/lua](extras/lua) |
| [opencode](https://github.com/sst/opencode) | [extras/opencode](extras/opencode) |
| [Prism](https://prismjs.com) | [extras/prism](extras/prism) |
| [process-compose](https://f1bonacc1.github.io/process-compose/) | [extras/process_compose](extras/process_compose) |
| [QTerminal](https://github.com/lxqt/qterminal) | [extras/qterminal](extras/qterminal) |
| [Slack](https://slack.com) | [extras/slack](extras/slack) |
| [Spotify Player](https://github.com/aome510/spotify-player) | [extras/spotify_player](extras/spotify_player) |
| [Sublime Text](https://www.sublimetext.com/docs/themes) | [extras/sublime](extras/sublime) |
| [Tailwind CSS (v4)](https://tailwindcss.com) | [extras/tailwindv4](extras/tailwindv4) |
| [Terminator](https://gnome-terminator.readthedocs.io/en/latest/config.html) | [extras/terminator](extras/terminator) |
| [Termux](https://termux.dev/) | [extras/termux](extras/termux) |
| [Tilix](https://github.com/gnunn1/tilix) | [extras/tilix](extras/tilix) |
| [Tmux](https://github.com/tmux/tmux/wiki) | [extras/tmux](extras/tmux) |
| [Vim](https://vimhelp.org/) | [extras/vim](extras/vim) |
| [Vimium](https://vimium.github.io/) | [extras/vimium](extras/vimium) |
| [Vivaldi](https://vivaldi.com) | [extras/vivaldi](extras/vivaldi) |
| [WezTerm](https://wezfurlong.org/wezterm/config/files.html) | [extras/wezterm](extras/wezterm) |
| [Windows Terminal](https://aka.ms/terminal-documentation) | [extras/windows_terminal](extras/windows_terminal) |
| [Xfce Terminal](https://docs.xfce.org/apps/terminal/advanced) | [extras/xfceterm](extras/xfceterm) |
| [Xresources](https://wiki.archlinux.org/title/X_resources) | [extras/xresources](extras/xresources) |
| [Yazi](https://github.com/sxyazi/yazi) | [extras/yazi](extras/yazi) |
| [Zathura](https://pwmt.org/projects/zathura/) | [extras/zathura](extras/zathura) |
| [Zellij](https://zellij.dev/) | [extras/zellij](extras/zellij) |

<!-- extras:end -->

</details>

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

<!-- config:start -->

```lua
---@class tokyonight.Config
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: tokyonight.Highlights, colors: ColorScheme)
M.defaults = {
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
}
```

<!-- config:end -->

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
set -as terminal-overrides ',*:Setulc=\E[58::2::::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
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

Pull requests are welcome! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on adding new extras and general contribution guidelines.
