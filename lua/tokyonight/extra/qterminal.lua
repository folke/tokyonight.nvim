local util = require("tokyonight.util")

local M = {}

function M.rgb(c)
  c = string.lower(c)
  return string.format("%d,%d,%d", tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16))
end

function M.convert_colors(colors)
  local converted = {}
  for k, v in pairs(colors) do
    local is_color = type(v) == "string" and v:find("^#[%x]") ~= nil
    if is_color then
      converted[k] = M.rgb(v)
    else
      converted[k] = v
    end
  end
  return converted
end

function M.generate(colors)
  local qterminal_colors = M.convert_colors(colors)
  qterminal_colors.terminal = M.convert_colors(colors.terminal)

  local qterminal = util.template(
    [[
[General]
Description=${_style_name}

[Background]
Color=${bg}

[BackgroundIntense]
Color=${bg}

[Foreground]
Color=${fg}

[ForegroundIntense]
Color=${fg}

[Color0]
Color=${terminal.black}

[Color1]
Color=${terminal.red}

[Color2]
Color=${terminal.green}

[Color3]
Color=${terminal.yellow}

[Color4]
Color=${terminal.blue}

[Color5]
Color=${terminal.magenta}

[Color6]
Color=${terminal.cyan}

[Color7]
Color=${terminal.white}

[Color0Intense]
Color=${terminal.black_bright}

[Color1Intense]
Color=${terminal.red_bright}

[Color2Intense]
Color=${terminal.green_bright}

[Color3Intense]
Color=${terminal.yellow_bright}

[Color4Intense]
Color=${terminal.blue_bright}

[Color5Intense]
Color=${terminal.magenta_bright}

[Color6Intense]
Color=${terminal.cyan_bright}

[Color7Intense]
Color=${terminal.white_bright}

]],
    qterminal_colors
  )
  return qterminal
end

return M
