---@class tokyonight_merino.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias tokyonight_merino.Highlights table<string,tokyonight_merino.Highlight|string>

---@alias tokyonight_merino.HighlightsFn fun(colors: ColorScheme, opts:tokyonight_merino.Config):tokyonight_merino.Highlights

---@class tokyonight_merino.Cache
---@field groups tokyonight_merino.Highlights
---@field inputs table
