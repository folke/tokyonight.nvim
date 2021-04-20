local config = require("tokyonight.config")
local kitty = require("tokyonight.kitty")

local function write(str, fileName)
  local file = io.open("extra/" .. fileName, "w")
  file:write(str)
  file:close()
end

config.style = "storm"

write(kitty.kitty(config), "kitty_tokyonight_storm.conf")

config.style = "night"

write(kitty.kitty(config), "kitty_tokyonight_night.conf")
