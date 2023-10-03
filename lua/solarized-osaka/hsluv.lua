--[[
Lua implementation of HSLuv and HPLuv color spaces
Homepage: http://www.hsluv.org/

Copyright (C) 2019 Alexei Boronine

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the "Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the
following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT
LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
]]
local hsluv = {}

local hexChars = "0123456789abcdef"

local distance_line_from_origin = function(line)
  return math.abs(line.intercept) / math.sqrt((line.slope ^ 2) + 1)
end

local length_of_ray_until_intersect = function(theta, line)
  return line.intercept / (math.sin(theta) - line.slope * math.cos(theta))
end

hsluv.get_bounds = function(l)
  local result = {}
  local sub2
  local sub1 = ((l + 16) ^ 3) / 1560896
  if sub1 > hsluv.epsilon then
    sub2 = sub1
  else
    sub2 = l / hsluv.kappa
  end

  for i = 1, 3 do
    local m1 = hsluv.m[i][1]
    local m2 = hsluv.m[i][2]
    local m3 = hsluv.m[i][3]

    for t = 0, 1 do
      local top1 = (284517 * m1 - 94839 * m3) * sub2
      local top2 = (838422 * m3 + 769860 * m2 + 731718 * m1) * l * sub2 - 769860 * t * l
      local bottom = (632260 * m3 - 126452 * m2) * sub2 + 126452 * t
      table.insert(result, { slope = top1 / bottom, intercept = top2 / bottom })
    end
  end
  return result
end

hsluv.max_safe_chroma_for_l = function(l)
  local bounds = hsluv.get_bounds(l)
  local min = 1.7976931348623157e+308

  for i = 1, 6 do
    local length = distance_line_from_origin(bounds[i])
    if length >= 0 then
      min = math.min(min, length)
    end
  end
  return min
end

hsluv.max_safe_chroma_for_lh = function(l, h)
  local hrad = h / 360 * math.pi * 2
  local bounds = hsluv.get_bounds(l)
  local min = 1.7976931348623157e+308

  for i = 1, 6 do
    local bound = bounds[i]
    local length = length_of_ray_until_intersect(hrad, bound)
    if length >= 0 then
      min = math.min(min, length)
    end
  end
  return min
end

hsluv.dot_product = function(a, b)
  local sum = 0
  for i = 1, 3 do
    sum = sum + a[i] * b[i]
  end
  return sum
end

hsluv.from_linear = function(c)
  if c <= 0.0031308 then
    return 12.92 * c
  else
    return 1.055 * (c ^ 0.416666666666666685) - 0.055
  end
end

hsluv.to_linear = function(c)
  if c > 0.04045 then
    return ((c + 0.055) / 1.055) ^ 2.4
  else
    return c / 12.92
  end
end

hsluv.xyz_to_rgb = function(tuple)
  return {
    hsluv.from_linear(hsluv.dot_product(hsluv.m[1], tuple)),
    hsluv.from_linear(hsluv.dot_product(hsluv.m[2], tuple)),
    hsluv.from_linear(hsluv.dot_product(hsluv.m[3], tuple)),
  }
end

hsluv.rgb_to_xyz = function(tuple)
  local rgbl = { hsluv.to_linear(tuple[1]), hsluv.to_linear(tuple[2]), hsluv.to_linear(tuple[3]) }
  return {
    hsluv.dot_product(hsluv.minv[1], rgbl),
    hsluv.dot_product(hsluv.minv[2], rgbl),
    hsluv.dot_product(hsluv.minv[3], rgbl),
  }
end

hsluv.y_to_l = function(Y)
  if Y <= hsluv.epsilon then
    return Y / hsluv.refY * hsluv.kappa
  else
    return 116 * ((Y / hsluv.refY) ^ 0.333333333333333315) - 16
  end
end

hsluv.l_to_y = function(L)
  if L <= 8 then
    return hsluv.refY * L / hsluv.kappa
  else
    return hsluv.refY * (((L + 16) / 116) ^ 3)
  end
end

hsluv.xyz_to_luv = function(tuple)
  local X = tuple[1]
  local Y = tuple[2]
  local divider = X + 15 * Y + 3 * tuple[3]
  local varU = 4 * X
  local varV = 9 * Y
  if divider ~= 0 then
    varU = varU / divider
    varV = varV / divider
  else
    varU = 0
    varV = 0
  end
  local L = hsluv.y_to_l(Y)
  if L == 0 then
    return { 0, 0, 0 }
  end
  return { L, 13 * L * (varU - hsluv.refU), 13 * L * (varV - hsluv.refV) }
end

hsluv.luv_to_xyz = function(tuple)
  local L = tuple[1]
  local U = tuple[2]
  local V = tuple[3]
  if L == 0 then
    return { 0, 0, 0 }
  end
  local varU = U / (13 * L) + hsluv.refU
  local varV = V / (13 * L) + hsluv.refV
  local Y = hsluv.l_to_y(L)
  local X = 0 - (9 * Y * varU) / (((varU - 4) * varV) - varU * varV)
  return { X, Y, (9 * Y - 15 * varV * Y - varV * X) / (3 * varV) }
end

hsluv.luv_to_lch = function(tuple)
  local L = tuple[1]
  local U = tuple[2]
  local V = tuple[3]
  local C = math.sqrt(U * U + V * V)
  local H
  if C < 0.00000001 then
    H = 0
  else
    H = math.atan2(V, U) * 180.0 / 3.1415926535897932
    if H < 0 then
      H = 360 + H
    end
  end
  return { L, C, H }
end

hsluv.lch_to_luv = function(tuple)
  local L = tuple[1]
  local C = tuple[2]
  local Hrad = tuple[3] / 360.0 * 2 * math.pi
  return { L, math.cos(Hrad) * C, math.sin(Hrad) * C }
end

hsluv.hsluv_to_lch = function(tuple)
  local H = tuple[1]
  local S = tuple[2]
  local L = tuple[3]
  if L > 99.9999999 then
    return { 100, 0, H }
  end
  if L < 0.00000001 then
    return { 0, 0, H }
  end
  return { L, hsluv.max_safe_chroma_for_lh(L, H) / 100 * S, H }
end

hsluv.lch_to_hsluv = function(tuple)
  local L = tuple[1]
  local C = tuple[2]
  local H = tuple[3]
  local max_chroma = hsluv.max_safe_chroma_for_lh(L, H)
  if L > 99.9999999 then
    return { H, 0, 100 }
  end
  if L < 0.00000001 then
    return { H, 0, 0 }
  end

  return { H, C / max_chroma * 100, L }
end

hsluv.hpluv_to_lch = function(tuple)
  local H = tuple[1]
  local S = tuple[2]
  local L = tuple[3]
  if L > 99.9999999 then
    return { 100, 0, H }
  end
  if L < 0.00000001 then
    return { 0, 0, H }
  end
  return { L, hsluv.max_safe_chroma_for_l(L) / 100 * S, H }
end

hsluv.lch_to_hpluv = function(tuple)
  local L = tuple[1]
  local C = tuple[2]
  local H = tuple[3]
  if L > 99.9999999 then
    return { H, 0, 100 }
  end
  if L < 0.00000001 then
    return { H, 0, 0 }
  end
  return { H, C / hsluv.max_safe_chroma_for_l(L) * 100, L }
end

hsluv.rgb_to_hex = function(tuple)
  local h = "#"
  for i = 1, 3 do
    local c = math.floor(tuple[i] * 255 + 0.5)
    local digit2 = math.fmod(c, 16)
    local x = (c - digit2) / 16
    local digit1 = math.floor(x)
    h = h .. string.sub(hexChars, digit1 + 1, digit1 + 1)
    h = h .. string.sub(hexChars, digit2 + 1, digit2 + 1)
  end
  return h
end

hsluv.hex_to_rgb = function(hex)
  hex = string.lower(hex)
  local ret = {}
  for i = 0, 2 do
    local char1 = string.sub(hex, i * 2 + 2, i * 2 + 2)
    local char2 = string.sub(hex, i * 2 + 3, i * 2 + 3)
    local digit1 = string.find(hexChars, char1) - 1
    local digit2 = string.find(hexChars, char2) - 1
    ret[i + 1] = (digit1 * 16 + digit2) / 255.0
  end
  return ret
end

hsluv.lch_to_rgb = function(tuple)
  return hsluv.xyz_to_rgb(hsluv.luv_to_xyz(hsluv.lch_to_luv(tuple)))
end

hsluv.rgb_to_lch = function(tuple)
  return hsluv.luv_to_lch(hsluv.xyz_to_luv(hsluv.rgb_to_xyz(tuple)))
end

hsluv.hsluv_to_rgb = function(tuple)
  return hsluv.lch_to_rgb(hsluv.hsluv_to_lch(tuple))
end

hsluv.rgb_to_hsluv = function(tuple)
  return hsluv.lch_to_hsluv(hsluv.rgb_to_lch(tuple))
end

hsluv.hpluv_to_rgb = function(tuple)
  return hsluv.lch_to_rgb(hsluv.hpluv_to_lch(tuple))
end

hsluv.rgb_to_hpluv = function(tuple)
  return hsluv.lch_to_hpluv(hsluv.rgb_to_lch(tuple))
end

hsluv.hsluv_to_hex = function(tuple)
  return hsluv.rgb_to_hex(hsluv.hsluv_to_rgb(tuple))
end

hsluv.hpluv_to_hex = function(tuple)
  return hsluv.rgb_to_hex(hsluv.hpluv_to_rgb(tuple))
end

hsluv.hex_to_hsluv = function(s)
  return hsluv.rgb_to_hsluv(hsluv.hex_to_rgb(s))
end

hsluv.hex_to_hpluv = function(s)
  return hsluv.rgb_to_hpluv(hsluv.hex_to_rgb(s))
end

hsluv.m = {
  { 3.240969941904521, -1.537383177570093, -0.498610760293 },
  { -0.96924363628087, 1.87596750150772, 0.041555057407175 },
  { 0.055630079696993, -0.20397695888897, 1.056971514242878 },
}
hsluv.minv = {
  { 0.41239079926595, 0.35758433938387, 0.18048078840183 },
  { 0.21263900587151, 0.71516867876775, 0.072192315360733 },
  { 0.019330818715591, 0.11919477979462, 0.95053215224966 },
}
hsluv.refY = 1.0
hsluv.refU = 0.19783000664283
hsluv.refV = 0.46831999493879
hsluv.kappa = 903.2962962
hsluv.epsilon = 0.0088564516

return hsluv
