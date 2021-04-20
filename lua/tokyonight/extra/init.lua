package.path = "./lua/?/init.lua;./lua/?.lua"

local config = require("tokyonight.config")
local kitty = require("tokyonight.extra.kitty")
local fish = require("tokyonight.extra.fish")

local function write(str, fileName)
  print("[write] extra/" .. fileName)
  local file = io.open("extras/" .. fileName, "w")
  file:write(str)
  file:close()
end

config.style = "storm"

write(kitty.kitty(config), "kitty_tokyonight_storm.conf")
write(fish.fish(config), "fish_tokyonight_storm.fish")

config.style = "night"

write(kitty.kitty(config), "kitty_tokyonight_night.conf")
write(fish.fish(config), "fish_tokyonight_night.fish")
