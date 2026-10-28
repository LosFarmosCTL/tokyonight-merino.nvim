local util = require("tokyonight-merino.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tilix = util.template(
    [[
{
    "name": "${_style_name}",
    "comment": "",
    "use-theme-colors": false,
    "foreground-color": "${fg}",
    "background-color": "${bg}",
    "palette": [
        "${terminal.black}",
        "${terminal.red}",
        "${terminal.green}",
        "${terminal.yellow}",
        "${terminal.blue}",
        "${terminal.magenta}",
        "${terminal.cyan}",
        "${terminal.white}",
        "${terminal.black_bright}",
        "${terminal.red_bright}",
        "${terminal.green_bright}",
        "${terminal.yellow_bright}",
        "${terminal.blue_bright}",
        "${terminal.magenta_bright}",
        "${terminal.cyan_bright}",
        "${terminal.white_bright}"
    ]
}
  ]],
    colors
  )
  return tilix
end

return M
