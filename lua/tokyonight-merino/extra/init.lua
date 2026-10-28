local Util = require("tokyonight-merino.util")

local M = {}

-- map of plugin name to plugin extension
--- @type table<string, {ext:string, url:string, label:string, subdir?: string}>
-- stylua: ignore
M.extras = {
  aerc             = { ext = "ini", url = "https://git.sr.ht/~rjarry/aerc/", label = "Aerc" },
  aider            = { ext = "yml", url = "https://aider.chat", label = "Aider" },
  alacritty        = { ext = "toml", url = "https://github.com/alacritty/alacritty", label = "Alacritty" },
  btop             = { ext = "theme", url = "https://github.com/aristocratos/btop", label = "Btop++" },
  delta            = { ext = "gitconfig", url = "https://github.com/dandavison/delta", label = "Delta" },
  discord          = { ext = "css", url ="https://betterdiscord.app/", label = "(Better-)Discord"},
  dunst            = { ext = "dunstrc", url = "https://dunst-project.org/", label = "Dunst" },
  eza              = { ext = "yml", url = "https://eza.rocks", label = "eza" },
  fish             = { ext = "fish", url = "https://fishshell.com/docs/current/index.html", label = "Fish" },
  fish_themes      = { ext = "theme", url = "https://fishshell.com/docs/current/interactive.html#syntax-highlighting", label = "Fish Themes" },
  foot             = { ext = "ini", url = "https://codeberg.org/dnkl/foot", label = "Foot" },
  fuzzel           = { ext = "ini", url = "https://codeberg.org/dnkl/fuzzel", label = "Fuzzel" },
  fzf              = { ext = "sh", url = "https://github.com/junegunn/fzf", label = "Fzf" },
  gemini_cli       = { ext = "json", url = "https://github.com/google-gemini/gemini-cli", label = "Gemini CLI" },
  ghostty          = { ext = "", url = "https://github.com/ghostty-org/ghostty", label = "Ghostty" },
  gitui            = { ext = "ron", url = "https://github.com/extrawurst/gitui", label = "GitUI" },
  gnome_terminal   = { ext = "dconf", url = "https://gitlab.gnome.org/GNOME/gnome-terminal", label = "GNOME Terminal" },
  helix            = { ext = "toml", url = "https://helix-editor.com/", label = "Helix" },
  iterm            = { ext = "itermcolors", url = "https://iterm2.com/", label = "iTerm" },
  ish              = { ext = "json", url = "https://ish.app", label = "iSH"},
  kitty            = { ext = "conf", url = "https://sw.kovidgoyal.net/kitty/conf.html", label = "Kitty" },
  konsole          = { ext = "colorscheme", url = "https://konsole.kde.org/", label = "Konsole" },
  lazygit          = { ext = "yml", url = "https://github.com/jesseduffield/lazygit", label = "Lazygit" },
  lua              = { ext = "lua", url = "https://www.lua.org", label = "Lua palette and highlights" },
  opencode         = { ext = "json", url = "https://github.com/sst/opencode", label = "opencode" },
  pi               = { ext = "json", url = "https://github.com/badlogic/pi-mono", label = "pi" },
  prism            = { ext = "js", url = "https://prismjs.com", label = "Prism" },
  process_compose  = { ext = "yaml", url = "https://f1bonacc1.github.io/process-compose/", label = "process-compose" },
  qterminal        = { ext = "colorscheme", url = "https://github.com/lxqt/qterminal", label = "QTerminal" },
  slack            = { ext = "txt", url = "https://slack.com", label = "Slack" },
  st               = { ext = "h", url = "https://st.suckless.org/", label = "st" },
  sublime          = { ext = "tmTheme", url = "https://www.sublimetext.com/docs/themes", label = "Sublime Text" },
  spotify_player   = { ext = "toml", url = "https://github.com/aome510/spotify-player", label = "Spotify Player" },
  tailwindv4       = { ext = "css", url = "https://tailwindcss.com", label = "Tailwind CSS (v4)" },
  terminator       = { ext = "conf", url = "https://gnome-terminator.readthedocs.io/en/latest/config.html", label = "Terminator" },
  termux           = { ext = "properties", url = "https://termux.dev/", label = "Termux" },
  tilix            = { ext = "json", url = "https://github.com/gnunn1/tilix", label = "Tilix" },
  tmux             = { ext = "tmux", url = "https://github.com/tmux/tmux/wiki", label = "Tmux" },
  wezterm          = { ext = "toml", url = "https://wezfurlong.org/wezterm/config/files.html", label = "WezTerm" },
  windows_terminal = { ext = "json", url = "https://aka.ms/terminal-documentation", label = "Windows Terminal" },
  xfceterm         = { ext = "theme", url = "https://docs.xfce.org/apps/terminal/advanced", label = "Xfce Terminal" },
  xresources       = { ext = "Xresources", url = "https://wiki.archlinux.org/title/X_resources", label = "Xresources" },
  yazi             = { ext = "toml", url = "https://github.com/sxyazi/yazi", label = "Yazi" },
  vim              = { ext = "vim", url = "https://vimhelp.org/", label = "Vim", subdir = "colors" },
  vimium           = { ext = "css", url = "https://vimium.github.io/", label = "Vimium" },
  vivaldi          = { ext = "json", url = "https://vivaldi.com", label = "Vivaldi" },
  zathura          = { ext = "zathurarc", url = "https://pwmt.org/projects/zathura/", label = "Zathura" },
  zellij           = { ext = "kdl", url = "https://zellij.dev/", label = "Zellij" },
}

local repository = "https://github.com/LosFarmosCTL/tokyonight-merino"

---@param name string
---@param background string
function M.filename(name, background)
  local info = assert(M.extras[name], "Unknown extra: " .. name)
  assert(background == "dark" or background == "light", "Invalid appearance: " .. background)
  return name
    .. "/"
    .. (info.subdir and info.subdir .. "/" or "")
    .. "tokyonight-merino-"
    .. background
    .. (info.ext == "" and "" or "." .. info.ext)
end

---@param name string
---@param background string
---@param colors ColorScheme
---@param groups tokyonight_merino.Highlights
---@param opts tokyonight_merino.Config
function M.generate(name, background, colors, groups, opts)
  local filename = M.filename(name, background)
  colors = vim.deepcopy(colors)
  colors._name = "tokyonight-merino-" .. background
  colors._style = background
  colors._style_name = "TokyoNight Merino " .. (background == "dark" and "Dark" or "Light")
  colors._upstream_url = repository .. "/blob/main/extras/" .. filename
  local generator = require("tokyonight-merino.extra." .. name)
  local output = generator.generate(colors, vim.deepcopy(groups), vim.deepcopy(opts))
  assert(type(output) == "string" and #output > 0, "Empty extra: " .. name)
  assert(not output:find("%$%b{}"), "Unresolved template value in " .. filename)
  return output:gsub("%s+$", "") .. "\n"
end

M.vim_loader = [[" Generated by scripts/build. Merino follows Vim's background option.
execute 'source ' . fnameescape(expand('<sfile>:p:h') . '/tokyonight-merino-' . &background . '.vim')
]]

function M.readme()
  local lines = {
    "# TokyoNight Merino extras",
    "",
    "<!-- Generated by scripts/build; edit the extra registry or its readme() function. -->",
    "",
    "Merino exports for external applications. Each format has a light and a dark file.",
    "Terminal ANSI slots use Rex's explicit colors; syntax and UI exports use the same",
    "tuned Merino palette as Neovim. Application-specific roles are adaptations.",
    "",
    "Choose one appearance and import or include its file in the target application's",
    "configuration. These files do not automatically follow Rex or Neovim's appearance.",
    "Some are complete theme files; others are snippets to merge into an existing config.",
    "",
    "| Application | Dark | Light |",
    "| --- | --- | --- |",
  }
  local names = vim.tbl_keys(M.extras)
  table.sort(names)
  for _, name in ipairs(names) do
    local info = M.extras[name]
    lines[#lines + 1] = ("| [%s](%s) | [dark](%s) | [light](%s) |"):format(
      info.label,
      info.url,
      M.filename(name, "dark"),
      M.filename(name, "light")
    )
  end
  vim.list_extend(lines, {
    "",
    "## Usage notes",
    "",
    "- Terminal themes: import them with your emulator's theme settings. The Ghostty",
    "  [instructions](ghostty/README.md) include appearance-based selection.",
    "- Fish: source a file from `fish/`, or install a `fish_themes/` file with fish_config.",
    "- Git tools: merge the Lazygit YAML into its config; include Delta's gitconfig file.",
    "- Windows Terminal: add the JSON object to the `schemes` array in settings.json.",
    "- GNOME Terminal: replace `<PROFILE_UUID>` in the dconf file before importing.",
    "- Vivaldi: use the [packaging script](vivaldi/README.md) to create importable ZIPs.",
    "- Vim: use the [dispatcher](vim/README.md) for automatic light/dark selection.",
    "- st: replace the color definitions in config.h with the selected [header](st/README.md).",
    "- Lua: each file returns `colors, highlights` and can be loaded with dofile().",
    "",
    "## Regenerate",
    "",
    "After changing the palette, highlights, or generators, run `./scripts/build`.",
    "It reads the same Lua palette and highlights as Neovim, using the theme defaults,",
    "and updates every light and dark export. Run it from the repository root;",
    "it uses the upstream lazy.nvim bootstrap with dependencies under `.tests/`.",
    "The Update extras workflow also regenerates these files after changes land on",
    "`main`, opening or updating a PR when exports change.",
    "",
  })
  return table.concat(lines, "\n")
end

function M.setup()
  local root = vim.uv.cwd()
  require("tokyonight-merino").setup({ cache = false, plugins = { all = true, auto = false } })
  local files = {}
  for _, background in ipairs({ "dark", "light" }) do
    vim.o.background = background
    local colors, opts = require("tokyonight-merino.colors").setup()
    local groups = require("tokyonight-merino.groups").setup(colors, opts)
    for name in pairs(M.extras) do
      files[M.filename(name, background)] = M.generate(name, background, colors, groups, opts)
    end
  end
  files["vim/colors/tokyonight-merino.vim"] = M.vim_loader
  files["README.md"] = M.readme()

  local names = vim.tbl_keys(files)
  table.sort(names)
  for _, name in ipairs(names) do
    Util.write(root .. "/extras/" .. name, files[name])
  end
  -- Remove obsolete generated variants, leaving READMEs and tools alone.
  for _, path in ipairs(vim.fn.globpath(root .. "/extras", "**/tokyonight-merino*", true, true)) do
    local name = path:sub(#root + #"/extras/" + 1)
    if vim.fn.isdirectory(path) == 0 and not path:match("%.zip$") and not files[name] then
      assert((vim.uv or vim.loop).fs_unlink(path))
    end
  end
  print("Generated " .. #names .. " files for " .. vim.tbl_count(M.extras) .. " formats.")
end

M.setup()

return M
