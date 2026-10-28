local util = require("tokyonight-merino.util")

local M = {}

---@param colors ColorScheme
function M.generate(colors)
  colors = vim.deepcopy(colors)
  local aider = util.template(
    [[
assistant-output-color: "${fg}"

# see the aider extra README for more information about setting the `code-theme`
# https://github.com/LosFarmosCTL/tokyonight-merino/blob/main/extras/aider/README.md
# Keep a built-in code-theme of your choice; this export does not include a Pygments plugin.

completion-menu-color: "${fg_float}"
completion-menu-bg-color: "${bg_float}"
completion-menu-current-color: "${fg_float}"
completion-menu-current-bg-color: "${bg_highlight}"

tool-error-color: "${error}"
tool-output-color: "${blue}"
tool-warning-color: "${warning}"

user-input-color: "${green}"
]],
    colors
  )

  return aider
end

return M
