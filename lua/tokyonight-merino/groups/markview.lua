local Util = require("tokyonight-merino.util")

local M = {}

M.url = "https://github.com/OXY2DEV/markview.nvim"

---@type tokyonight_merino.HighlightsFn
function M.get(c, opts)
  local code_bg = c.bg_code
  local ret = {
    MarkviewCode = { bg = code_bg },
    MarkviewCodeInfo = { fg = c.comment, bg = code_bg },
    MarkviewCodeFg = { fg = code_bg },
    MarkviewInlineCode = { fg = c.blue, bg = c.bg_inline },
  }

  local palette = { c.comment, c.blue, c.yellow, c.green, c.teal, c.magenta, c.purple, c.orange }
  for i, color in ipairs(palette) do
    local name = "MarkviewPalette" .. (i - 1)
    ret[name] = { fg = color, bg = opts.transparent and c.none or Util.blend_bg(color, 0.05) }
    ret[name .. "Fg"] = { fg = color }
    ret[name .. "Sign"] = { fg = color }
    if i <= 7 then
      ret["MarkviewIcon" .. (i - 1)] = { fg = color, bg = code_bg }
    end
  end
  for i = 1, 6 do
    ret["MarkviewHeading" .. i] = vim.tbl_extend("force", ret["MarkviewPalette" .. i], { bold = true })
    ret["MarkviewHeading" .. i .. "Sign"] = "MarkviewPalette" .. i .. "Sign"
  end
  return ret
end

return M
