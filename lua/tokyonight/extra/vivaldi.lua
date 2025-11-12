local util = require("tokyonight.util")

local M = {}

--- Generate deterministic UUID from theme name
--- @param theme_name string
--- @return string UUID
local function generate_uuid(theme_name)
  -- Simple hash function to generate deterministic UUID
  local hash = 0
  for i = 1, #theme_name do
    hash = (hash * 31 + string.byte(theme_name, i)) % 0xFFFFFFFF
  end

  -- Generate UUID v4 format from hash
  local uuid = string.format(
    "%08x-%04x-4%03x-%04x-%012x",
    hash % 0xFFFFFFFF,
    bit.rshift(hash, 16) % 0xFFFF,
    hash % 0xFFF,
    0x8000 + (hash % 0x3FFF),
    hash % 0xFFFFFFFFFFFF
  )
  return uuid
end

--- @param colors ColorScheme
--- @return string
function M.generate(colors)
  colors = vim.deepcopy(colors)
  colors._id = generate_uuid(colors._style_name)

  return util.template(
    [[
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
   "colorHighlightBg": "${blue}",
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
}]],
    colors
  )
end

return M
