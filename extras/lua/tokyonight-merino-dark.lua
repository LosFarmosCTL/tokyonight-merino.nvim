local colors = {
  _name = "tokyonight-merino-dark",
  _style = "dark",
  bg = "#0d1117",
  bg_code = "#0a0e12",
  bg_dark = "#0a0e12",
  bg_dark1 = "#0a0d11",
  bg_float = "#0a0e12",
  bg_highlight = "#1a1e24",
  bg_inline = "#1c2026",
  bg_popup = "#0a0e12",
  bg_search = "#142134",
  bg_sidebar = "#0a0e12",
  bg_statusline = "#0a0e12",
  bg_visual = "#383d43",
  black = "#0d1117",
  blue = "#58a6ff",
  blue0 = "#142134",
  blue1 = "#39c5cf",
  blue2 = "#58a6ff",
  blue5 = "#79c0ff",
  blue6 = "#56d4dd",
  blue7 = "#58a6ff",
  border = "#2e3135",
  border_highlight = "#424549",
  comment = "#82878c",
  cursor = "#2f81f7",
  cursor_text = "#eff8ff",
  cyan = "#39c5cf",
  dark3 = "#666a6f",
  dark5 = "#82878c",
  diff = {
    add = "#162822",
    change = "#182536",
    delete = "#2e2125",
    text = "#253f5e"
  },
  error = "#ff7b72",
  fg = "#e6edf3",
  fg_dark = "#82878c",
  fg_float = "#e6edf3",
  fg_gutter = "#2e3135",
  fg_sidebar = "#82878c",
  git = {
    add = "#3fb950",
    change = "#58a6ff",
    delete = "#ff7b72",
    ignore = "#666a6f"
  },
  green = "#a3bd8d",
  green1 = "#80b7ad",
  green2 = "#3fb950",
  hint = "#39c5cf",
  info = "#58a6ff",
  magenta = "#d2a8ff",
  magenta2 = "#d2a8ff",
  none = "NONE",
  orange = "#e98a4a",
  purple = "#bc8cff",
  rainbow = { "#58a6ff", "#d29922", "#a3bd8d", "#39c5cf", "#d2a8ff", "#bc8cff", "#e98a4a", "#ff7b72" },
  red = "#ff7b72",
  red1 = "#ff7b72",
  teal = "#39c5cf",
  terminal = {
    black = "#484f58",
    black_bright = "#6e7681",
    blue = "#58a6ff",
    blue_bright = "#79c0ff",
    cyan = "#39c5cf",
    cyan_bright = "#56d4dd",
    green = "#3fb950",
    green_bright = "#56d364",
    magenta = "#bc8cff",
    magenta_bright = "#d2a8ff",
    red = "#ff7b72",
    red_bright = "#ffa198",
    white = "#b1bac4",
    white_bright = "#ffffff",
    yellow = "#d29922",
    yellow_bright = "#e3b341"
  },
  terminal_black = "#6e7681",
  todo = "#58a6ff",
  warning = "#d29922",
  yellow = "#d29922"
}

local highlights = {
  ["@annotation"] = "PreProc",
  ["@attribute"] = "PreProc",
  ["@boolean"] = "Boolean",
  ["@character"] = "Character",
  ["@character.printf"] = "SpecialChar",
  ["@character.special"] = "SpecialChar",
  ["@comment"] = "Comment",
  ["@comment.error"] = {
    fg = "#ff7b72"
  },
  ["@comment.hint"] = {
    fg = "#39c5cf"
  },
  ["@comment.info"] = {
    fg = "#58a6ff"
  },
  ["@comment.note"] = {
    fg = "#39c5cf"
  },
  ["@comment.todo"] = {
    fg = "#58a6ff"
  },
  ["@comment.warning"] = {
    fg = "#d29922"
  },
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.macro"] = "Define",
  ["@constructor"] = {
    fg = "#d2a8ff"
  },
  ["@constructor.tsx"] = {
    fg = "#39c5cf"
  },
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdd",
  ["@function"] = "Function",
  ["@function.builtin"] = "Special",
  ["@function.call"] = "@function",
  ["@function.macro"] = "Macro",
  ["@function.method"] = "Function",
  ["@function.method.call"] = "@function.method",
  ["@keyword"] = {
    fg = "#bc8cff",
    italic = true
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = "#d2a8ff"
  },
  ["@keyword.import"] = "Include",
  ["@keyword.operator"] = "@operator",
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = "#58a6ff"
  },
  ["@lsp.type.boolean"] = "@boolean",
  ["@lsp.type.builtinType"] = "@type.builtin",
  ["@lsp.type.comment"] = "@comment",
  ["@lsp.type.decorator"] = "@attribute",
  ["@lsp.type.deriveHelper"] = "@attribute",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.escapeSequence"] = "@string.escape",
  ["@lsp.type.formatSpecifier"] = "@markup.list",
  ["@lsp.type.generic"] = "@variable",
  ["@lsp.type.interface"] = {
    fg = "#6dd1da"
  },
  ["@lsp.type.keyword"] = "@keyword",
  ["@lsp.type.lifetime"] = "@keyword.storage",
  ["@lsp.type.namespace"] = "@module",
  ["@lsp.type.namespace.python"] = "@variable",
  ["@lsp.type.number"] = "@number",
  ["@lsp.type.operator"] = "@operator",
  ["@lsp.type.parameter"] = "@variable.parameter",
  ["@lsp.type.property"] = "@property",
  ["@lsp.type.selfKeyword"] = "@variable.builtin",
  ["@lsp.type.selfTypeKeyword"] = "@variable.builtin",
  ["@lsp.type.string"] = "@string",
  ["@lsp.type.typeAlias"] = "@type.definition",
  ["@lsp.type.unresolvedReference"] = {
    sp = "#ff7b72",
    undercurl = true
  },
  ["@lsp.type.variable"] = {},
  ["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
  ["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
  ["@lsp.typemod.keyword.injected"] = "@keyword",
  ["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.operator.injected"] = "@operator",
  ["@lsp.typemod.string.injected"] = "@string",
  ["@lsp.typemod.struct.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.type.defaultLibrary"] = {
    fg = "#30a1aa"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#30a1aa"
  },
  ["@lsp.typemod.variable.callable"] = "@function",
  ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
  ["@lsp.typemod.variable.injected"] = "@variable",
  ["@lsp.typemod.variable.static"] = "@constant",
  ["@markup"] = "@none",
  ["@markup.emphasis"] = {
    italic = true
  },
  ["@markup.environment"] = "Macro",
  ["@markup.environment.name"] = "Type",
  ["@markup.heading"] = "Title",
  ["@markup.heading.1.markdown"] = {
    bg = "#111823",
    bold = true,
    fg = "#58a6ff"
  },
  ["@markup.heading.2.markdown"] = {
    bg = "#171818",
    bold = true,
    fg = "#d29922"
  },
  ["@markup.heading.3.markdown"] = {
    bg = "#151a1d",
    bold = true,
    fg = "#a3bd8d"
  },
  ["@markup.heading.4.markdown"] = {
    bg = "#0f1a20",
    bold = true,
    fg = "#39c5cf"
  },
  ["@markup.heading.5.markdown"] = {
    bg = "#171923",
    bold = true,
    fg = "#d2a8ff"
  },
  ["@markup.heading.6.markdown"] = {
    bg = "#161723",
    bold = true,
    fg = "#bc8cff"
  },
  ["@markup.heading.7.markdown"] = {
    bg = "#18171a",
    bold = true,
    fg = "#e98a4a"
  },
  ["@markup.heading.8.markdown"] = {
    bg = "#19161c",
    bold = true,
    fg = "#ff7b72"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#39c5cf"
  },
  ["@markup.link.label"] = "SpecialChar",
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = "Underlined",
  ["@markup.list"] = {
    fg = "#79c0ff"
  },
  ["@markup.list.checked"] = {
    fg = "#80b7ad"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#e98a4a"
  },
  ["@markup.list.unchecked"] = {
    fg = "#58a6ff"
  },
  ["@markup.math"] = "Special",
  ["@markup.raw"] = "String",
  ["@markup.raw.markdown_inline"] = {
    bg = "#1c2026",
    fg = "#58a6ff"
  },
  ["@markup.strikethrough"] = {
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true
  },
  ["@markup.underline"] = {
    underline = true
  },
  ["@module"] = "Include",
  ["@module.builtin"] = {
    fg = "#ff7b72"
  },
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.float"] = "Float",
  ["@operator"] = {
    fg = "#79c0ff"
  },
  ["@property"] = {
    fg = "#80b7ad"
  },
  ["@punctuation.bracket"] = {
    fg = "#82878c"
  },
  ["@punctuation.delimiter"] = {
    fg = "#79c0ff"
  },
  ["@punctuation.special"] = {
    fg = "#79c0ff"
  },
  ["@punctuation.special.markdown"] = {
    fg = "#e98a4a"
  },
  ["@string"] = "String",
  ["@string.documentation"] = {
    fg = "#d29922"
  },
  ["@string.escape"] = {
    fg = "#d2a8ff"
  },
  ["@string.regexp"] = {
    fg = "#56d4dd"
  },
  ["@tag"] = "Label",
  ["@tag.attribute"] = "@property",
  ["@tag.delimiter"] = "Delimiter",
  ["@tag.delimiter.tsx"] = {
    fg = "#4279b9"
  },
  ["@tag.javascript"] = {
    fg = "#ff7b72"
  },
  ["@tag.tsx"] = {
    fg = "#ff7b72"
  },
  ["@type"] = "Type",
  ["@type.builtin"] = {
    fg = "#30a1aa"
  },
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = "#e6edf3"
  },
  ["@variable.builtin"] = {
    fg = "#ff7b72"
  },
  ["@variable.member"] = {
    fg = "#80b7ad"
  },
  ["@variable.parameter"] = {
    fg = "#d29922"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#d6aa4c"
  },
  ALEErrorSign = {
    fg = "#ff7b72"
  },
  ALEWarningSign = {
    fg = "#d29922"
  },
  AerialArrayIcon = "LspKindArray",
  AerialBooleanIcon = "LspKindBoolean",
  AerialClassIcon = "LspKindClass",
  AerialColorIcon = "LspKindColor",
  AerialConstantIcon = "LspKindConstant",
  AerialConstructorIcon = "LspKindConstructor",
  AerialEnumIcon = "LspKindEnum",
  AerialEnumMemberIcon = "LspKindEnumMember",
  AerialEventIcon = "LspKindEvent",
  AerialFieldIcon = "LspKindField",
  AerialFileIcon = "LspKindFile",
  AerialFolderIcon = "LspKindFolder",
  AerialFunctionIcon = "LspKindFunction",
  AerialGuide = {
    fg = "#2e3135"
  },
  AerialInterfaceIcon = "LspKindInterface",
  AerialKeyIcon = "LspKindKey",
  AerialKeywordIcon = "LspKindKeyword",
  AerialLine = "LspInlayHint",
  AerialMethodIcon = "LspKindMethod",
  AerialModuleIcon = "LspKindModule",
  AerialNamespaceIcon = "LspKindNamespace",
  AerialNormal = {
    bg = "NONE",
    fg = "#e6edf3"
  },
  AerialNullIcon = "LspKindNull",
  AerialNumberIcon = "LspKindNumber",
  AerialObjectIcon = "LspKindObject",
  AerialOperatorIcon = "LspKindOperator",
  AerialPackageIcon = "LspKindPackage",
  AerialPropertyIcon = "LspKindProperty",
  AerialReferenceIcon = "LspKindReference",
  AerialSnippetIcon = "LspKindSnippet",
  AerialStringIcon = "LspKindString",
  AerialStructIcon = "LspKindStruct",
  AerialTextIcon = "LspKindText",
  AerialTypeParameterIcon = "LspKindTypeParameter",
  AerialUnitIcon = "LspKindUnit",
  AerialValueIcon = "LspKindValue",
  AerialVariableIcon = "LspKindVariable",
  AlphaButtons = {
    fg = "#39c5cf"
  },
  AlphaFooter = {
    fg = "#39c5cf"
  },
  AlphaHeader = {
    fg = "#58a6ff"
  },
  AlphaHeaderLabel = {
    fg = "#e98a4a"
  },
  AlphaShortcut = {
    fg = "#e98a4a"
  },
  BlinkCmpDoc = {
    bg = "#0a0e12",
    fg = "#e6edf3"
  },
  BlinkCmpDocBorder = {
    bg = "#0a0e12",
    fg = "#424549"
  },
  BlinkCmpGhostText = {
    fg = "#6e7681"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#39c5cf"
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#39c5cf"
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#82878c"
  },
  BlinkCmpKindEnum = "LspKindEnum",
  BlinkCmpKindEnumMember = "LspKindEnumMember",
  BlinkCmpKindEvent = "LspKindEvent",
  BlinkCmpKindField = "LspKindField",
  BlinkCmpKindFile = "LspKindFile",
  BlinkCmpKindFolder = "LspKindFolder",
  BlinkCmpKindFunction = "LspKindFunction",
  BlinkCmpKindInterface = "LspKindInterface",
  BlinkCmpKindKey = "LspKindKey",
  BlinkCmpKindKeyword = "LspKindKeyword",
  BlinkCmpKindMethod = "LspKindMethod",
  BlinkCmpKindModule = "LspKindModule",
  BlinkCmpKindNamespace = "LspKindNamespace",
  BlinkCmpKindNull = "LspKindNull",
  BlinkCmpKindNumber = "LspKindNumber",
  BlinkCmpKindObject = "LspKindObject",
  BlinkCmpKindOperator = "LspKindOperator",
  BlinkCmpKindPackage = "LspKindPackage",
  BlinkCmpKindProperty = "LspKindProperty",
  BlinkCmpKindReference = "LspKindReference",
  BlinkCmpKindSnippet = "LspKindSnippet",
  BlinkCmpKindString = "LspKindString",
  BlinkCmpKindStruct = "LspKindStruct",
  BlinkCmpKindSupermaven = {
    bg = "NONE",
    fg = "#39c5cf"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#39c5cf"
  },
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#e6edf3"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#2e3135",
    strikethrough = true
  },
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#39c5cf"
  },
  BlinkCmpMenu = {
    bg = "#0a0e12",
    fg = "#e6edf3"
  },
  BlinkCmpMenuBorder = {
    bg = "#0a0e12",
    fg = "#424549"
  },
  BlinkCmpMenuSelection = {
    bg = "#383d43"
  },
  BlinkCmpSignatureHelp = {
    bg = "#0a0e12",
    fg = "#e6edf3"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#0a0e12",
    fg = "#424549"
  },
  Bold = {
    bold = true,
    fg = "#e6edf3"
  },
  BufferAlternate = {
    bg = "#2e3135",
    fg = "#e6edf3"
  },
  BufferAlternateADDED = {
    bg = "#2e3135",
    fg = "#3fb950"
  },
  BufferAlternateCHANGED = {
    bg = "#2e3135",
    fg = "#58a6ff"
  },
  BufferAlternateDELETED = {
    bg = "#2e3135",
    fg = "#ff7b72"
  },
  BufferAlternateERROR = {
    bg = "#2e3135",
    fg = "#ff7b72"
  },
  BufferAlternateHINT = {
    bg = "#2e3135",
    fg = "#39c5cf"
  },
  BufferAlternateINFO = {
    bg = "#2e3135",
    fg = "#58a6ff"
  },
  BufferAlternateIndex = {
    bg = "#2e3135",
    fg = "#58a6ff"
  },
  BufferAlternateMod = {
    bg = "#2e3135",
    fg = "#d29922"
  },
  BufferAlternateSign = {
    bg = "#2e3135",
    fg = "#58a6ff"
  },
  BufferAlternateTarget = {
    bg = "#2e3135",
    fg = "#ff7b72"
  },
  BufferAlternateWARN = {
    bg = "#2e3135",
    fg = "#d29922"
  },
  BufferCurrent = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  BufferCurrentADDED = {
    bg = "#0d1117",
    fg = "#3fb950"
  },
  BufferCurrentCHANGED = {
    bg = "#0d1117",
    fg = "#58a6ff"
  },
  BufferCurrentDELETED = {
    bg = "#0d1117",
    fg = "#ff7b72"
  },
  BufferCurrentERROR = {
    bg = "#0d1117",
    fg = "#ff7b72"
  },
  BufferCurrentHINT = {
    bg = "#0d1117",
    fg = "#39c5cf"
  },
  BufferCurrentINFO = {
    bg = "#0d1117",
    fg = "#58a6ff"
  },
  BufferCurrentIndex = {
    bg = "#0d1117",
    fg = "#58a6ff"
  },
  BufferCurrentMod = {
    bg = "#0d1117",
    fg = "#d29922"
  },
  BufferCurrentSign = {
    bg = "#0d1117",
    fg = "#0d1117"
  },
  BufferCurrentTarget = {
    bg = "#0d1117",
    fg = "#ff7b72"
  },
  BufferCurrentWARN = {
    bg = "#0d1117",
    fg = "#d29922"
  },
  BufferInactive = {
    bg = "#12161c",
    fg = "#6b6f75"
  },
  BufferInactiveADDED = {
    bg = "#12161c",
    fg = "#359745"
  },
  BufferInactiveCHANGED = {
    bg = "#12161c",
    fg = "#4988d1"
  },
  BufferInactiveDELETED = {
    bg = "#12161c",
    fg = "#cf6660"
  },
  BufferInactiveERROR = {
    bg = "#12161c",
    fg = "#cf6660"
  },
  BufferInactiveHINT = {
    bg = "#12161c",
    fg = "#30a1aa"
  },
  BufferInactiveINFO = {
    bg = "#12161c",
    fg = "#4988d1"
  },
  BufferInactiveIndex = {
    bg = "#12161c",
    fg = "#82878c"
  },
  BufferInactiveMod = {
    bg = "#12161c",
    fg = "#ab7e20"
  },
  BufferInactiveSign = {
    bg = "#12161c",
    fg = "#0d1117"
  },
  BufferInactiveTarget = {
    bg = "#12161c",
    fg = "#ff7b72"
  },
  BufferInactiveWARN = {
    bg = "#12161c",
    fg = "#ab7e20"
  },
  BufferLineIndicatorSelected = {
    fg = "#58a6ff"
  },
  BufferOffset = {
    bg = "#0a0e12",
    fg = "#82878c"
  },
  BufferTabpageFill = {
    bg = "#171b21",
    fg = "#82878c"
  },
  BufferTabpages = {
    bg = "#0a0e12",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#0a0e12",
    fg = "#e6edf3"
  },
  BufferVisibleADDED = {
    bg = "#0a0e12",
    fg = "#3fb950"
  },
  BufferVisibleCHANGED = {
    bg = "#0a0e12",
    fg = "#58a6ff"
  },
  BufferVisibleDELETED = {
    bg = "#0a0e12",
    fg = "#ff7b72"
  },
  BufferVisibleERROR = {
    bg = "#0a0e12",
    fg = "#ff7b72"
  },
  BufferVisibleHINT = {
    bg = "#0a0e12",
    fg = "#39c5cf"
  },
  BufferVisibleINFO = {
    bg = "#0a0e12",
    fg = "#58a6ff"
  },
  BufferVisibleIndex = {
    bg = "#0a0e12",
    fg = "#58a6ff"
  },
  BufferVisibleMod = {
    bg = "#0a0e12",
    fg = "#d29922"
  },
  BufferVisibleSign = {
    bg = "#0a0e12",
    fg = "#58a6ff"
  },
  BufferVisibleTarget = {
    bg = "#0a0e12",
    fg = "#ff7b72"
  },
  BufferVisibleWARN = {
    bg = "#0a0e12",
    fg = "#d29922"
  },
  Character = {
    fg = "#a3bd8d"
  },
  CmpDocumentation = {
    bg = "#0a0e12",
    fg = "#e6edf3"
  },
  CmpDocumentationBorder = {
    bg = "#0a0e12",
    fg = "#424549"
  },
  CmpGhostText = {
    fg = "#6e7681"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#e6edf3"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#2e3135",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#39c5cf"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#39c5cf"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#39c5cf"
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#39c5cf"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#82878c"
  },
  CmpItemKindEnum = "LspKindEnum",
  CmpItemKindEnumMember = "LspKindEnumMember",
  CmpItemKindEvent = "LspKindEvent",
  CmpItemKindField = "LspKindField",
  CmpItemKindFile = "LspKindFile",
  CmpItemKindFolder = "LspKindFolder",
  CmpItemKindFunction = "LspKindFunction",
  CmpItemKindInterface = "LspKindInterface",
  CmpItemKindKey = "LspKindKey",
  CmpItemKindKeyword = "LspKindKeyword",
  CmpItemKindMethod = "LspKindMethod",
  CmpItemKindModule = "LspKindModule",
  CmpItemKindNamespace = "LspKindNamespace",
  CmpItemKindNull = "LspKindNull",
  CmpItemKindNumber = "LspKindNumber",
  CmpItemKindObject = "LspKindObject",
  CmpItemKindOperator = "LspKindOperator",
  CmpItemKindPackage = "LspKindPackage",
  CmpItemKindProperty = "LspKindProperty",
  CmpItemKindReference = "LspKindReference",
  CmpItemKindSnippet = "LspKindSnippet",
  CmpItemKindString = "LspKindString",
  CmpItemKindStruct = "LspKindStruct",
  CmpItemKindSupermaven = {
    bg = "NONE",
    fg = "#39c5cf"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#39c5cf"
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#82878c"
  },
  CodeBlock = {
    bg = "#0a0e12"
  },
  CodeiumSuggestion = {
    fg = "#6e7681"
  },
  ColorColumn = {
    bg = "#0d1117"
  },
  Comment = {
    fg = "#82878c",
    italic = true
  },
  ComplHint = {
    fg = "#6e7681"
  },
  Conceal = {
    fg = "#82878c"
  },
  Constant = {
    fg = "#e98a4a"
  },
  CopilotAnnotation = {
    fg = "#6e7681"
  },
  CopilotSuggestion = {
    fg = "#6e7681"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#2f81f7",
    fg = "#eff8ff"
  },
  CursorColumn = {
    bg = "#1a1e24"
  },
  CursorIM = {
    bg = "#2f81f7",
    fg = "#eff8ff"
  },
  CursorLine = {
    bg = "#1a1e24"
  },
  CursorLineNr = {
    bold = true,
    fg = "#e98a4a"
  },
  DapStoppedLine = {
    bg = "#211f18"
  },
  DashboardDesc = {
    fg = "#39c5cf"
  },
  DashboardFiles = {
    fg = "#58a6ff"
  },
  DashboardFooter = {
    fg = "#39c5cf"
  },
  DashboardHeader = {
    fg = "#58a6ff"
  },
  DashboardIcon = {
    fg = "#39c5cf"
  },
  DashboardKey = {
    fg = "#e98a4a"
  },
  DashboardMruIcon = {
    fg = "#bc8cff"
  },
  DashboardMruTitle = {
    fg = "#39c5cf"
  },
  DashboardProjectIcon = {
    fg = "#d29922"
  },
  DashboardProjectTitle = {
    fg = "#39c5cf"
  },
  DashboardProjectTitleIcon = {
    fg = "#e98a4a"
  },
  DashboardShortCut = {
    fg = "#39c5cf"
  },
  DashboardShortCutIcon = {
    fg = "#d2a8ff"
  },
  Debug = {
    fg = "#e98a4a"
  },
  DefinitionCount = {
    fg = "#bc8cff"
  },
  DefinitionIcon = {
    fg = "#58a6ff"
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#ff7b72"
  },
  DiagnosticHint = {
    fg = "#39c5cf"
  },
  DiagnosticInfo = {
    fg = "#58a6ff"
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticUnderlineError = {
    sp = "#ff7b72",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#39c5cf",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#58a6ff",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#d29922",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#6e7681"
  },
  DiagnosticVirtualTextError = {
    bg = "#251c20",
    fg = "#ff7b72"
  },
  DiagnosticVirtualTextHint = {
    bg = "#112329",
    fg = "#39c5cf"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#15202e",
    fg = "#58a6ff"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#211f18",
    fg = "#d29922"
  },
  DiagnosticWarn = {
    fg = "#d29922"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#162822"
  },
  DiffChange = {
    bg = "#182536"
  },
  DiffDelete = {
    bg = "#2e2125"
  },
  DiffText = {
    bg = "#253f5e"
  },
  Directory = {
    fg = "#58a6ff"
  },
  EndOfBuffer = {
    fg = "#0d1117"
  },
  Error = {
    fg = "#ff7b72"
  },
  ErrorMsg = {
    fg = "#ff7b72"
  },
  FlashBackdrop = {
    fg = "#666a6f"
  },
  FlashLabel = {
    bg = "#d2a8ff",
    bold = true,
    fg = "#e6edf3"
  },
  FloatBorder = {
    bg = "#0a0e12",
    fg = "#424549"
  },
  FloatTitle = {
    bg = "#0a0e12",
    fg = "#424549"
  },
  FoldColumn = {
    bg = "#0d1117",
    fg = "#82878c"
  },
  Folded = {
    bg = "#2e3135",
    fg = "#58a6ff"
  },
  Foo = {
    bg = "#d2a8ff",
    fg = "#e6edf3"
  },
  Function = {
    fg = "#58a6ff"
  },
  FzfLuaBorder = {
    bg = "#0a0e12",
    fg = "#424549"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#82878c"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#e6edf3"
  },
  FzfLuaFzfPointer = {
    fg = "#d2a8ff"
  },
  FzfLuaFzfSeparator = {
    bg = "#0a0e12",
    fg = "#e98a4a"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#0a0e12",
    fg = "#e6edf3"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#0a0e12",
    fg = "#424549"
  },
  FzfLuaTitle = {
    bg = "#0a0e12",
    fg = "#e98a4a"
  },
  GitGutterAdd = {
    fg = "#3fb950"
  },
  GitGutterAddLineNr = {
    fg = "#3fb950"
  },
  GitGutterChange = {
    fg = "#58a6ff"
  },
  GitGutterChangeLineNr = {
    fg = "#58a6ff"
  },
  GitGutterDelete = {
    fg = "#ff7b72"
  },
  GitGutterDeleteLineNr = {
    fg = "#ff7b72"
  },
  GitSignsAdd = {
    fg = "#3fb950"
  },
  GitSignsChange = {
    fg = "#58a6ff"
  },
  GitSignsDelete = {
    fg = "#ff7b72"
  },
  GlyphPalette1 = {
    fg = "#ff7b72"
  },
  GlyphPalette2 = {
    fg = "#a3bd8d"
  },
  GlyphPalette3 = {
    fg = "#d29922"
  },
  GlyphPalette4 = {
    fg = "#58a6ff"
  },
  GlyphPalette6 = {
    fg = "#80b7ad"
  },
  GlyphPalette7 = {
    fg = "#e6edf3"
  },
  GlyphPalette9 = {
    fg = "#ff7b72"
  },
  GrugFarHelpHeader = {
    fg = "#82878c"
  },
  GrugFarHelpHeaderKey = {
    fg = "#39c5cf"
  },
  GrugFarInputLabel = {
    fg = "#39c5cf"
  },
  GrugFarInputPlaceholder = {
    fg = "#666a6f"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#58a6ff"
  },
  GrugFarResultsHeader = {
    fg = "#e98a4a"
  },
  GrugFarResultsLineColumn = {
    fg = "#666a6f"
  },
  GrugFarResultsLineNo = {
    fg = "#666a6f"
  },
  GrugFarResultsMatch = {
    bg = "#ff7b72",
    fg = "#0d1117"
  },
  GrugFarResultsStats = {
    fg = "#58a6ff"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#111823"
  },
  Headline2 = {
    bg = "#171818"
  },
  Headline3 = {
    bg = "#151a1d"
  },
  Headline4 = {
    bg = "#0f1a20"
  },
  Headline5 = {
    bg = "#171923"
  },
  Headline6 = {
    bg = "#161723"
  },
  Headline7 = {
    bg = "#18171a"
  },
  Headline8 = {
    bg = "#19161c"
  },
  HopNextKey = {
    bold = true,
    fg = "#d2a8ff"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#58a6ff"
  },
  HopNextKey2 = {
    fg = "#3a6aa2"
  },
  HopUnmatched = {
    fg = "#666a6f"
  },
  IblIndent = {
    fg = "#2e3135",
    nocombine = true
  },
  IblScope = {
    fg = "#39c5cf",
    nocombine = true
  },
  Identifier = {
    fg = "#d2a8ff"
  },
  IlluminatedWordRead = {
    bg = "#2e3135"
  },
  IlluminatedWordText = {
    bg = "#2e3135"
  },
  IlluminatedWordWrite = {
    bg = "#2e3135"
  },
  IncSearch = {
    bg = "#e98a4a",
    fg = "#0d1117"
  },
  IndentBlanklineChar = {
    fg = "#2e3135",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#39c5cf",
    nocombine = true
  },
  IndentLine = {
    fg = "#2e3135",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#39c5cf",
    nocombine = true
  },
  Italic = {
    fg = "#e6edf3",
    italic = true
  },
  Keyword = {
    fg = "#39c5cf",
    italic = true
  },
  LazyProgressDone = {
    bold = true,
    fg = "#d2a8ff"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#2e3135"
  },
  LeapBackdrop = {
    fg = "#666a6f"
  },
  LeapLabel = {
    bold = true,
    fg = "#d2a8ff"
  },
  LeapMatch = {
    bg = "#d2a8ff",
    bold = true,
    fg = "#e6edf3"
  },
  LineNr = {
    fg = "#666a6f"
  },
  LineNrAbove = {
    fg = "#666a6f"
  },
  LineNrBelow = {
    fg = "#666a6f"
  },
  LspCodeLens = {
    fg = "#82878c"
  },
  LspFloatWinBorder = {
    fg = "#424549"
  },
  LspFloatWinNormal = {
    bg = "#0a0e12"
  },
  LspInfoBorder = {
    bg = "#0a0e12",
    fg = "#424549"
  },
  LspInlayHint = {
    bg = "#15202e",
    fg = "#666a6f"
  },
  LspKindArray = "@punctuation.bracket",
  LspKindBoolean = "@boolean",
  LspKindClass = "@type",
  LspKindColor = "Special",
  LspKindConstant = "@constant",
  LspKindConstructor = "@constructor",
  LspKindEnum = "@lsp.type.enum",
  LspKindEnumMember = "@lsp.type.enumMember",
  LspKindEvent = "Special",
  LspKindField = "@variable.member",
  LspKindFile = "Normal",
  LspKindFolder = "Directory",
  LspKindFunction = "@function",
  LspKindInterface = "@lsp.type.interface",
  LspKindKey = "@variable.member",
  LspKindKeyword = "@lsp.type.keyword",
  LspKindMethod = "@function.method",
  LspKindModule = "@module",
  LspKindNamespace = "@module",
  LspKindNull = "@constant.builtin",
  LspKindNumber = "@number",
  LspKindObject = "@constant",
  LspKindOperator = "@operator",
  LspKindPackage = "@module",
  LspKindProperty = "@property",
  LspKindReference = "@markup.link",
  LspKindSnippet = "Conceal",
  LspKindString = "@string",
  LspKindStruct = "@lsp.type.struct",
  LspKindText = "@markup",
  LspKindTypeParameter = "@lsp.type.typeParameter",
  LspKindUnit = "@lsp.type.struct",
  LspKindValue = "@string",
  LspKindVariable = "@variable",
  LspReferenceRead = {
    bg = "#2e3135"
  },
  LspReferenceText = {
    bg = "#2e3135"
  },
  LspReferenceWrite = {
    bg = "#2e3135"
  },
  LspSagaBorderTitle = {
    fg = "#39c5cf"
  },
  LspSagaCodeActionBorder = {
    fg = "#58a6ff"
  },
  LspSagaCodeActionContent = {
    fg = "#bc8cff"
  },
  LspSagaCodeActionTitle = {
    fg = "#39c5cf"
  },
  LspSagaDefPreviewBorder = {
    fg = "#a3bd8d"
  },
  LspSagaFinderSelection = {
    fg = "#383d43"
  },
  LspSagaHoverBorder = {
    fg = "#58a6ff"
  },
  LspSagaRenameBorder = {
    fg = "#a3bd8d"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#ff7b72"
  },
  LspSignatureActiveParameter = {
    bg = "#1e2329",
    bold = true
  },
  MarkviewCode = {
    bg = "#0a0e12"
  },
  MarkviewCodeFg = {
    fg = "#0a0e12"
  },
  MarkviewCodeInfo = {
    bg = "#0a0e12",
    fg = "#82878c"
  },
  MarkviewHeading1 = {
    bg = "#111823",
    bold = true,
    fg = "#58a6ff"
  },
  MarkviewHeading1Sign = "MarkviewPalette1Sign",
  MarkviewHeading2 = {
    bg = "#171818",
    bold = true,
    fg = "#d29922"
  },
  MarkviewHeading2Sign = "MarkviewPalette2Sign",
  MarkviewHeading3 = {
    bg = "#151a1d",
    bold = true,
    fg = "#a3bd8d"
  },
  MarkviewHeading3Sign = "MarkviewPalette3Sign",
  MarkviewHeading4 = {
    bg = "#0f1a20",
    bold = true,
    fg = "#39c5cf"
  },
  MarkviewHeading4Sign = "MarkviewPalette4Sign",
  MarkviewHeading5 = {
    bg = "#171923",
    bold = true,
    fg = "#d2a8ff"
  },
  MarkviewHeading5Sign = "MarkviewPalette5Sign",
  MarkviewHeading6 = {
    bg = "#161723",
    bold = true,
    fg = "#bc8cff"
  },
  MarkviewHeading6Sign = "MarkviewPalette6Sign",
  MarkviewIcon0 = {
    bg = "#0a0e12",
    fg = "#82878c"
  },
  MarkviewIcon1 = {
    bg = "#0a0e12",
    fg = "#58a6ff"
  },
  MarkviewIcon2 = {
    bg = "#0a0e12",
    fg = "#d29922"
  },
  MarkviewIcon3 = {
    bg = "#0a0e12",
    fg = "#a3bd8d"
  },
  MarkviewIcon4 = {
    bg = "#0a0e12",
    fg = "#39c5cf"
  },
  MarkviewIcon5 = {
    bg = "#0a0e12",
    fg = "#d2a8ff"
  },
  MarkviewIcon6 = {
    bg = "#0a0e12",
    fg = "#bc8cff"
  },
  MarkviewInlineCode = {
    bg = "#1c2026",
    fg = "#58a6ff"
  },
  MarkviewPalette0 = {
    bg = "#13171d",
    fg = "#82878c"
  },
  MarkviewPalette0Fg = {
    fg = "#82878c"
  },
  MarkviewPalette0Sign = {
    fg = "#82878c"
  },
  MarkviewPalette1 = {
    bg = "#111823",
    fg = "#58a6ff"
  },
  MarkviewPalette1Fg = {
    fg = "#58a6ff"
  },
  MarkviewPalette1Sign = {
    fg = "#58a6ff"
  },
  MarkviewPalette2 = {
    bg = "#171818",
    fg = "#d29922"
  },
  MarkviewPalette2Fg = {
    fg = "#d29922"
  },
  MarkviewPalette2Sign = {
    fg = "#d29922"
  },
  MarkviewPalette3 = {
    bg = "#151a1d",
    fg = "#a3bd8d"
  },
  MarkviewPalette3Fg = {
    fg = "#a3bd8d"
  },
  MarkviewPalette3Sign = {
    fg = "#a3bd8d"
  },
  MarkviewPalette4 = {
    bg = "#0f1a20",
    fg = "#39c5cf"
  },
  MarkviewPalette4Fg = {
    fg = "#39c5cf"
  },
  MarkviewPalette4Sign = {
    fg = "#39c5cf"
  },
  MarkviewPalette5 = {
    bg = "#171923",
    fg = "#d2a8ff"
  },
  MarkviewPalette5Fg = {
    fg = "#d2a8ff"
  },
  MarkviewPalette5Sign = {
    fg = "#d2a8ff"
  },
  MarkviewPalette6 = {
    bg = "#161723",
    fg = "#bc8cff"
  },
  MarkviewPalette6Fg = {
    fg = "#bc8cff"
  },
  MarkviewPalette6Sign = {
    fg = "#bc8cff"
  },
  MarkviewPalette7 = {
    bg = "#18171a",
    fg = "#e98a4a"
  },
  MarkviewPalette7Fg = {
    fg = "#e98a4a"
  },
  MarkviewPalette7Sign = {
    fg = "#e98a4a"
  },
  MatchParen = {
    bold = true,
    fg = "#e98a4a"
  },
  MiniAnimateCursor = {
    nocombine = true,
    reverse = true
  },
  MiniAnimateNormalFloat = "NormalFloat",
  MiniClueBorder = "FloatBorder",
  MiniClueDescGroup = "DiagnosticFloatingWarn",
  MiniClueDescSingle = "NormalFloat",
  MiniClueNextKey = "DiagnosticFloatingHint",
  MiniClueNextKeyWithPostkeys = "DiagnosticFloatingError",
  MiniClueSeparator = "DiagnosticFloatingInfo",
  MiniClueTitle = "FloatTitle",
  MiniCompletionActiveParameter = {
    underline = true
  },
  MiniCursorword = {
    bg = "#2e3135"
  },
  MiniCursorwordCurrent = {
    bg = "#2e3135"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#ff7b72",
    fg = "#0d1117"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#3fb950",
    fg = "#0d1117"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#3fb950"
  },
  MiniDiffSignChange = {
    fg = "#58a6ff"
  },
  MiniDiffSignDelete = {
    fg = "#ff7b72"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#e6edf3"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#0a0e12",
    bold = true,
    fg = "#424549"
  },
  MiniHipatternsFixme = {
    bg = "#ff7b72",
    bold = true,
    fg = "#0d1117"
  },
  MiniHipatternsHack = {
    bg = "#d29922",
    bold = true,
    fg = "#0d1117"
  },
  MiniHipatternsNote = {
    bg = "#39c5cf",
    bold = true,
    fg = "#0d1117"
  },
  MiniHipatternsTodo = {
    bg = "#58a6ff",
    bold = true,
    fg = "#0d1117"
  },
  MiniIconsAzure = {
    fg = "#58a6ff"
  },
  MiniIconsBlue = {
    fg = "#58a6ff"
  },
  MiniIconsCyan = {
    fg = "#39c5cf"
  },
  MiniIconsGreen = {
    fg = "#a3bd8d"
  },
  MiniIconsGrey = {
    fg = "#e6edf3"
  },
  MiniIconsOrange = {
    fg = "#e98a4a"
  },
  MiniIconsPurple = {
    fg = "#bc8cff"
  },
  MiniIconsRed = {
    fg = "#ff7b72"
  },
  MiniIconsYellow = {
    fg = "#d29922"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#39c5cf",
    nocombine = true
  },
  MiniJump = {
    bg = "#d2a8ff",
    fg = "#ffffff"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#d2a8ff",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#0a0e12",
    fg = "#39c5cf",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#e98a4a",
    nocombine = true
  },
  MiniMapNormal = "NormalFloat",
  MiniMapSymbolCount = "Special",
  MiniMapSymbolLine = "Title",
  MiniMapSymbolView = "Delimiter",
  MiniNotifyBorder = "FloatBorder",
  MiniNotifyNormal = "NormalFloat",
  MiniNotifyTitle = "FloatTitle",
  MiniOperatorsExchangeFrom = "IncSearch",
  MiniPickBorder = "FloatBorder",
  MiniPickBorderBusy = "DiagnosticFloatingWarn",
  MiniPickBorderText = {
    bg = "#0a0e12",
    fg = "#39c5cf"
  },
  MiniPickHeader = "DiagnosticFloatingHint",
  MiniPickIconDirectory = "Directory",
  MiniPickIconFile = "MiniPickNormal",
  MiniPickMatchCurrent = "CursorLine",
  MiniPickMatchMarked = "Visual",
  MiniPickMatchRanges = "DiagnosticFloatingHint",
  MiniPickNormal = "NormalFloat",
  MiniPickPreviewLine = "CursorLine",
  MiniPickPreviewRegion = "IncSearch",
  MiniPickPrompt = {
    bg = "#0a0e12",
    fg = "#58a6ff"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#d29922",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#58a6ff"
  },
  MiniStarterInactive = {
    fg = "#82878c",
    italic = true
  },
  MiniStarterItem = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  MiniStarterItemBullet = {
    fg = "#424549"
  },
  MiniStarterItemPrefix = {
    fg = "#d29922"
  },
  MiniStarterQuery = {
    fg = "#58a6ff"
  },
  MiniStarterSection = {
    fg = "#39c5cf"
  },
  MiniStatuslineDevinfo = {
    bg = "#2e3135",
    fg = "#82878c"
  },
  MiniStatuslineFileinfo = {
    bg = "#2e3135",
    fg = "#82878c"
  },
  MiniStatuslineFilename = {
    bg = "#1a1e24",
    fg = "#82878c"
  },
  MiniStatuslineInactive = {
    bg = "#0a0e12",
    fg = "#58a6ff"
  },
  MiniStatuslineModeCommand = {
    bg = "#d29922",
    bold = true,
    fg = "#0d1117"
  },
  MiniStatuslineModeInsert = {
    bg = "#a3bd8d",
    bold = true,
    fg = "#0d1117"
  },
  MiniStatuslineModeNormal = {
    bg = "#58a6ff",
    bold = true,
    fg = "#0d1117"
  },
  MiniStatuslineModeOther = {
    bg = "#39c5cf",
    bold = true,
    fg = "#0d1117"
  },
  MiniStatuslineModeReplace = {
    bg = "#ff7b72",
    bold = true,
    fg = "#0d1117"
  },
  MiniStatuslineModeVisual = {
    bg = "#d2a8ff",
    bold = true,
    fg = "#0d1117"
  },
  MiniSurround = {
    bg = "#e98a4a",
    fg = "#0d1117"
  },
  MiniTablineCurrent = {
    bg = "#2e3135",
    fg = "#e6edf3"
  },
  MiniTablineFill = {
    bg = "#0d1117"
  },
  MiniTablineHidden = {
    bg = "#0a0e12",
    fg = "#82878c"
  },
  MiniTablineModifiedCurrent = {
    bg = "#2e3135",
    fg = "#d29922"
  },
  MiniTablineModifiedHidden = {
    bg = "#0a0e12",
    fg = "#97701f"
  },
  MiniTablineModifiedVisible = {
    bg = "#0a0e12",
    fg = "#d29922"
  },
  MiniTablineTabpagesection = {
    bg = "#2e3135",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#0a0e12",
    fg = "#e6edf3"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#ff7b72"
  },
  MiniTestPass = {
    bold = true,
    fg = "#a3bd8d"
  },
  MiniTrailspace = {
    bg = "#ff7b72"
  },
  ModeMsg = {
    bold = true,
    fg = "#82878c"
  },
  MoreMsg = {
    fg = "#58a6ff"
  },
  MsgArea = {
    fg = "#82878c"
  },
  NavicIconsArray = "LspKindArray",
  NavicIconsBoolean = "LspKindBoolean",
  NavicIconsClass = "LspKindClass",
  NavicIconsColor = "LspKindColor",
  NavicIconsConstant = "LspKindConstant",
  NavicIconsConstructor = "LspKindConstructor",
  NavicIconsEnum = "LspKindEnum",
  NavicIconsEnumMember = "LspKindEnumMember",
  NavicIconsEvent = "LspKindEvent",
  NavicIconsField = "LspKindField",
  NavicIconsFile = "LspKindFile",
  NavicIconsFolder = "LspKindFolder",
  NavicIconsFunction = "LspKindFunction",
  NavicIconsInterface = "LspKindInterface",
  NavicIconsKey = "LspKindKey",
  NavicIconsKeyword = "LspKindKeyword",
  NavicIconsMethod = "LspKindMethod",
  NavicIconsModule = "LspKindModule",
  NavicIconsNamespace = "LspKindNamespace",
  NavicIconsNull = "LspKindNull",
  NavicIconsNumber = "LspKindNumber",
  NavicIconsObject = "LspKindObject",
  NavicIconsOperator = "LspKindOperator",
  NavicIconsPackage = "LspKindPackage",
  NavicIconsProperty = "LspKindProperty",
  NavicIconsReference = "LspKindReference",
  NavicIconsSnippet = "LspKindSnippet",
  NavicIconsString = "LspKindString",
  NavicIconsStruct = "LspKindStruct",
  NavicIconsText = "LspKindText",
  NavicIconsTypeParameter = "LspKindTypeParameter",
  NavicIconsUnit = "LspKindUnit",
  NavicIconsValue = "LspKindValue",
  NavicIconsVariable = "LspKindVariable",
  NavicSeparator = {
    bg = "NONE",
    fg = "#e6edf3"
  },
  NavicText = {
    bg = "NONE",
    fg = "#e6edf3"
  },
  NeoTreeDimText = {
    fg = "#2e3135"
  },
  NeoTreeFileName = {
    fg = "#82878c"
  },
  NeoTreeGitModified = {
    fg = "#e98a4a"
  },
  NeoTreeGitStaged = {
    fg = "#80b7ad"
  },
  NeoTreeGitUntracked = {
    fg = "#d2a8ff"
  },
  NeoTreeNormal = {
    bg = "#0a0e12",
    fg = "#82878c"
  },
  NeoTreeNormalNC = {
    bg = "#0a0e12",
    fg = "#82878c"
  },
  NeoTreeTabActive = {
    bg = "#0a0e12",
    bold = true,
    fg = "#58a6ff"
  },
  NeoTreeTabInactive = {
    bg = "#080b0e",
    fg = "#666a6f"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#0a0e12",
    fg = "#58a6ff"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#080b0e",
    fg = "#0d1117"
  },
  NeogitBranch = {
    fg = "#d2a8ff"
  },
  NeogitDiffAddHighlight = {
    bg = "#162822",
    fg = "#3fb950"
  },
  NeogitDiffContextHighlight = {
    bg = "#1e2126",
    fg = "#82878c"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#2e2125",
    fg = "#ff7b72"
  },
  NeogitHunkHeader = {
    bg = "#1a1e24",
    fg = "#e6edf3"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#2e3135",
    fg = "#58a6ff"
  },
  NeogitRemote = {
    fg = "#bc8cff"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#bc8cff"
  },
  NeotestBorder = {
    fg = "#58a6ff"
  },
  NeotestDir = {
    fg = "#58a6ff"
  },
  NeotestExpandMarker = {
    fg = "#82878c"
  },
  NeotestFailed = {
    fg = "#ff7b72"
  },
  NeotestFile = {
    fg = "#39c5cf"
  },
  NeotestFocused = {
    fg = "#d29922"
  },
  NeotestIndent = {
    fg = "#82878c"
  },
  NeotestMarked = {
    fg = "#58a6ff"
  },
  NeotestNamespace = {
    fg = "#3fb950"
  },
  NeotestPassed = {
    fg = "#a3bd8d"
  },
  NeotestRunning = {
    fg = "#d29922"
  },
  NeotestSkipped = {
    fg = "#58a6ff"
  },
  NeotestTarget = {
    fg = "#58a6ff"
  },
  NeotestTest = {
    fg = "#82878c"
  },
  NeotestWinSelect = {
    fg = "#58a6ff"
  },
  NoiceCmdlineIconInput = {
    fg = "#d29922"
  },
  NoiceCmdlineIconLua = {
    fg = "#39c5cf"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#d29922"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#39c5cf"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#d29922"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#39c5cf"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#82878c"
  },
  NoiceCompletionItemKindEnum = "LspKindEnum",
  NoiceCompletionItemKindEnumMember = "LspKindEnumMember",
  NoiceCompletionItemKindEvent = "LspKindEvent",
  NoiceCompletionItemKindField = "LspKindField",
  NoiceCompletionItemKindFile = "LspKindFile",
  NoiceCompletionItemKindFolder = "LspKindFolder",
  NoiceCompletionItemKindFunction = "LspKindFunction",
  NoiceCompletionItemKindInterface = "LspKindInterface",
  NoiceCompletionItemKindKey = "LspKindKey",
  NoiceCompletionItemKindKeyword = "LspKindKeyword",
  NoiceCompletionItemKindMethod = "LspKindMethod",
  NoiceCompletionItemKindModule = "LspKindModule",
  NoiceCompletionItemKindNamespace = "LspKindNamespace",
  NoiceCompletionItemKindNull = "LspKindNull",
  NoiceCompletionItemKindNumber = "LspKindNumber",
  NoiceCompletionItemKindObject = "LspKindObject",
  NoiceCompletionItemKindOperator = "LspKindOperator",
  NoiceCompletionItemKindPackage = "LspKindPackage",
  NoiceCompletionItemKindProperty = "LspKindProperty",
  NoiceCompletionItemKindReference = "LspKindReference",
  NoiceCompletionItemKindSnippet = "LspKindSnippet",
  NoiceCompletionItemKindString = "LspKindString",
  NoiceCompletionItemKindStruct = "LspKindStruct",
  NoiceCompletionItemKindText = "LspKindText",
  NoiceCompletionItemKindTypeParameter = "LspKindTypeParameter",
  NoiceCompletionItemKindUnit = "LspKindUnit",
  NoiceCompletionItemKindValue = "LspKindValue",
  NoiceCompletionItemKindVariable = "LspKindVariable",
  NonText = {
    fg = "#666a6f"
  },
  Normal = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  NormalFloat = {
    bg = "#0a0e12",
    fg = "#e6edf3"
  },
  NormalNC = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  NormalSB = {
    bg = "#0a0e12",
    fg = "#82878c"
  },
  NotifyBackground = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  NotifyDEBUGBody = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  NotifyDEBUGBorder = {
    bg = "#0d1117",
    fg = "#30343a"
  },
  NotifyDEBUGIcon = {
    fg = "#82878c"
  },
  NotifyDEBUGTitle = {
    fg = "#82878c"
  },
  NotifyERRORBody = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  NotifyERRORBorder = {
    bg = "#0d1117",
    fg = "#563132"
  },
  NotifyERRORIcon = {
    fg = "#ff7b72"
  },
  NotifyERRORTitle = {
    fg = "#ff7b72"
  },
  NotifyINFOBody = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  NotifyINFOBorder = {
    bg = "#0d1117",
    fg = "#243e5d"
  },
  NotifyINFOIcon = {
    fg = "#58a6ff"
  },
  NotifyINFOTitle = {
    fg = "#58a6ff"
  },
  NotifyTRACEBody = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  NotifyTRACEBorder = {
    bg = "#0d1117",
    fg = "#42365d"
  },
  NotifyTRACEIcon = {
    fg = "#bc8cff"
  },
  NotifyTRACETitle = {
    fg = "#bc8cff"
  },
  NotifyWARNBody = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  NotifyWARNBorder = {
    bg = "#0d1117",
    fg = "#483a1a"
  },
  NotifyWARNIcon = {
    fg = "#d29922"
  },
  NotifyWARNTitle = {
    fg = "#d29922"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#58a6ff"
  },
  NvimTreeGitDeleted = {
    fg = "#ff7b72"
  },
  NvimTreeGitDirty = {
    fg = "#58a6ff"
  },
  NvimTreeGitNew = {
    fg = "#3fb950"
  },
  NvimTreeImageFile = {
    fg = "#82878c"
  },
  NvimTreeIndentMarker = {
    fg = "#2e3135"
  },
  NvimTreeNormal = {
    bg = "#0a0e12",
    fg = "#82878c"
  },
  NvimTreeNormalNC = {
    bg = "#0a0e12",
    fg = "#82878c"
  },
  NvimTreeOpenedFile = {
    bg = "#1a1e24"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#58a6ff"
  },
  NvimTreeSpecialFile = {
    fg = "#bc8cff",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#58a6ff"
  },
  NvimTreeWinSeparator = {
    bg = "#0a0e12",
    fg = "#0a0e12"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#39c5cf"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#e98a4a"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#bc8cff"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#21202e",
    fg = "#d2a8ff"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#39c5cf"
  },
  Operator = {
    fg = "#79c0ff"
  },
  Pmenu = {
    bg = "#0a0e12",
    fg = "#e6edf3"
  },
  PmenuMatch = {
    bg = "#0a0e12",
    fg = "#39c5cf"
  },
  PmenuMatchSel = {
    bg = "#272b2f",
    fg = "#39c5cf"
  },
  PmenuSbar = {
    bg = "#15191d"
  },
  PmenuSel = {
    bg = "#383d43"
  },
  PmenuThumb = {
    bg = "#2e3135"
  },
  PreProc = {
    fg = "#39c5cf"
  },
  Question = {
    fg = "#58a6ff"
  },
  QuickFixLine = {
    bg = "#383d43",
    bold = true
  },
  RainbowDelimiterBlue = {
    fg = "#58a6ff"
  },
  RainbowDelimiterCyan = {
    fg = "#39c5cf"
  },
  RainbowDelimiterGreen = {
    fg = "#a3bd8d"
  },
  RainbowDelimiterOrange = {
    fg = "#e98a4a"
  },
  RainbowDelimiterRed = {
    fg = "#ff7b72"
  },
  RainbowDelimiterViolet = {
    fg = "#bc8cff"
  },
  RainbowDelimiterYellow = {
    fg = "#d29922"
  },
  ReferencesCount = {
    fg = "#bc8cff"
  },
  ReferencesIcon = {
    fg = "#58a6ff"
  },
  RenderMarkdownBullet = {
    fg = "#e98a4a"
  },
  RenderMarkdownCode = {
    bg = "#0a0e12"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#e98a4a"
  },
  RenderMarkdownH1Bg = {
    bg = "#111823"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#58a6ff"
  },
  RenderMarkdownH2Bg = {
    bg = "#171818"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#d29922"
  },
  RenderMarkdownH3Bg = {
    bg = "#151a1d"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#a3bd8d"
  },
  RenderMarkdownH4Bg = {
    bg = "#0f1a20"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#39c5cf"
  },
  RenderMarkdownH5Bg = {
    bg = "#171923"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#d2a8ff"
  },
  RenderMarkdownH6Bg = {
    bg = "#161723"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#bc8cff"
  },
  RenderMarkdownH7Bg = {
    bg = "#18171a"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#e98a4a"
  },
  RenderMarkdownH8Bg = {
    bg = "#19161c"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#ff7b72"
  },
  RenderMarkdownTableHead = {
    fg = "#ff7b72"
  },
  RenderMarkdownTableRow = {
    fg = "#e98a4a"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#ff7b72"
  },
  ScrollbarErrorHandle = {
    bg = "#1a1e24",
    fg = "#ff7b72"
  },
  ScrollbarHandle = {
    bg = "#1a1e24",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#39c5cf"
  },
  ScrollbarHintHandle = {
    bg = "#1a1e24",
    fg = "#39c5cf"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#58a6ff"
  },
  ScrollbarInfoHandle = {
    bg = "#1a1e24",
    fg = "#58a6ff"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#bc8cff"
  },
  ScrollbarMiscHandle = {
    bg = "#1a1e24",
    fg = "#bc8cff"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#e98a4a"
  },
  ScrollbarSearchHandle = {
    bg = "#1a1e24",
    fg = "#e98a4a"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#d29922"
  },
  ScrollbarWarnHandle = {
    bg = "#1a1e24",
    fg = "#d29922"
  },
  Search = {
    bg = "#142134",
    fg = "#e6edf3"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#3fb950"
  },
  SidekickSignChange = {
    fg = "#58a6ff"
  },
  SidekickSignDelete = {
    fg = "#ff7b72"
  },
  SignColumn = {
    bg = "#0d1117",
    fg = "#2e3135"
  },
  SignColumnSB = {
    bg = "#0a0e12",
    fg = "#2e3135"
  },
  SnacksDashboardDesc = {
    fg = "#39c5cf"
  },
  SnacksDashboardDir = {
    fg = "#666a6f"
  },
  SnacksDashboardFooter = {
    fg = "#39c5cf"
  },
  SnacksDashboardHeader = {
    fg = "#58a6ff"
  },
  SnacksDashboardIcon = {
    fg = "#39c5cf"
  },
  SnacksDashboardKey = {
    fg = "#e98a4a"
  },
  SnacksDashboardSpecial = {
    fg = "#bc8cff"
  },
  SnacksDiffLabel = {
    bold = true,
    fg = "#39c5cf"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#112329",
    fg = "#39c5cf"
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#39c5cf"
  },
  SnacksIndent = {
    fg = "#2e3135",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#58a6ff",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#d29922",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#a3bd8d",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#39c5cf",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#d2a8ff",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#bc8cff",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#e98a4a",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#ff7b72",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#39c5cf",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#d29922"
  },
  SnacksInputIcon = {
    fg = "#39c5cf"
  },
  SnacksInputTitle = {
    fg = "#d29922"
  },
  SnacksNotifierBorderDebug = {
    bg = "#0d1117",
    fg = "#3c4046"
  },
  SnacksNotifierBorderError = {
    bg = "#0d1117",
    fg = "#6e3b3b"
  },
  SnacksNotifierBorderInfo = {
    bg = "#0d1117",
    fg = "#2b4d74"
  },
  SnacksNotifierBorderTrace = {
    bg = "#0d1117",
    fg = "#534274"
  },
  SnacksNotifierBorderWarn = {
    bg = "#0d1117",
    fg = "#5c471b"
  },
  SnacksNotifierDebug = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  SnacksNotifierError = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  SnacksNotifierIconDebug = {
    fg = "#82878c"
  },
  SnacksNotifierIconError = {
    fg = "#ff7b72"
  },
  SnacksNotifierIconInfo = {
    fg = "#58a6ff"
  },
  SnacksNotifierIconTrace = {
    fg = "#bc8cff"
  },
  SnacksNotifierIconWarn = {
    fg = "#d29922"
  },
  SnacksNotifierInfo = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  SnacksNotifierTitleDebug = {
    fg = "#82878c"
  },
  SnacksNotifierTitleError = {
    fg = "#ff7b72"
  },
  SnacksNotifierTitleInfo = {
    fg = "#58a6ff"
  },
  SnacksNotifierTitleTrace = {
    fg = "#bc8cff"
  },
  SnacksNotifierTitleWarn = {
    fg = "#d29922"
  },
  SnacksNotifierTrace = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  SnacksNotifierWarn = {
    bg = "#0d1117",
    fg = "#e6edf3"
  },
  SnacksPickerBoxTitle = {
    bg = "#0a0e12",
    fg = "#e98a4a"
  },
  SnacksPickerInputBorder = {
    bg = "#0a0e12",
    fg = "#e98a4a"
  },
  SnacksPickerInputTitle = {
    bg = "#0a0e12",
    fg = "#e98a4a"
  },
  SnacksPickerListCursorLine = {
    bg = "#383d43"
  },
  SnacksPickerPickWin = {
    bg = "#142134",
    bold = true,
    fg = "#e6edf3"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#d2a8ff",
    bold = true,
    fg = "#e6edf3"
  },
  SnacksPickerSelected = {
    fg = "#d2a8ff"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#112329",
    fg = "#39c5cf"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#15202e",
    fg = "#666a6f"
  },
  SnacksProfilerIconInfo = {
    bg = "#1a474e",
    fg = "#39c5cf"
  },
  SnacksProfilerIconTrace = {
    bg = "#243e5d",
    fg = "#666a6f"
  },
  SnacksZenIcon = {
    fg = "#bc8cff"
  },
  Sneak = {
    bg = "#d2a8ff",
    fg = "#1a1e24"
  },
  SneakScope = {
    bg = "#383d43"
  },
  Special = {
    fg = "#39c5cf"
  },
  SpecialKey = {
    fg = "#666a6f"
  },
  SpellBad = {
    sp = "#ff7b72",
    undercurl = true
  },
  SpellCap = {
    sp = "#d29922",
    undercurl = true
  },
  SpellLocal = {
    sp = "#58a6ff",
    undercurl = true
  },
  SpellRare = {
    sp = "#39c5cf",
    undercurl = true
  },
  Statement = {
    fg = "#d2a8ff"
  },
  StatusLine = {
    bg = "#0a0e12",
    fg = "#82878c"
  },
  StatusLineNC = {
    bg = "#0a0e12",
    fg = "#666a6f"
  },
  String = {
    fg = "#a3bd8d"
  },
  Substitute = {
    bg = "#ff7b72",
    fg = "#0d1117"
  },
  SupermavenSuggestion = {
    fg = "#6e7681"
  },
  TabLine = {
    bg = "#0a0e12",
    fg = "#666a6f"
  },
  TabLineFill = {
    bg = "#0d1117"
  },
  TabLineSel = {
    bg = "#58a6ff",
    fg = "#0d1117"
  },
  TargetWord = {
    fg = "#39c5cf"
  },
  TelescopeBorder = {
    bg = "#0a0e12",
    fg = "#424549"
  },
  TelescopeNormal = {
    bg = "#0a0e12",
    fg = "#e6edf3"
  },
  TelescopePromptBorder = {
    bg = "#0a0e12",
    fg = "#e98a4a"
  },
  TelescopePromptTitle = {
    bg = "#0a0e12",
    fg = "#e98a4a"
  },
  TelescopeResultsComment = {
    fg = "#666a6f"
  },
  TelescopeSelection = {
    bg = "#383d43",
    bold = true
  },
  Title = {
    bold = true,
    fg = "#58a6ff"
  },
  Todo = {
    bg = "#d29922",
    fg = "#0d1117"
  },
  TreesitterContext = {
    bg = "#272b2f"
  },
  TroubleCount = {
    bg = "#2e3135",
    fg = "#d2a8ff"
  },
  TroubleNormal = {
    bg = "#0a0e12",
    fg = "#e6edf3"
  },
  TroubleText = {
    fg = "#82878c"
  },
  Type = {
    fg = "#39c5cf"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#2e3135"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#d29922"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#58a6ff"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#d29922"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#a3bd8d"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#39c5cf"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#d2a8ff"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#bc8cff"
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#e98a4a"
  },
  VimwikiHeader8 = {
    bg = "NONE",
    bold = true,
    fg = "#ff7b72"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#d29922"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#58a6ff"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#e98a4a"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#58a6ff"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#a3bd8d"
  },
  Visual = {
    bg = "#383d43"
  },
  VisualNOS = {
    bg = "#383d43"
  },
  WarningMsg = {
    fg = "#d29922"
  },
  WhichKey = {
    fg = "#39c5cf"
  },
  WhichKeyDesc = {
    fg = "#d2a8ff"
  },
  WhichKeyGroup = {
    fg = "#58a6ff"
  },
  WhichKeyNormal = {
    bg = "#0a0e12"
  },
  WhichKeySeparator = {
    fg = "#82878c"
  },
  WhichKeyValue = {
    fg = "#82878c"
  },
  Whitespace = {
    fg = "#2e3135"
  },
  WildMenu = {
    bg = "#383d43"
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = "#2e3135"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  debugBreakpoint = {
    bg = "#15202e",
    fg = "#58a6ff"
  },
  debugPC = {
    bg = "#0a0e12"
  },
  diffAdded = {
    bg = "#162822",
    fg = "#3fb950"
  },
  diffChanged = {
    bg = "#182536",
    fg = "#58a6ff"
  },
  diffFile = {
    fg = "#58a6ff"
  },
  diffIndexLine = {
    fg = "#d2a8ff"
  },
  diffLine = {
    fg = "#82878c"
  },
  diffNewFile = {
    bg = "#162822",
    fg = "#39c5cf"
  },
  diffOldFile = {
    bg = "#2e2125",
    fg = "#39c5cf"
  },
  diffRemoved = {
    bg = "#2e2125",
    fg = "#ff7b72"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#ff7b72"
  },
  healthSuccess = {
    fg = "#80b7ad"
  },
  healthWarning = {
    fg = "#d29922"
  },
  helpCommand = {
    bg = "#1c2026",
    fg = "#58a6ff"
  },
  helpExample = {
    fg = "#82878c"
  },
  htmlH1 = {
    bold = true,
    fg = "#d2a8ff"
  },
  htmlH2 = {
    bold = true,
    fg = "#58a6ff"
  },
  illuminatedCurWord = {
    bg = "#2e3135"
  },
  illuminatedWord = {
    bg = "#2e3135"
  },
  lCursor = {
    bg = "#2f81f7",
    fg = "#eff8ff"
  },
  qfFileName = {
    fg = "#58a6ff"
  },
  qfLineNr = {
    fg = "#82878c"
  }
}

return colors, highlights
