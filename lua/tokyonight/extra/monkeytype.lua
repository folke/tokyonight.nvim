local util = require("tokyonight.util")

local M = {}

---Encode a string with the base64 scheme
---@param text string
---@return string
local function encode_b64(text)
  local b64set = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
  local padding = "="
  local result = ""

  local len = #text
  local rem = len % 3
  for i = 1, len, 3 do
    local b1, b2, b3 = 0, 0, 0
    local full = len >= i + 2
    if full then
      b1, b2, b3 = string.byte(text, i, i + 2)
    elseif rem == 2 then
      b1, b2 = string.byte(text, i, i + 1)
    else
      b1 = string.byte(text, i)
    end

    --    b = b1 << 16   | b2 << 8  | b3
    local b = b1 * 65536 + b2 * 256 + b3
    --              2^16        2^8

    --    r1 = b >> 18
    local r1 = math.floor(b / 262144)
    --                        2^18

    --    r2 = (b & (2 ^ 18 - 1)) >> 12
    local r2 = math.floor(b % 262144 / 4096)
    --                        2^18     2^12

    --    r3 = (b & (2 ^ 12 - 1)) >> 6
    local r3 = math.floor(b % 4096 / 64)
    --                        2^12   2^6

    --    r4 = b & (2 ^ 6 - 1)
    local r4 = math.floor(b % 64)
    --                        2^6

    result = result
      .. string.sub(b64set, r1 + 1, r1 + 1)
      .. string.sub(b64set, r2 + 1, r2 + 1)
      .. ((full or rem == 2) and string.sub(b64set, r3 + 1, r3 + 1) or padding)
      .. (full and string.sub(b64set, r4 + 1, r4 + 1) or padding)
  end

  return result
end

--- @param colors ColorScheme
function M.generate(colors)
  local scheme = encode_b64(
    util.template(
      '{"c":["${bg}","${warning}","${warning}","${comment}","${bg_float}","${fg}","${error}","${red}","${error}","${red}"]}',
      colors
    )
  )

  return [[
# Monkeytype theme

Access the following URL to set your [Monkeytype](https://monkeytype.com/) theme:
<https://monkeytype.com?customTheme=]] .. scheme .. ">"
end

return M
