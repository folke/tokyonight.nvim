local util = require("tokyonight.util")

local M = {}

--- @return string UUID
local function generate_uuid()
  local seed = tonumber(tostring(os.clock()):reverse():sub(1, 9))
  math.randomseed(seed)
  return string.gsub("xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx", "[xy]", function(c)
    local v = (c == "x") and math.random(0, 0xf) or math.random(8, 0xb)
    return string.format("%x", v)
  end)
end
---
--- @param colors ColorScheme
--- @param color_hex string
--- @param color_name string|nil
--- @return string JSON
local function generate_theme(colors, color_hex, color_name)
  local colors = vim.deepcopy(colors)
  colors._id = generate_uuid()

  if color_name then
    colors._style_name = colors._style_name .. " (" .. color_name .. ")"
  end

  return util.template([[
{
   "accentFromPage": false,
   "accentOnWindow": true,
   "accentSaturationLimit": 1,
   "alpha": 1,
   "backgroundImage": "",
   "backgroundPosition": "stretch",
   "blur": 0,
   "colorAccentBg": "${bg_highlight}",
   "colorBg": "${bg}",
   "colorFg": "${fg}",
   "colorHighlightBg": "]] .. color_hex .. [[",
   "colorWindowBg": "${black}",
   "contrast": 0,
   "dimBlurred": false,
   "engineVersion": 1,
   "id": "${_id}",
   "name": "${_style_name}",
   "preferSystemAccent": false,
   "radius": 14,
   "simpleScrollbar": true,
   "transparencyTabBar": false,
   "transparencyTabs": false,
   "url": "https://github.com/folke/tokyonight.nvim",
   "version": 1
}]], colors)
end

--- @param colors ColorScheme
--- @return string
function M.generate(colors)
  local rainbow = {
    "Blue",
    "Yellow",
    "Green",
    "Teal",
    "Purple",
    "Magenta",
    "Orange",
    "Red",
  }

  for i = 1, #colors.rainbow do
    local color_name = rainbow[i]
    local color_hex = colors.rainbow[i]
    local variant_fname = colors._name .. "_" .. color_name:lower() .. ".json"
    print("[write] vivaldi/" .. variant_fname)
    util.write("extras/vivaldi/" .. variant_fname, generate_theme(colors, color_hex, color_name))
  end

  -- return the first rainbow color (blue) as the default
  return generate_theme(colors, colors.rainbow[1])
end

return M
