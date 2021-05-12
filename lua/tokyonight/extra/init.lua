package.path = "./lua/?/init.lua;./lua/?.lua"

local config = require("tokyonight.config")
local kitty = require("tokyonight.extra.kitty")
local fish = require("tokyonight.extra.fish")
local alacritty = require("tokyonight.extra.alacritty")

local function write(str, fileName)
  print("[write] extra/" .. fileName)
  local file = io.open("extras/" .. fileName, "w")
  file:write(str)
  file:close()
end

config.style = "storm"

write(kitty.kitty(config), "kitty_tokyonight_storm.conf")
write(fish.fish(config), "fish_tokyonight_storm.fish")
write(alacritty.alacritty(config), "alacritty_tokyonight_storm.yml")

config.style = "night"

write(kitty.kitty(config), "kitty_tokyonight_night.conf")
write(fish.fish(config), "fish_tokyonight_night.fish")
write(alacritty.alacritty(config), "alacritty_tokyonight_night.yml")

config.style = "day"

write(kitty.kitty(config), "kitty_tokyonight_day.conf")
write(fish.fish(config), "fish_tokyonight_day.fish")
write(alacritty.alacritty(config), "alacritty_tokyonight_day.yml")
