local Util = require("tokyonight-merino.util")

local M = {}

M.url = "https://github.com/lukas-reineke/headlines.nvim"

---@type tokyonight_merino.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    CodeBlock = { bg = c.bg_code },
    Headline  = "Headline1",
  }
  for i, color in ipairs(c.rainbow) do
    ret["Headline" .. i] = { bg = opts.transparent and c.none or Util.blend_bg(color, 0.05) }
  end
  return ret
end

return M
