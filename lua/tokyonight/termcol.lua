local M = {}

-- check for empty colors
function M.is_empty_or_none(s)
  return s == nil or s == "NONE" or s == ''
end

-- returns an approximate grey index for the given grey level
function M.grey_number(x)
    if x < 14 then
        return 0
    else
        local n = math.floor((x - 8) / 10)
        local m = (x - 8) % 10
        if m < 5 then
            return n
        else
           return n + 1
        end
    end
end

-- returns the actual grey level represented by the grey index
function M.grey_level(n)
    if n == 0 then
        return 0
    else
        return 8 + (n * 10)
    end
end

-- returns the palette index for the given grey index
function M.grey_color(n)
    if n == 0 then
        return 16
    elseif n == 25 then
        return 231
    else
        return 231 + n
    end
end

-- returns an approximate color index for the given color level
function M.rgb_number(x)
    if x < 75 then
        return 0
    else
        local n = math.floor((x - 55) / 40)
        local m = (x - 55) % 40
        if m < 20 then
            return n
        else
            return n + 1
        end
    end
end

-- returns the actual color level for the given color index
function M.rgb_level(n)
    if n == 0 then
        return 0
    else
        return 55 + (n * 40)
    end
end

--  returns the palette index for the given R/G/B color indices
function M.rgb_color(x, y, z)
    return 16 + (x * 36) + (y * 6) + z
end

-- returns the palette index to approximate the given R/G/B color levels
function M.color(r, g, b)
  -- map greys directly (see xterm's 256colres.pl)
  if vim.o.t_Co == 256 and r == g and g == b and r > 3 and r < 243 then
    return math.floor((r - 8) / 10) + 232
  end

  -- get the closest grey
  local gx = M.grey_number(r)
  local gy = M.grey_number(g)
  local gz = M.grey_number(b)

  -- get the closest color
  local x = M.rgb_number(r)
  local y = M.rgb_number(g)
  local z = M.rgb_number(b)

  if gx == gy and gy == gz then
    -- there are two possibilities
    local dgr = M.grey_level(gx) - r
    local dgg = M.grey_level(gy) - g
    local dgb = M.grey_level(gz) - b
    local dgrey = (dgr * dgr) + (dgg * dgg) + (dgb * dgb)
    local dr = M.rgb_level(gx) - r
    local dg = M.rgb_level(gy) - g
    local db = M.rgb_level(gz) - b
    local drgb = (dr * dr) + (dg * dg) + (db * db)
    if dgrey < drgb then
      -- use the grey
      return M.grey_color(gx)
    else
      -- use the color
      return M.rgb_color(x, y, z)
    end
  else
    -- only one possibility
    return M.rgb_color(x, y, z)
  end
end

-- returns the palette index to approximate the 'rrggbb' hex string
---@param rgb string color
function M.rgb(rgb)
  if M.is_empty_or_none(rgb) then
    return 'NONE'
  end
  local r = ("0x" .. string.sub(rgb, 2, 3)) + 0
  local g = ("0x" .. string.sub(rgb, 4, 5)) + 0
  local b = ("0x" .. string.sub(rgb, 6, 7)) + 0
  return M.color(r, g, b)
end

---@param colors Palette
function M.map_colors(colors)
  local ret = {}
  if type(colors) == "string" then
    ---@diagnostic disable-next-line: return-type-mismatch
    return M.rgb(colors)
  end
  for key, value in pairs(colors) do
    ret[key] = M.map_colors(value)
  end
  return ret
end

---@param highlights table
function M.map_highlight(highlights)
  local ret = {}
  for key, value in pairs(highlights) do
    if key == 'fg' then
        key = 'ctermfg'
    elseif key == 'bg' then
        key = 'ctermbg'
    end
    ret[key] = value
  end
  return ret
end

---@param highlights table
function M.map_highlights(highlights)
  local ret = {}
  for key, value in pairs(highlights) do
    ret[key] = M.map_highlight(value)
  end
  return ret
end


return M

