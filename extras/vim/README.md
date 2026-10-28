# Merino for Vim

Clone the repository and add the exported Vim runtime to your `.vimrc`:

```vim
set termguicolors
set runtimepath+=/path/to/tokyonight-merino/extras/vim
colorscheme tokyonight-merino
```

The dispatcher selects `tokyonight-merino-dark.vim` or
`tokyonight-merino-light.vim` using `background`. Changing
`:set background=light` or `:set background=dark` switches the appearance.

For Neovim, use the repository's main Lua colorscheme instead. The Vim exports
contain classic highlight groups and do not require Lua.
