local util = require("tokyonight-merino.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  return util.template(M.template, colors)
end

M.template = [=[
[[themes]]
name = "${_style_name}"
[themes.palette]
background = "${bg_dark}"
foreground = "${fg_dark}"
black = "${terminal.black}"
red = "${terminal.red}"
green = "${terminal.green}"
yellow = "${terminal.yellow}"
blue = "${terminal.blue}"
magenta = "${terminal.magenta}"
cyan = "${terminal.cyan}"
white = "${terminal.white}"
bright_black = "${terminal.black_bright}"
bright_red = "${terminal.red_bright}"
bright_green = "${terminal.green_bright}"
bright_yellow = "${terminal.yellow_bright}"
bright_blue = "${terminal.blue_bright}"
bright_magenta = "${terminal.magenta_bright}"
bright_cyan = "${terminal.cyan_bright}"
bright_white = "${terminal.white_bright}"
]=]

return M
