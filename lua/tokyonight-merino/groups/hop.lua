local Util = require("tokyonight-merino.util")

local M = {}

M.url = "https://github.com/phaazon/hop.nvim"

---@type tokyonight_merino.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    HopNextKey = { fg = c.magenta2, bold = true },
    HopNextKey1 = { fg = c.blue2, bold = true },
    HopNextKey2 = { fg = Util.blend_bg(c.blue2, 0.6) },
    HopUnmatched = { fg = c.dark3 },
  }
end

return M
