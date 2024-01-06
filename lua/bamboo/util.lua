local util = {}

util.bg = '#000000'
util.fg = '#ffffff'

---Converts a hex color code string to a table of integer values
---@param hex_str string: Hex color code of the format `#rrggbb`
---@return table rgb: Table of {r, g, b} integers
local function hexToRgb(hex_str)
  local r, g, b = string.match(hex_str, '^#(%x%x)(%x%x)(%x%x)')
  assert(r, 'Invalid hex string: ' .. hex_str)
  return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

---Blends two hex colors, given a blending amount
---@param fg string: A hex color code of the format `#rrggbb`
---@param bg string: A hex color code of the format `#rrggbb`
---@param alpha number: A blending factor, between `0` and `1`.
---@return string hex: A blended hex color code of the format `#rrggbb`
function util.blend(fg, bg, alpha)
  local bg_rgb = hexToRgb(bg)
  local fg_rgb = hexToRgb(fg)

  local blendChannel = function(i)
    local ret = ((1 - alpha) * fg_rgb[i] + (alpha * bg_rgb[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format(
    '#%02X%02X%02X',
    blendChannel(1),
    blendChannel(2),
    blendChannel(3)
  )
end

---Darkens a color by a given amount
---@param hex string: The color to be darkened, of the form `#rrggbb`
---@param amount number: How much to darken the color by, between `0` and `1`
---@param bg string?: An optional custom darkening value
---@return string result: The darkened color
function util.darken(hex, amount, bg)
  return util.blend(hex, bg or util.bg, math.abs(amount))
end

---Lightens a color by a given amount
---@param hex string: The color to be lightened, of the form `#rrggbb`
---@param amount number: How much to lighten the color by, between `0` and `1`
---@param fg string?: An optional custom lightening value
---@return string result: The lightened color
function util.lighten(hex, amount, fg)
  return util.blend(hex, fg or util.fg, math.abs(amount))
end

return util
