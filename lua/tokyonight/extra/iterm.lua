local function get_component(hex, component)
  hex = hex:gsub("#", "")
  local num
  if component == "r" then
    num = tonumber("0x" .. hex:sub(1, 2)) / 255
  elseif component == "g" then
    num = tonumber("0x" .. hex:sub(3, 4)) / 255
  elseif component == "b" then
    num = tonumber("0x" .. hex:sub(5, 6)) / 255
  end
  return string.format("%.16f", num)
end

local function template(str, table)
  return (str:gsub("($%b{})", function(w)
    return get_component(table[w:sub(3, -4)], w:sub(-2, -2))
  end))
end

local M = {}

function M.generate(colors)
  local iterm = template(
    [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>Ansi 0 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${black.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${black.g}</real>
		<key>Red Component</key>
		<real>${black.r}</real>
	</dict>
	<key>Ansi 1 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${red.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${red.g}</real>
		<key>Red Component</key>
		<real>${red.r}</real>
	</dict>
	<key>Ansi 10 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${green.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${green.g}</real>
		<key>Red Component</key>
		<real>${green.r}</real>
	</dict>
	<key>Ansi 11 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${yellow.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${yellow.g}</real>
		<key>Red Component</key>
		<real>${yellow.r}</real>
	</dict>
	<key>Ansi 12 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${blue.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${blue.g}</real>
		<key>Red Component</key>
		<real>${blue.r}</real>
	</dict>
	<key>Ansi 13 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${magenta.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${magenta.g}</real>
		<key>Red Component</key>
		<real>${magenta.r}</real>
	</dict>
	<key>Ansi 14 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${cyan.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${cyan.g}</real>
		<key>Red Component</key>
		<real>${cyan.r}</real>
	</dict>
	<key>Ansi 15 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${fg.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${fg.g}</real>
		<key>Red Component</key>
		<real>${fg.r}</real>
	</dict>
	<key>Ansi 2 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${green.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${green.g}</real>
		<key>Red Component</key>
		<real>${green.r}</real>
	</dict>
	<key>Ansi 3 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${yellow.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${yellow.g}</real>
		<key>Red Component</key>
		<real>${yellow.r}</real>
	</dict>
	<key>Ansi 4 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${blue.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${blue.g}</real>
		<key>Red Component</key>
		<real>${blue.r}</real>
	</dict>
	<key>Ansi 5 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${magenta.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${magenta.g}</real>
		<key>Red Component</key>
		<real>${magenta.r}</real>
	</dict>
	<key>Ansi 6 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${cyan.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${cyan.g}</real>
		<key>Red Component</key>
		<real>${cyan.r}</real>
	</dict>
	<key>Ansi 7 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${fg_dark.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${fg_dark.g}</real>
		<key>Red Component</key>
		<real>${fg_dark.r}</real>
	</dict>
	<key>Ansi 8 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${terminal_black.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${terminal_black.g}</real>
		<key>Red Component</key>
		<real>${terminal_black.r}</real>
	</dict>
	<key>Ansi 9 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${red.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${red.g}</real>
		<key>Red Component</key>
		<real>${red.r}</real>
	</dict>
	<key>Background Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${bg.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${bg.g}</real>
		<key>Red Component</key>
		<real>${bg.r}</real>
	</dict>
	<key>Badge Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>0.5</real>
		<key>Blue Component</key>
		<real>0.0</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>0.1491314172744751</real>
		<key>Red Component</key>
		<real>1</real>
	</dict>
	<key>Bold Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${teal.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${teal.g}</real>
		<key>Red Component</key>
		<real>${teal.r}</real>
	</dict>
	<key>Cursor Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${fg.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${fg.g}</real>
		<key>Red Component</key>
		<real>${fg.r}</real>
	</dict>
	<key>Cursor Guide Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>0.25</real>
		<key>Blue Component</key>
		<real>${fg.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${fg.g}</real>
		<key>Red Component</key>
		<real>${fg.r}</real>
	</dict>
	<key>Cursor Text Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${bg.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${bg.g}</real>
		<key>Red Component</key>
		<real>${bg.r}</real>
	</dict>
	<key>Foreground Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${fg.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${fg.g}</real>
		<key>Red Component</key>
		<real>${fg.r}</real>
	</dict>
	<key>Link Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${green1.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${green1.g}</real>
		<key>Red Component</key>
		<real>${green1.r}</real>
	</dict>
	<key>Selected Text Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${fg.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${fg.g}</real>
		<key>Red Component</key>
		<real>${fg.r}</real>
	</dict>
	<key>Selection Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>${bg_visual.b}</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>${bg_visual.g}</real>
		<key>Red Component</key>
		<real>${bg_visual.r}</real>
	</dict>
</dict>
</plist>]],
    colors
  )
  return iterm
end

return M
-- vim: sw=2
