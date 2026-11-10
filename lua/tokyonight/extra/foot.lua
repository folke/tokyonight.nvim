local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local footColors = {}
  for k, v in pairs(colors) do
    if type(v) == "string" then
      footColors[k] = v:gsub("^#", "")
    end
  end

  local foot = util.template(
    [[
[colors-dark]
cursor=${bg_visual} ${fg}
foreground=${fg}
background=${bg}

regular0=${black}
regular1=${red}
regular2=${green}
regular3=${yellow}
regular4=${blue}
regular5=${magenta}
regular6=${cyan}
regular7=${fg_dark}

bright0=${terminal_black}
bright1=${red}
bright2=${green}
bright3=${yellow}
bright4=${blue}
bright5=${magenta}
bright6=${cyan}
bright7=${fg}

16=${orange}
17=${red1}

selection-foreground=${fg}
selection-background=${bg_visual}
urls=${green1}
]],
    footColors
  )

  return foot
end

return M
