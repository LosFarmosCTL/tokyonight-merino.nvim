local Util = require("tokyonight-merino.util")

local M = {}

---@param colors ColorScheme
function M.generate(colors)
  local lines = {
    "/* " .. colors._style_name .. ": replace the color definitions in st's config.h. */",
    "static const char *colorname[] = {",
  }
  for _, suffix in ipairs({ "", "_bright" }) do
    for _, name in ipairs({ "black", "red", "green", "yellow", "blue", "magenta", "cyan", "white" }) do
      lines[#lines + 1] = '  "' .. colors.terminal[name .. suffix] .. '",'
    end
  end
  lines[#lines + 1] = Util.template(
    [[
  [255] = 0,
  "${cursor}",     /* 256: cursor */
  "${cursor_text}", /* 257: reverse cursor */
  "${fg}",         /* 258: default foreground */
  "${bg}",         /* 259: default background */
};

unsigned int defaultfg = 258;
unsigned int defaultbg = 259;
unsigned int defaultcs = 256;
static unsigned int defaultrcs = 257;
]],
    colors
  )
  return table.concat(lines, "\n")
end

return M
