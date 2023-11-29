-- TODO: This is a *very* crude generator for itermcolors files. Must improve.
local M = {}

local function get_component(hex, component)
  hex = hex:gsub('#', '')
  local num
  if component == 'r' then
    num = tonumber('0x' .. hex:sub(1, 2)) / 255
  elseif component == 'g' then
    num = tonumber('0x' .. hex:sub(3, 4)) / 255
  elseif component == 'b' then
    num = tonumber('0x' .. hex:sub(5, 6)) / 255
  end
  return string.format('%.16f', num)
end

---@param variant 'vulgaris'|'multiplex'|'light'
function M.generate(variant)
  local palettes = require('bamboo.palette')
  local palette = palettes[variant]
  local file_suffix = variant == 'vulgaris' and '' or '_' .. variant

  local file =
    io.open('extras/iterm/bamboo' .. file_suffix .. '.itermcolors', 'w')
  if not file then
    return
  end

  file:write(
    string.format(
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
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 1 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 10 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 11 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 12 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 13 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 14 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 15 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 2 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 3 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 4 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 5 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 6 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 7 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 8 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Ansi 9 Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Background Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Badge Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>0.5</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Bold Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Cursor Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Cursor Guide Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>0.25</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Cursor Text Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Foreground Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Link Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Selected Text Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
	<key>Selection Color</key>
	<dict>
		<key>Alpha Component</key>
		<real>1</real>
		<key>Blue Component</key>
		<real>%s</real>
		<key>Color Space</key>
		<string>sRGB</string>
		<key>Green Component</key>
		<real>%s</real>
		<key>Red Component</key>
		<real>%s</real>
	</dict>
</dict>
</plist>]],
      get_component(palette.bg_d, 'b'),
      get_component(palette.bg_d, 'g'),
      get_component(palette.bg_d, 'r'),
      get_component(palette.red, 'b'),
      get_component(palette.red, 'g'),
      get_component(palette.red, 'r'),
      get_component(palette.green, 'b'),
      get_component(palette.green, 'g'),
      get_component(palette.green, 'r'),
      get_component(palette.yellow, 'b'),
      get_component(palette.yellow, 'g'),
      get_component(palette.yellow, 'r'),
      get_component(palette.blue, 'b'),
      get_component(palette.blue, 'g'),
      get_component(palette.blue, 'r'),
      get_component(palette.purple, 'b'),
      get_component(palette.purple, 'g'),
      get_component(palette.purple, 'r'),
      get_component(palette.cyan, 'b'),
      get_component(palette.cyan, 'g'),
      get_component(palette.cyan, 'r'),
      get_component(
        variant == 'light' and palettes.vulgaris.bg0 or '#fff8f0',
        'b'
      ),
      get_component(
        variant == 'light' and palettes.vulgaris.bg0 or '#fff8f0',
        'g'
      ),
      get_component(
        variant == 'light' and palettes.vulgaris.bg0 or '#fff8f0',
        'r'
      ),
      get_component(palette.green, 'b'),
      get_component(palette.green, 'g'),
      get_component(palette.green, 'r'),
      get_component(palette.yellow, 'b'),
      get_component(palette.yellow, 'g'),
      get_component(palette.yellow, 'r'),
      get_component(palette.blue, 'b'),
      get_component(palette.blue, 'g'),
      get_component(palette.blue, 'r'),
      get_component(palette.purple, 'b'),
      get_component(palette.purple, 'g'),
      get_component(palette.purple, 'r'),
      get_component(palette.cyan, 'b'),
      get_component(palette.cyan, 'g'),
      get_component(palette.cyan, 'r'),
      get_component(palette.fg, 'b'),
      get_component(palette.fg, 'g'),
      get_component(palette.fg, 'r'),
      get_component(palette.grey, 'b'),
      get_component(palette.grey, 'g'),
      get_component(palette.grey, 'r'),
      get_component(palette.red, 'b'),
      get_component(palette.red, 'g'),
      get_component(palette.red, 'r'),
      get_component(palette.bg0, 'b'),
      get_component(palette.bg0, 'g'),
      get_component(palette.bg0, 'r'),
      get_component(palette.red, 'b'),
      get_component(palette.red, 'g'),
      get_component(palette.red, 'r'),
      get_component(palette.purple, 'b'),
      get_component(palette.purple, 'g'),
      get_component(palette.purple, 'r'),
      get_component(palette.fg, 'b'),
      get_component(palette.fg, 'g'),
      get_component(palette.fg, 'r'),
      get_component(palette.fg, 'b'),
      get_component(palette.fg, 'g'),
      get_component(palette.fg, 'r'),
      get_component(palette.bg0, 'b'),
      get_component(palette.bg0, 'g'),
      get_component(palette.bg0, 'r'),
      get_component(palette.fg, 'b'),
      get_component(palette.fg, 'g'),
      get_component(palette.fg, 'r'),
      get_component(palette.cyan, 'b'),
      get_component(palette.cyan, 'g'),
      get_component(palette.cyan, 'r'),
      get_component(palette.fg, 'b'),
      get_component(palette.fg, 'g'),
      get_component(palette.fg, 'r'),
      get_component(palette.grey, 'b'),
      get_component(palette.grey, 'g'),
      get_component(palette.grey, 'r')
    )
  )

  file:close()
end

return M
