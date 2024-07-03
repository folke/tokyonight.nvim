local Util = require("tokyonight.util")

local M = {}

-- map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string, subdir?: string, sep?:string}>
-- stylua: ignore
M.extras = {
  alacritty        = { ext = "toml", url = "https://github.com/alacritty/alacritty", label = "Alacritty" },
  delta            = { ext = "gitconfig", url = "https://github.com/dandavison/delta", label = "Delta" },
  dunst            = { ext = "dunstrc", url = "https://dunst-project.org/", label = "Dunst" },
  fish             = { ext = "fish", url = "https://fishshell.com/docs/current/index.html", label = "Fish" },
  fish_themes      = { ext = "theme", url = "https://fishshell.com/docs/current/interactive.html#syntax-highlighting", label = "Fish Themes" },
  foot             = { ext = "ini", url = "https://codeberg.org/dnkl/foot", label = "Foot" },
  fzf              = { ext = "sh", url = "https://github.com/junegunn/fzf", label = "Fzf" },
  gitui            = { ext = "ron", url = "https://github.com/extrawurst/gitui", label = "GitUI" },
  helix            = { ext = "toml", url = "https://helix-editor.com/", label = "Helix" },
  iterm            = { ext = "itermcolors", url = "https://iterm2.com/", label = "iTerm" },
  kitty            = { ext = "conf", url = "https://sw.kovidgoyal.net/kitty/conf.html", label = "Kitty" },
  lazygit          = { ext = "yml", url = "https://github.com/jesseduffield/lazygit", label = "Lazygit" },
  lua              = { ext = "lua", url = "https://www.lua.org", label = "Lua Table for testing" },
  prism            = { ext = "js", url = "https://prismjs.com", label = "Prism" },
  sublime          = { ext = "tmTheme", url = "https://www.sublimetext.com/docs/themes", label = "Sublime Text" },
  terminator       = { ext = "conf", url = "https://gnome-terminator.readthedocs.io/en/latest/config.html", label = "Terminator" },
  tilix            = { ext = "json", url = "https://github.com/gnunn1/tilix", label = "Tilix" },
  tmux             = { ext = "tmux", url = "https://github.com/tmux/tmux/wiki", label = "Tmux" },
  wezterm          = { ext = "toml", url = "https://wezfurlong.org/wezterm/config/files.html", label = "WezTerm" },
  windows_terminal = { ext = "json", url = "https://aka.ms/terminal-documentation", label = "Windows Terminal" },
  xfceterm         = { ext = "theme", url = "https://docs.xfce.org/apps/terminal/advanced", label = "Xfce Terminal" },
  xresources       = { ext = "Xresources", url = "https://wiki.archlinux.org/title/X_resources", label = "Xresources" },
  yazi             = { ext = "toml", url = "https://github.com/sxyazi/yazi", label = "Yazi" },
  vim              = { ext = "vim", url = "https://vimhelp.org/", label = "Vim", subdir = "colors", sep = "-" },
  zathura          = { ext = "zathurarc", url = "https://pwmt.org/projects/zathura/", label = "Zathura" },
  zellij           = { ext = "kdl", url = "https://zellij.dev/", label = "Zellij" },
}

function M.setup()
  local tokyonight = require("tokyonight")
  vim.o.background = "dark"

  -- map of style to style name
  local styles = {
    storm = " Storm",
    night = "",
    day = " Day",
    moon = " Moon",
  }

  ---@type string[]
  local names = vim.tbl_keys(M.extras)
  table.sort(names)

  -- tokyonight.setup({ plugins = { all = true } })
  for _, extra in ipairs(names) do
    local info = M.extras[extra]
    local plugin = require("tokyonight.extra." .. extra)
    for style, style_name in pairs(styles) do
      local colors, groups, opts = tokyonight.load({ style = style, plugins = { all = true } })
      local fname = extra
        .. (info.subdir and "/" .. info.subdir .. "/" or "")
        .. "/tokyonight"
        .. (info.sep or "_")
        .. style
        .. "."
        .. info.ext
      colors["_upstream_url"] = "https://github.com/folke/tokyonight.nvim/raw/main/extras/" .. fname
      colors["_style_name"] = "Tokyo Night" .. style_name
      colors["_name"] = "tokyonight_" .. style
      colors["_style"] = style
      print("[write] " .. fname)
      Util.write("extras/" .. fname, plugin.generate(colors, groups, opts))
    end
  end
end

return M
