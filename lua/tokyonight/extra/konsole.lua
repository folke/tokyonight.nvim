local util = require("tokyonight.util")

local M = {}

---@param colors ColorScheme
function M.generate(colors)
  local konsole_colors = {}

  for k, v in pairs(colors) do
    local is_color = type(v) == "string" and v:find("^#[%x]") ~= nil
    if is_color then
      ---@type string
      local hex = v:gsub("^#", "")
      local r = tonumber(hex:sub(1, 2), 16)
      local g = tonumber(hex:sub(3, 4), 16)
      local b = tonumber(hex:sub(5, 6), 16)
      konsole_colors[k] = string.format("%d,%d,%d", r, g, b)
    else
      konsole_colors[k] = v
    end
  end

  local konsole = util.template(
    [[
[Background]
Color=${bg}

[BackgroundIntense]
Color=${bg_visual}

[Foreground]
Color=${fg}

[ForegroundIntense]
Bold=true
Color=${fg}

[Color0]
Color=${terminal.black}

[Color0Intense]
Color=${terminal.black_bright}

[Color1]
Color=${terminal.red}

[Color1Intense]
Color=${terminal.red_bright}

[Color2]
Color=${terminal.green}

[Color2Intense]
Color=${terminal.green_bright}

[Color3]
Color=${terminal.yellow}

[Color3Intense]
Color=${terminal.yellow_bright}

[Color4]
Color=${terminal.blue}

[Color4Intense]
Color=${terminal.blue_bright}

[Color5]
Color=${terminal.magenta}

[Color5Intense]
Color=${terminal.magenta_bright}

[Color6]
Color=${terminal.cyan}

[Color6Intense]
Color=${terminal.cyan_bright}

[Color7]
Color=${terminal.white}

[Color7Intense]
Color=${terminal.white_bright}

[General]
Description=${_style_name}
Opacity=1
]],
    konsole_colors
  )
  return konsole
end

return M
