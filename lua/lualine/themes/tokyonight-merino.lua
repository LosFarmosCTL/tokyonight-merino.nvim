local colors, config = require("tokyonight-merino.colors").setup()

local hl = {}

hl.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.blue },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

hl.insert = {
  a = { bg = colors.green, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.green },
}

hl.command = {
  a = { bg = colors.yellow, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.yellow },
}

hl.visual = {
  a = { bg = colors.magenta, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.magenta },
}

hl.replace = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.red },
}

hl.terminal = {
  a = { bg = colors.green1, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.green1 },
}

hl.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.dark3, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.dark3 },
}

if config.styles.statusline ~= "dark" then
  for name, mode in pairs(hl) do
    for section, color in pairs(mode) do
      if name == "inactive" or section ~= "a" then
        -- Match lualine's normalized component colors to avoid spurious separators.
        color.bg = colors.bg_statusline == colors.none and "None" or colors.bg_statusline
      end
    end
  end
end

if config.lualine_bold then
  for _, mode in pairs(hl) do
    mode.a.gui = "bold"
  end
end
return hl
