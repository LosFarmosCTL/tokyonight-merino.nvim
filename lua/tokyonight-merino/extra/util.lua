local M = {}

-- Standard syntax groups inherit these links when not explicitly overridden.
local aliases = {
  Boolean = "Constant",
  Number = "Constant",
  Float = "Number",
  Conditional = "Statement",
  Repeat = "Statement",
  Exception = "Statement",
  Label = "Statement",
}

---@param groups tokyonight_merino.Highlights
---@param name string
---@return table?
function M.highlight(groups, name)
  local seen = {}
  while name do
    assert(not seen[name], "Highlight link cycle: " .. name)
    seen[name] = true
    local hl = groups[name]
    if type(hl) == "string" then
      name = hl
    elseif hl and hl.link then
      name = hl.link
    elseif hl then
      return hl
    else
      name = aliases[name]
    end
  end
end

return M
