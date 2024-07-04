local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local links = {
    FzfLuaFzfCursorLine = "CursorLine",
    FzfLuaFzfMatch = "Special",
    FzfLuaFzfBorder = "FzfLuaBorder",
    FzfLuaFzfScrollbar = "FzfLuaBorder",
    FzfLuaFzfSeparator = "FzfLuaBorder",
    FzfLuaFzfGutter = "FzfLuaNormal",
    FzfLuaFzfHeader = "FzfLuaTitle",
    FzfLuaFzfInfo = "NonText",
    FzfLuaFzfPointer = "Special",
    FzfLuaFzfMarker = "FzfLuaFzfPointer",
    FzfLuaFzfSpinner = "FzfLuaFzfPointer",
    FzfLuaFzfPrompt = "Special",
    FzfLuaFzfQuery = "FzfLuaNormal",
  }

  local spec = {
    ["fg"] = { "fg", "FzfLuaNormal" },
    ["bg"] = { "bg", "FzfLuaNormal" },
    ["hl"] = { "fg", "FzfLuaFzfMatch" },
    -- ["fg+"] = { "fg", "FzfLuaFzfCursorLine" },
    ["bg+"] = { "bg", "FzfLuaFzfCursorLine" },
    ["hl+"] = { "fg", "FzfLuaFzfMatch" },
    ["info"] = { "fg", "FzfLuaFzfInfo" },
    ["border"] = { "fg", "FzfLuaFzfBorder" },
    ["separator"] = { "fg", "FzfLuaFzfSeparator" },
    ["scrollbar"] = { "fg", "FzfLuaFzfScrollbar" },
    ["gutter"] = { "bg", "FzfLuaFzfGutter" },
    ["query"] = { "fg", "FzfLuaFzfQuery", "regular" },
    ["prompt"] = { "fg", "FzfLuaFzfPrompt" },
    ["pointer"] = { "fg", "FzfLuaFzfPointer" },
    ["marker"] = { "fg", "FzfLuaFzfMarker" },
    ["spinner"] = { "fg", "FzfLuaFzfSpinner" },
    ["header"] = { "fg", "FzfLuaFzfHeader" },
  }
  local ret = {}

  for c, v in pairs(spec) do
    local hl_group = links[v[2]]
    if vim.fn.hlexists(v[2]) == 1 then
      hl_group = v[2]
    end
    print(hl_group)
    assert(hl_group, "hl_group not found for " .. v[2])
    local hl = vim.api.nvim_get_hl(0, { name = hl_group, link = false })
    assert(hl, "hl not found for " .. hl_group)
    local color = hl[v[1]]
    assert(color, "color not found for " .. c .. ":" .. hl_group)
    color = string.format("#%06x", color) or nil
    local line = string.format("--color=%s:%s", c, color)
    if v[3] then
      line = line .. ":" .. v[3]
    end
    ret[#ret + 1] = "  " .. line .. " \\"
  end
  table.sort(ret)

  return M.template:format(table.concat(ret, "\n"))
end

M.template = [[
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none
%s
"
]]

print(M.generate())

return M
