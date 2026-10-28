local Config = require("tokyonight-merino.config")

local M = {}

M.setup = Config.setup

---@param opts? tokyonight_merino.Config
function M.load(opts)
  return require("tokyonight-merino.theme").setup(opts)
end

return M
