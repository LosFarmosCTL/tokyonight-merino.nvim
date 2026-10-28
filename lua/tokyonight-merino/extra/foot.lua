local util = require("tokyonight-merino.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local footColors = { terminal = {} }
  for k, v in pairs(colors) do
    if type(v) == "string" then
      footColors[k] = v:gsub("^#", "")
    end
  end

  for key, value in pairs(colors.terminal) do
    footColors.terminal[key] = value:gsub("^#", "")
  end

  local foot = util.template(
    [[
[cursor]
color=${cursor_text} ${cursor}

[colors]
foreground=${fg}
background=${bg}
selection-foreground=${fg}
selection-background=${bg_visual}
urls=${green1}

regular0=${terminal.black}
regular1=${terminal.red}
regular2=${terminal.green}
regular3=${terminal.yellow}
regular4=${terminal.blue}
regular5=${terminal.magenta}
regular6=${terminal.cyan}
regular7=${terminal.white}

bright0=${terminal.black_bright}
bright1=${terminal.red_bright}
bright2=${terminal.green_bright}
bright3=${terminal.yellow_bright}
bright4=${terminal.blue_bright}
bright5=${terminal.magenta_bright}
bright6=${terminal.cyan_bright}
bright7=${terminal.white_bright}

16=${orange}
17=${red1}]],
    footColors
  )

  return foot
end

return M
