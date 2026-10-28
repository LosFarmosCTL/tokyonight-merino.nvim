local util = require("tokyonight-merino.util")

local M = {}

-- @param colors ColorScheme
function M.generate(colors)
  local xfceterm = util.template(
    [[
[Scheme]
Name="${_name}"
ColorBackground=${bg}
ColorForeground=${fg}

ColorSelectionBackground=${bg_visual}
ColorSelection=${fg}

ColorPalette=${terminal.black};${terminal.red};${terminal.green};${terminal.yellow};${terminal.blue};${terminal.magenta};${terminal.cyan};${terminal.white};${terminal.black_bright};${terminal.red_bright};${terminal.green_bright};${terminal.yellow_bright};${terminal.blue_bright};${terminal.magenta_bright};${terminal.cyan_bright};${terminal.white_bright}
]],
    colors
  )
  return xfceterm
end

return M
