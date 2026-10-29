local Util = require("tokyonight-merino.util")

local M = {}

---@param opts? tokyonight_merino.Config
function M.setup(opts)
  opts = require("tokyonight-merino.config").extend(opts)
  local source = require("tokyonight-merino.palette")[vim.o.background]
  local ansi, ui = source.ansi, source.ui
  local light = vim.o.background == "light"

  -- TokyoNight gives sidebars, statuslines, popups, and floats one shared
  -- surface derived from the canvas. Rex's own pane tokens move by different
  -- amounts and in different directions, which reads as disjointed next to the
  -- editor background, so derive a single subtly sunken plane instead.
  local panel = Util.blend("#000000", light and 0.06 or 0.20, source.background)
  local panel_sunken = Util.blend("#000000", light and 0.04 or 0.05, panel)

  -- Preserve TokyoNight's syntax roles with Merino's surfaces and tuned accents.
  -- Bright light-theme ANSI colors stay in terminals where appropriate.
  ---@class Palette
  local colors = {
    bg = source.background,
    bg_dark = panel,
    bg_dark1 = panel_sunken,
    -- Transparent dark terminals need a stronger cursor line over their own backdrop.
    bg_highlight = Util.blend(ui.selected.color, light and 0.10 or opts.transparent and 0.14 or 0.06, source.background),
    fg = source.foreground,
    fg_dark = ui.text_secondary,
    fg_gutter = ui.border,
    comment = ui.text_secondary,
    dark3 = ui.text_tertiary,
    dark5 = ui.text_secondary,
    terminal_black = ansi[9],
    blue = ansi[5],
    blue0 = ui.accent_container,
    blue1 = ansi[7],
    blue2 = ui.info,
    blue5 = light and ansi[5] or ansi[13],
    blue6 = light and ansi[7] or ansi[15],
    blue7 = ui.info,
    cyan = ansi[7],
    -- Syntax needs quieter colors than terminal success/bright-green accents.
    green = light and ansi[3] or "#a3bd8d",
    green1 = light and "#39786c" or "#80b7ad",
    green2 = ui.success,
    magenta = light and ansi[6] or ansi[14],
    magenta2 = light and ansi[6] or ansi[14],
    orange = Util.blend(ansi[2], 0.5, ansi[4]),
    purple = ansi[6],
    red = ansi[2],
    red1 = ui.danger,
    teal = ansi[7],
    yellow = ansi[4],
    git = { add = ui.success, change = ui.info, delete = ui.danger, ignore = ui.text_tertiary },
  }

  Util.bg = colors.bg
  Util.fg = colors.fg

  ---@class ColorScheme: Palette
  colors.none = "NONE"
  colors.cursor = source.cursor
  colors.cursor_text = source.cursorText
  -- Also used as text on solid accents, so this is white in light mode.
  colors.black = source.background
  colors.border = ui.border
  colors.border_highlight = ui.border_strong
  colors.bg_popup = panel
  colors.bg_statusline = opts.styles.statusline == "transparent" and colors.none
    or opts.styles.statusline == "dark" and panel
    or colors.bg
  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
    or opts.styles.sidebars == "dark" and panel
    or colors.bg
  colors.bg_float = opts.styles.floats == "transparent" and colors.none
    or opts.styles.floats == "dark" and panel
    or colors.bg
  -- In-buffer highlights cannot use real alpha. Quiet neutral fills keep code
  -- readable in transparent terminals without the renderer's colorful fallback.
  colors.bg_code = opts.transparent and Util.blend(colors.fg, light and 0.04 or 0.10, colors.bg) or colors.bg_dark
  colors.bg_inline = Util.blend(colors.fg, light and 0.06 or opts.transparent and 0.13 or 0.07, colors.bg)
  -- Selected editor and picker rows need more emphasis than Rex's UI selection.
  colors.bg_visual = Util.blend(ui.selected.color, light and 0.22 or 0.20, colors.bg)
  colors.bg_search = ui.accent_container
  colors.fg_sidebar = colors.fg_dark
  colors.fg_float = colors.fg
  -- Diff fills share a canvas and contrast hierarchy rather than alert surfaces.
  -- Lift that canvas slightly in transparent terminals so fills do not sink
  -- below the terminal's visible backdrop.
  local diff_bg = opts.transparent and Util.blend(colors.fg, light and 0.025 or 0.06, colors.bg) or colors.bg
  colors.diff = {
    add = Util.blend(colors.green1, light and 0.15 or 0.20, diff_bg),
    delete = Util.blend(colors.red1, light and 0.13 or 0.18, diff_bg),
    change = Util.blend(colors.blue, 0.06, diff_bg),
    text = Util.blend(colors.blue, light and 0.19 or 0.24, diff_bg),
    filler = Util.blend(colors.comment, light and 0.35 or 0.32, diff_bg),
  }
  colors.error = colors.red1
  colors.todo = colors.blue
  colors.warning = colors.yellow
  colors.info = colors.blue2
  colors.hint = colors.teal
  colors.rainbow = {
    colors.blue,
    colors.yellow,
    colors.green,
    colors.teal,
    colors.magenta,
    colors.purple,
    colors.orange,
    colors.red,
  }

  -- Use Rex's explicit ANSI variants rather than generating bright colors.
  ---@class TerminalColors
  colors.terminal = {}
  for index, name in ipairs({ "black", "red", "green", "yellow", "blue", "magenta", "cyan", "white" }) do
    colors.terminal[name] = ansi[index]
    colors.terminal[name .. "_bright"] = ansi[index + 8]
  end

  opts.on_colors(colors)
  return colors, opts
end

return M
