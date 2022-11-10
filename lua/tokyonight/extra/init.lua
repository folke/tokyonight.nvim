local M = {}

local function write(str, fileName)
  print("[write] extra/" .. fileName)
  vim.fn.mkdir(vim.fs.dirname("extras/" .. fileName), "p")
  local file = io.open("extras/" .. fileName, "w")
  file:write(str)
  file:close()
end

function M.setup()
  local config = require("tokyonight.config")
  vim.o.background = "dark"

  -- map of plugin name to plugin extension
  local extras = {
    kitty = "conf",
    fish = "fish",
    alacritty = "yml",
    wezterm = "toml",
    tmux = "tmux",
    xresources = "Xresources",
    xfceterm = "theme",
    foot = "ini",
    tilix = "json",
    iterm = "itermcolors",
    lua = "lua",
    sublime = "tmTheme",
    delta = "gitconfig",
    terminator = "conf",
  }
  -- map of style to style name
  local styles = {
    storm = " Storm",
    night = "",
    day = " Day",
    moon = " Moon",
  }

  for extra, ext in pairs(extras) do
    local plugin = require("tokyonight.extra." .. extra)
    for style, style_name in pairs(styles) do
      config.setup({ style = style })
      local colors = require("tokyonight.colors").setup({ transform = true })
      local fname = extra .. "/tokyonight_" .. style .. "." .. ext
      colors["_upstream_url"] = "https://github.com/folke/tokyonight.nvim/raw/main/extras/" .. fname
      colors["_style_name"] = "Tokyo Night" .. style_name
      write(plugin.generate(colors), fname)
    end
  end
end

return M
