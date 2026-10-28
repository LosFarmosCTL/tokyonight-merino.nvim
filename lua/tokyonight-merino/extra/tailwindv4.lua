local util = require("tokyonight-merino.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tailwindv4 = util.template(
    [[
@theme inline {
  --color-tokyonight-merino-${_style}-bg: oklch(from ${bg} l c h);
  --color-tokyonight-merino-${_style}-bg-dark: oklch(from ${bg_dark} l c h);
  --color-tokyonight-merino-${_style}-bg-dark1: oklch(from ${bg_dark1} l c h);
  --color-tokyonight-merino-${_style}-bg-float: oklch(from ${bg_float} l c h);
  --color-tokyonight-merino-${_style}-bg-highlight: oklch(from ${bg_highlight} l c h);
  --color-tokyonight-merino-${_style}-bg-popup: oklch(from ${bg_popup} l c h);
  --color-tokyonight-merino-${_style}-bg-search: var(--color-tokyonight-merino-${_style}-blue0);
  --color-tokyonight-merino-${_style}-bg-sidebar: oklch(from ${bg_sidebar} l c h);
  --color-tokyonight-merino-${_style}-bg-statusline: oklch(from ${bg_statusline} l c h);
  --color-tokyonight-merino-${_style}-bg-visual: oklch(from ${bg_visual} l c h);
  --color-tokyonight-merino-${_style}-black: oklch(from ${black} l c h);
  --color-tokyonight-merino-${_style}-black-bright: oklch(from ${terminal.black_bright} l c h);
  --color-tokyonight-merino-${_style}-blue: oklch(from ${blue} l c h);
  --color-tokyonight-merino-${_style}-blue-bright: oklch(from ${terminal.blue_bright} l c h);
  --color-tokyonight-merino-${_style}-blue0: oklch(from ${blue0} l c h);
  --color-tokyonight-merino-${_style}-blue1: oklch(from ${blue1} l c h);
  --color-tokyonight-merino-${_style}-blue2: oklch(from ${blue2} l c h);
  --color-tokyonight-merino-${_style}-blue5: oklch(from ${blue5} l c h);
  --color-tokyonight-merino-${_style}-blue6: oklch(from ${blue6} l c h);
  --color-tokyonight-merino-${_style}-blue7: oklch(from ${blue7} l c h);
  --color-tokyonight-merino-${_style}-border: oklch(from ${border} l c h);
  --color-tokyonight-merino-${_style}-border-highlight: oklch(from ${border_highlight} l c h);
  --color-tokyonight-merino-${_style}-comment: oklch(from ${comment} l c h);
  --color-tokyonight-merino-${_style}-cyan: oklch(from ${cyan} l c h);
  --color-tokyonight-merino-${_style}-cyan-bright: oklch(from ${terminal.cyan_bright} l c h);
  --color-tokyonight-merino-${_style}-dark3: oklch(from ${dark3} l c h);
  --color-tokyonight-merino-${_style}-dark5: oklch(from ${dark5} l c h);
  --color-tokyonight-merino-${_style}-diff-add: oklch(from ${diff.add} l c h);
  --color-tokyonight-merino-${_style}-diff-change: oklch(from ${diff.change} l c h);
  --color-tokyonight-merino-${_style}-diff-delete: oklch(from ${diff.delete} l c h);
  --color-tokyonight-merino-${_style}-diff-text: oklch(from ${diff.text} l c h);
  --color-tokyonight-merino-${_style}-error: var(--color-tokyonight-merino-${_style}-red1);
  --color-tokyonight-merino-${_style}-fg: oklch(from ${fg} l c h);
  --color-tokyonight-merino-${_style}-fg-dark: oklch(from ${fg_dark} l c h);
  --color-tokyonight-merino-${_style}-fg-float: var(--color-tokyonight-merino-${_style}-fg);
  --color-tokyonight-merino-${_style}-fg-gutter: oklch(from ${fg_gutter} l c h);
  --color-tokyonight-merino-${_style}-fg-sidebar: var(--color-tokyonight-merino-${_style}-fg-dark);
  --color-tokyonight-merino-${_style}-git-add: oklch(from ${git.add} l c h);
  --color-tokyonight-merino-${_style}-git-change: oklch(from ${git.change} l c h);
  --color-tokyonight-merino-${_style}-git-delete: oklch(from ${git.delete} l c h);
  --color-tokyonight-merino-${_style}-git-ignore: var(--color-tokyonight-merino-${_style}-dark3);
  --color-tokyonight-merino-${_style}-green: oklch(from ${green} l c h);
  --color-tokyonight-merino-${_style}-green-bright: oklch(from ${terminal.green_bright} l c h);
  --color-tokyonight-merino-${_style}-green1: oklch(from ${green1} l c h);
  --color-tokyonight-merino-${_style}-green2: oklch(from ${green2} l c h);
  --color-tokyonight-merino-${_style}-hint: var(--color-tokyonight-merino-${_style}-teal);
  --color-tokyonight-merino-${_style}-info: var(--color-tokyonight-merino-${_style}-blue2);
  --color-tokyonight-merino-${_style}-magenta: oklch(from ${magenta} l c h);
  --color-tokyonight-merino-${_style}-magenta-bright: oklch(from ${terminal.magenta_bright} l c h);
  --color-tokyonight-merino-${_style}-magenta2: oklch(from ${magenta2} l c h);
  --color-tokyonight-merino-${_style}-orange: oklch(from ${orange} l c h);
  --color-tokyonight-merino-${_style}-purple: oklch(from ${purple} l c h);
  --color-tokyonight-merino-${_style}-rainbow1: var(--color-tokyonight-merino-${_style}-blue);
  --color-tokyonight-merino-${_style}-rainbow2: var(--color-tokyonight-merino-${_style}-yellow);
  --color-tokyonight-merino-${_style}-rainbow3: var(--color-tokyonight-merino-${_style}-green);
  --color-tokyonight-merino-${_style}-rainbow4: var(--color-tokyonight-merino-${_style}-teal);
  --color-tokyonight-merino-${_style}-rainbow5: var(--color-tokyonight-merino-${_style}-magenta);
  --color-tokyonight-merino-${_style}-rainbow6: var(--color-tokyonight-merino-${_style}-purple);
  --color-tokyonight-merino-${_style}-rainbow7: var(--color-tokyonight-merino-${_style}-orange);
  --color-tokyonight-merino-${_style}-rainbow8: var(--color-tokyonight-merino-${_style}-red);
  --color-tokyonight-merino-${_style}-red: oklch(from ${red} l c h);
  --color-tokyonight-merino-${_style}-red-bright: oklch(from ${terminal.red_bright} l c h);
  --color-tokyonight-merino-${_style}-red1: oklch(from ${red1} l c h);
  --color-tokyonight-merino-${_style}-teal: oklch(from ${teal} l c h);
  --color-tokyonight-merino-${_style}-todo: var(--color-tokyonight-merino-${_style}-blue);
  --color-tokyonight-merino-${_style}-warning: var(--color-tokyonight-merino-${_style}-yellow);
  --color-tokyonight-merino-${_style}-yellow: oklch(from ${yellow} l c h);
  --color-tokyonight-merino-${_style}-yellow-bright: oklch(from ${terminal.yellow_bright} l c h);
}]],
    colors
  )

  return tailwindv4
end

return M
