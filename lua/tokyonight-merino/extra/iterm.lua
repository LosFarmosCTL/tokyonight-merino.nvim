local M = {}

---@param colors ColorScheme
function M.generate(colors)
  local lines = {
    '<?xml version="1.0" encoding="UTF-8"?>',
    '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">',
    '<plist version="1.0">',
    "<dict>",
  }
  local function color(name, hex)
    lines[#lines + 1] = "  <key>" .. name .. "</key>"
    lines[#lines + 1] = "  <dict><key>Color Space</key><string>sRGB</string><key>Alpha Component</key><real>1</real>"
    for index, component in ipairs({ "Red", "Green", "Blue" }) do
      local channel = tonumber(hex:sub(index * 2, index * 2 + 1), 16) / 255
      lines[#lines + 1] = ("    <key>%s Component</key><real>%.16f</real>"):format(component, channel)
    end
    lines[#lines + 1] = "  </dict>"
  end
  for index, name in ipairs({ "black", "red", "green", "yellow", "blue", "magenta", "cyan", "white" }) do
    color("Ansi " .. (index - 1) .. " Color", colors.terminal[name])
    color("Ansi " .. (index + 7) .. " Color", colors.terminal[name .. "_bright"])
  end
  color("Background Color", colors.bg)
  color("Foreground Color", colors.fg)
  color("Cursor Color", colors.cursor)
  color("Cursor Text Color", colors.cursor_text)
  color("Cursor Guide Color", colors.bg_highlight)
  color("Link Color", colors.green1)
  color("Selected Text Color", colors.fg)
  color("Selection Color", colors.bg_visual)
  lines[#lines + 1] = "</dict></plist>"
  return table.concat(lines, "\n")
end

return M
