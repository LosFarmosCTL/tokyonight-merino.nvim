# TokyoNight Merino

A Merino-only fork of [TokyoNight](https://github.com/folke/tokyonight.nvim) for
[Neovim](https://neovim.io), designed to fit Rex's built-in Merino Dark and
Merino Light themes.

It retains TokyoNight's syntax, Tree-sitter, LSP, diagnostic, and plugin
highlights, with Merino's neutral surfaces and a tuned syntax palette. One
colorscheme, `tokyonight-merino`, follows Neovim's `background` option. Rex is
not required to use it.

## Installation

Requires Neovim 0.10 or newer and true-color terminal support.

For [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "LosFarmosCTL/tokyonight-merino.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function(_, opts)
    require("tokyonight-merino").setup(opts)
    vim.cmd.colorscheme("tokyonight-merino")
  end,
}
```

With any plugin manager, the minimal setup is:

```lua
vim.cmd.colorscheme("tokyonight-merino")
```

Call `setup()` before loading the colorscheme when customizing it.

## Light and dark mode

```lua
vim.o.background = "light" -- or "dark"
vim.cmd.colorscheme("tokyonight-merino")
```

Changing `background` after loading the colorscheme switches palettes
automatically. Automatic appearance plugins can set the same option. The
colorscheme name stays `tokyonight-merino` in both modes.

## Configuration

```lua
require("tokyonight-merino").setup({
  transparent = false,
  terminal_colors = true, -- Use Merino's 16 ANSI colors in :terminal
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    -- Also accepts "normal" (editor background) or "transparent".
    sidebars = "dark",
    floats = "dark",
    statusline = "dark",
  },
  dim_inactive = false,
  lualine_bold = false,
  cache = true,
  plugins = {
    all = false, -- Defaults to true without lazy.nvim, false with it
    auto = true, -- Detect installed plugins through lazy.nvim
    -- Override individual plugins by group name or repository name:
    -- telescope = true,
    -- ["snacks.nvim"] = { enabled = true },
  },
  on_colors = function(colors) end,
  on_highlights = function(highlights, colors) end,
})
```

`styles.comments`, `keywords`, `functions`, and `variables` accept Neovim
highlight attributes. `styles.sidebars`, `floats`, and `statusline` control their
backgrounds independently of `transparent`. The statusline style also applies to
winbars and lualine, preserving lualine's colored mode badge. For a transparent
editor and UI, use `transparent = true` and set all three background styles to
`"transparent"`.

`on_colors` runs after building the palette;
`on_highlights` runs after generating highlights. Both can override defaults:

```lua
require("tokyonight-merino").setup({
  on_colors = function(colors)
    colors.comment = "#808080"
  end,
  on_highlights = function(highlights, colors)
    highlights.CursorLine = { bg = colors.bg_visual }
  end,
})
```

## Plugin integrations

The inherited plugin highlights cover Snacks, Telescope, blink.cmp, nvim-cmp,
Gitsigns, neo-tree, nvim-tree, Trouble, Noice, mini.nvim, and more. See the
[complete registry](lua/tokyonight-merino/groups/init.lua) and
[highlight modules](lua/tokyonight-merino/groups).

For lualine, set:

```lua
require("lualine").setup({ options = { theme = "tokyonight-merino" } })
```

For barbecue, set `theme = "tokyonight-merino"`. For lightline, use
`let g:lightline = {'colorscheme': 'tokyonight_merino'}`; its autoload identifier
uses an underscore for Vimscript compatibility.

## Migrating from TokyoNight

Use `require("tokyonight-merino")` for setup and
`colorscheme tokyonight-merino` to load the theme. Remove `style`, `light_style`,
and `day_brightness` options. Existing highlight overrides, plugin selections,
and surface settings can be kept. Use the integration names above for status
lines and breadcrumbs.

## Extras for other applications

The [extras catalogue](extras/README.md) includes **48 formats**, each with
Merino light and dark exports: terminal emulators, Fish, tmux, Lazygit, Delta,
Helix, Yazi, desktop tools, browsers, and more.

## Credits and license

Based on [TokyoNight by folke](https://github.com/folke/tokyonight.nvim),
originally inspired by [enkia's Tokyo Night](https://github.com/enkia/tokyo-night-vscode-theme).
The Merino source palette comes from [Superlogical Rex](https://www.superlogical.com/rex/).
This is an independent adaptation. The inherited code remains under the
[Apache 2.0 license](LICENSE).
