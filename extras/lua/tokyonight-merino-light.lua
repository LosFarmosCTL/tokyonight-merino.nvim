local colors = {
  _name = "tokyonight-merino-light",
  _style = "light",
  bg = "#ffffff",
  bg_code = "#f0f0f0",
  bg_dark = "#f0f0f0",
  bg_dark1 = "#e6e6e6",
  bg_float = "#f0f0f0",
  bg_highlight = "#e9e9ea",
  bg_inline = "#f2f2f2",
  bg_popup = "#f0f0f0",
  bg_search = "#e6effc",
  bg_sidebar = "#f0f0f0",
  bg_statusline = "#f0f0f0",
  bg_visual = "#cecfd0",
  black = "#ffffff",
  blue = "#0969da",
  blue0 = "#e6effc",
  blue1 = "#1b7c83",
  blue2 = "#0667d8",
  blue5 = "#0969da",
  blue6 = "#1b7c83",
  blue7 = "#0667d8",
  border = "#e7e9eb",
  border_highlight = "#d1d2d5",
  comment = "#696d71",
  cursor = "#0969da",
  cursor_text = "#b6d8ff",
  cyan = "#1b7c83",
  dark3 = "#878a8e",
  dark5 = "#696d71",
  diff = {
    add = "#e5ede6",
    change = "#e6effc",
    delete = "#fee9e7",
    text = "#b9d4f5"
  },
  error = "#cf222e",
  fg = "#1f2328",
  fg_dark = "#696d71",
  fg_float = "#1f2328",
  fg_gutter = "#e7e9eb",
  fg_sidebar = "#696d71",
  git = {
    add = "#116329",
    change = "#0667d8",
    delete = "#cf222e",
    ignore = "#878a8e"
  },
  green = "#116329",
  green1 = "#39786c",
  green2 = "#116329",
  hint = "#1b7c83",
  info = "#0667d8",
  magenta = "#8250df",
  magenta2 = "#8250df",
  none = "NONE",
  orange = "#b63f17",
  purple = "#8250df",
  rainbow = { "#0969da", "#9d5c00", "#116329", "#1b7c83", "#8250df", "#8250df", "#b63f17", "#cf222e" },
  red = "#cf222e",
  red1 = "#cf222e",
  teal = "#1b7c83",
  terminal = {
    black = "#24292f",
    black_bright = "#57606a",
    blue = "#0969da",
    blue_bright = "#218bff",
    cyan = "#1b7c83",
    cyan_bright = "#3192aa",
    green = "#116329",
    green_bright = "#1a7f37",
    magenta = "#8250df",
    magenta_bright = "#a475f9",
    red = "#cf222e",
    red_bright = "#a40e26",
    white = "#6e7781",
    white_bright = "#8c959f",
    yellow = "#9d5c00",
    yellow_bright = "#c47a00"
  },
  terminal_black = "#57606a",
  todo = "#0969da",
  warning = "#9d5c00",
  yellow = "#9d5c00"
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
    fg = "#cf222e"
  },
  ["@comment.hint"] = {
    fg = "#1b7c83"
  },
  ["@comment.info"] = {
    fg = "#0667d8"
  },
  ["@comment.note"] = {
    fg = "#1b7c83"
  },
  ["@comment.todo"] = {
    fg = "#0969da"
  },
  ["@comment.warning"] = {
    fg = "#9d5c00"
  },
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.macro"] = "Define",
  ["@constructor"] = {
    fg = "#8250df"
  },
  ["@constructor.tsx"] = {
    fg = "#1b7c83"
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
    fg = "#8250df",
    italic = true
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = "#8250df"
  },
  ["@keyword.import"] = "Include",
  ["@keyword.operator"] = "@operator",
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = "#0969da"
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
    fg = "#1c6168"
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
    sp = "#cf222e",
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
    fg = "#49969c"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#49969c"
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
    bg = "#f3f8fd",
    bold = true,
    fg = "#0969da"
  },
  ["@markup.heading.2.markdown"] = {
    bg = "#faf7f2",
    bold = true,
    fg = "#9d5c00"
  },
  ["@markup.heading.3.markdown"] = {
    bg = "#f3f7f4",
    bold = true,
    fg = "#116329"
  },
  ["@markup.heading.4.markdown"] = {
    bg = "#f4f8f9",
    bold = true,
    fg = "#1b7c83"
  },
  ["@markup.heading.5.markdown"] = {
    bg = "#f9f6fd",
    bold = true,
    fg = "#8250df"
  },
  ["@markup.heading.6.markdown"] = {
    bg = "#f9f6fd",
    bold = true,
    fg = "#8250df"
  },
  ["@markup.heading.7.markdown"] = {
    bg = "#fbf5f3",
    bold = true,
    fg = "#b63f17"
  },
  ["@markup.heading.8.markdown"] = {
    bg = "#fdf4f5",
    bold = true,
    fg = "#cf222e"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#1b7c83"
  },
  ["@markup.link.label"] = "SpecialChar",
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = "Underlined",
  ["@markup.list"] = {
    fg = "#0969da"
  },
  ["@markup.list.checked"] = {
    fg = "#39786c"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#b63f17"
  },
  ["@markup.list.unchecked"] = {
    fg = "#0969da"
  },
  ["@markup.math"] = "Special",
  ["@markup.raw"] = "String",
  ["@markup.raw.markdown_inline"] = {
    bg = "#f2f2f2",
    fg = "#0969da"
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
    fg = "#cf222e"
  },
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.float"] = "Float",
  ["@operator"] = {
    fg = "#0969da"
  },
  ["@property"] = {
    fg = "#39786c"
  },
  ["@punctuation.bracket"] = {
    fg = "#696d71"
  },
  ["@punctuation.delimiter"] = {
    fg = "#0969da"
  },
  ["@punctuation.special"] = {
    fg = "#0969da"
  },
  ["@punctuation.special.markdown"] = {
    fg = "#b63f17"
  },
  ["@string"] = "String",
  ["@string.documentation"] = {
    fg = "#9d5c00"
  },
  ["@string.escape"] = {
    fg = "#8250df"
  },
  ["@string.regexp"] = {
    fg = "#1b7c83"
  },
  ["@tag"] = "Label",
  ["@tag.attribute"] = "@property",
  ["@tag.delimiter"] = "Delimiter",
  ["@tag.delimiter.tsx"] = {
    fg = "#5396e5"
  },
  ["@tag.javascript"] = {
    fg = "#cf222e"
  },
  ["@tag.tsx"] = {
    fg = "#cf222e"
  },
  ["@type"] = "Type",
  ["@type.builtin"] = {
    fg = "#49969c"
  },
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = "#1f2328"
  },
  ["@variable.builtin"] = {
    fg = "#cf222e"
  },
  ["@variable.member"] = {
    fg = "#39786c"
  },
  ["@variable.parameter"] = {
    fg = "#9d5c00"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#845108"
  },
  ALEErrorSign = {
    fg = "#cf222e"
  },
  ALEWarningSign = {
    fg = "#9d5c00"
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
    fg = "#e7e9eb"
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
    fg = "#1f2328"
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
    fg = "#1b7c83"
  },
  AlphaFooter = {
    fg = "#1b7c83"
  },
  AlphaHeader = {
    fg = "#0969da"
  },
  AlphaHeaderLabel = {
    fg = "#b63f17"
  },
  AlphaShortcut = {
    fg = "#b63f17"
  },
  BlinkCmpDoc = {
    bg = "#f0f0f0",
    fg = "#1f2328"
  },
  BlinkCmpDocBorder = {
    bg = "#f0f0f0",
    fg = "#d1d2d5"
  },
  BlinkCmpGhostText = {
    fg = "#57606a"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#1b7c83"
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#1b7c83"
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#696d71"
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
    fg = "#1b7c83"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#1b7c83"
  },
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#1f2328"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#e7e9eb",
    strikethrough = true
  },
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#1b7c83"
  },
  BlinkCmpMenu = {
    bg = "#f0f0f0",
    fg = "#1f2328"
  },
  BlinkCmpMenuBorder = {
    bg = "#f0f0f0",
    fg = "#d1d2d5"
  },
  BlinkCmpMenuSelection = {
    bg = "#cecfd0"
  },
  BlinkCmpSignatureHelp = {
    bg = "#f0f0f0",
    fg = "#1f2328"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#f0f0f0",
    fg = "#d1d2d5"
  },
  Bold = {
    bold = true,
    fg = "#1f2328"
  },
  BufferAlternate = {
    bg = "#e7e9eb",
    fg = "#1f2328"
  },
  BufferAlternateADDED = {
    bg = "#e7e9eb",
    fg = "#116329"
  },
  BufferAlternateCHANGED = {
    bg = "#e7e9eb",
    fg = "#0667d8"
  },
  BufferAlternateDELETED = {
    bg = "#e7e9eb",
    fg = "#cf222e"
  },
  BufferAlternateERROR = {
    bg = "#e7e9eb",
    fg = "#cf222e"
  },
  BufferAlternateHINT = {
    bg = "#e7e9eb",
    fg = "#1b7c83"
  },
  BufferAlternateINFO = {
    bg = "#e7e9eb",
    fg = "#0667d8"
  },
  BufferAlternateIndex = {
    bg = "#e7e9eb",
    fg = "#0667d8"
  },
  BufferAlternateMod = {
    bg = "#e7e9eb",
    fg = "#9d5c00"
  },
  BufferAlternateSign = {
    bg = "#e7e9eb",
    fg = "#0667d8"
  },
  BufferAlternateTarget = {
    bg = "#e7e9eb",
    fg = "#cf222e"
  },
  BufferAlternateWARN = {
    bg = "#e7e9eb",
    fg = "#9d5c00"
  },
  BufferCurrent = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  BufferCurrentADDED = {
    bg = "#ffffff",
    fg = "#116329"
  },
  BufferCurrentCHANGED = {
    bg = "#ffffff",
    fg = "#0667d8"
  },
  BufferCurrentDELETED = {
    bg = "#ffffff",
    fg = "#cf222e"
  },
  BufferCurrentERROR = {
    bg = "#ffffff",
    fg = "#cf222e"
  },
  BufferCurrentHINT = {
    bg = "#ffffff",
    fg = "#1b7c83"
  },
  BufferCurrentINFO = {
    bg = "#ffffff",
    fg = "#0667d8"
  },
  BufferCurrentIndex = {
    bg = "#ffffff",
    fg = "#0667d8"
  },
  BufferCurrentMod = {
    bg = "#ffffff",
    fg = "#9d5c00"
  },
  BufferCurrentSign = {
    bg = "#ffffff",
    fg = "#ffffff"
  },
  BufferCurrentTarget = {
    bg = "#ffffff",
    fg = "#cf222e"
  },
  BufferCurrentWARN = {
    bg = "#ffffff",
    fg = "#9d5c00"
  },
  BufferInactive = {
    bg = "#f6f6f7",
    fg = "#878a8d"
  },
  BufferInactiveADDED = {
    bg = "#f6f6f7",
    fg = "#418254"
  },
  BufferInactiveCHANGED = {
    bg = "#f6f6f7",
    fg = "#3885e0"
  },
  BufferInactiveDELETED = {
    bg = "#f6f6f7",
    fg = "#d94e58"
  },
  BufferInactiveERROR = {
    bg = "#f6f6f7",
    fg = "#d94e58"
  },
  BufferInactiveHINT = {
    bg = "#f6f6f7",
    fg = "#49969c"
  },
  BufferInactiveINFO = {
    bg = "#f6f6f7",
    fg = "#3885e0"
  },
  BufferInactiveIndex = {
    bg = "#f6f6f7",
    fg = "#696d71"
  },
  BufferInactiveMod = {
    bg = "#f6f6f7",
    fg = "#b17d33"
  },
  BufferInactiveSign = {
    bg = "#f6f6f7",
    fg = "#ffffff"
  },
  BufferInactiveTarget = {
    bg = "#f6f6f7",
    fg = "#cf222e"
  },
  BufferInactiveWARN = {
    bg = "#f6f6f7",
    fg = "#b17d33"
  },
  BufferLineIndicatorSelected = {
    fg = "#0667d8"
  },
  BufferOffset = {
    bg = "#f0f0f0",
    fg = "#696d71"
  },
  BufferTabpageFill = {
    bg = "#ededee",
    fg = "#696d71"
  },
  BufferTabpages = {
    bg = "#f0f0f0",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#f0f0f0",
    fg = "#1f2328"
  },
  BufferVisibleADDED = {
    bg = "#f0f0f0",
    fg = "#116329"
  },
  BufferVisibleCHANGED = {
    bg = "#f0f0f0",
    fg = "#0667d8"
  },
  BufferVisibleDELETED = {
    bg = "#f0f0f0",
    fg = "#cf222e"
  },
  BufferVisibleERROR = {
    bg = "#f0f0f0",
    fg = "#cf222e"
  },
  BufferVisibleHINT = {
    bg = "#f0f0f0",
    fg = "#1b7c83"
  },
  BufferVisibleINFO = {
    bg = "#f0f0f0",
    fg = "#0667d8"
  },
  BufferVisibleIndex = {
    bg = "#f0f0f0",
    fg = "#0667d8"
  },
  BufferVisibleMod = {
    bg = "#f0f0f0",
    fg = "#9d5c00"
  },
  BufferVisibleSign = {
    bg = "#f0f0f0",
    fg = "#0667d8"
  },
  BufferVisibleTarget = {
    bg = "#f0f0f0",
    fg = "#cf222e"
  },
  BufferVisibleWARN = {
    bg = "#f0f0f0",
    fg = "#9d5c00"
  },
  Character = {
    fg = "#116329"
  },
  CmpDocumentation = {
    bg = "#f0f0f0",
    fg = "#1f2328"
  },
  CmpDocumentationBorder = {
    bg = "#f0f0f0",
    fg = "#d1d2d5"
  },
  CmpGhostText = {
    fg = "#57606a"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#1f2328"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#e7e9eb",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#1b7c83"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#1b7c83"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#1b7c83"
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#1b7c83"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#696d71"
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
    fg = "#1b7c83"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#1b7c83"
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#696d71"
  },
  CodeBlock = {
    bg = "#f0f0f0"
  },
  CodeiumSuggestion = {
    fg = "#57606a"
  },
  ColorColumn = {
    bg = "#ffffff"
  },
  Comment = {
    fg = "#696d71",
    italic = true
  },
  ComplHint = {
    fg = "#57606a"
  },
  Conceal = {
    fg = "#696d71"
  },
  Constant = {
    fg = "#b63f17"
  },
  CopilotAnnotation = {
    fg = "#57606a"
  },
  CopilotSuggestion = {
    fg = "#57606a"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#0969da",
    fg = "#b6d8ff"
  },
  CursorColumn = {
    bg = "#e9e9ea"
  },
  CursorIM = {
    bg = "#0969da",
    fg = "#b6d8ff"
  },
  CursorLine = {
    bg = "#e9e9ea"
  },
  CursorLineNr = {
    bold = true,
    fg = "#b63f17"
  },
  DapStoppedLine = {
    bg = "#f5efe6"
  },
  DashboardDesc = {
    fg = "#1b7c83"
  },
  DashboardFiles = {
    fg = "#0969da"
  },
  DashboardFooter = {
    fg = "#1b7c83"
  },
  DashboardHeader = {
    fg = "#0969da"
  },
  DashboardIcon = {
    fg = "#1b7c83"
  },
  DashboardKey = {
    fg = "#b63f17"
  },
  DashboardMruIcon = {
    fg = "#8250df"
  },
  DashboardMruTitle = {
    fg = "#1b7c83"
  },
  DashboardProjectIcon = {
    fg = "#9d5c00"
  },
  DashboardProjectTitle = {
    fg = "#1b7c83"
  },
  DashboardProjectTitleIcon = {
    fg = "#b63f17"
  },
  DashboardShortCut = {
    fg = "#1b7c83"
  },
  DashboardShortCutIcon = {
    fg = "#8250df"
  },
  Debug = {
    fg = "#b63f17"
  },
  DefinitionCount = {
    fg = "#8250df"
  },
  DefinitionIcon = {
    fg = "#0969da"
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#cf222e"
  },
  DiagnosticHint = {
    fg = "#1b7c83"
  },
  DiagnosticInfo = {
    fg = "#0667d8"
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticUnderlineError = {
    sp = "#cf222e",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#1b7c83",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#0667d8",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#9d5c00",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#57606a"
  },
  DiagnosticVirtualTextError = {
    bg = "#fae9ea",
    fg = "#cf222e"
  },
  DiagnosticVirtualTextHint = {
    bg = "#e8f2f3",
    fg = "#1b7c83"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#e6f0fb",
    fg = "#0667d8"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#f5efe6",
    fg = "#9d5c00"
  },
  DiagnosticWarn = {
    fg = "#9d5c00"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#e5ede6"
  },
  DiffChange = {
    bg = "#e6effc"
  },
  DiffDelete = {
    bg = "#fee9e7"
  },
  DiffText = {
    bg = "#b9d4f5"
  },
  Directory = {
    fg = "#0969da"
  },
  EndOfBuffer = {
    fg = "#ffffff"
  },
  Error = {
    fg = "#cf222e"
  },
  ErrorMsg = {
    fg = "#cf222e"
  },
  FlashBackdrop = {
    fg = "#878a8e"
  },
  FlashLabel = {
    bg = "#8250df",
    bold = true,
    fg = "#1f2328"
  },
  FloatBorder = {
    bg = "#f0f0f0",
    fg = "#d1d2d5"
  },
  FloatTitle = {
    bg = "#f0f0f0",
    fg = "#d1d2d5"
  },
  FoldColumn = {
    bg = "#ffffff",
    fg = "#696d71"
  },
  Folded = {
    bg = "#e7e9eb",
    fg = "#0969da"
  },
  Foo = {
    bg = "#8250df",
    fg = "#1f2328"
  },
  Function = {
    fg = "#0969da"
  },
  FzfLuaBorder = {
    bg = "#f0f0f0",
    fg = "#d1d2d5"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#696d71"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#1f2328"
  },
  FzfLuaFzfPointer = {
    fg = "#8250df"
  },
  FzfLuaFzfSeparator = {
    bg = "#f0f0f0",
    fg = "#b63f17"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#f0f0f0",
    fg = "#1f2328"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#f0f0f0",
    fg = "#d1d2d5"
  },
  FzfLuaTitle = {
    bg = "#f0f0f0",
    fg = "#b63f17"
  },
  GitGutterAdd = {
    fg = "#116329"
  },
  GitGutterAddLineNr = {
    fg = "#116329"
  },
  GitGutterChange = {
    fg = "#0667d8"
  },
  GitGutterChangeLineNr = {
    fg = "#0667d8"
  },
  GitGutterDelete = {
    fg = "#cf222e"
  },
  GitGutterDeleteLineNr = {
    fg = "#cf222e"
  },
  GitSignsAdd = {
    fg = "#116329"
  },
  GitSignsChange = {
    fg = "#0667d8"
  },
  GitSignsDelete = {
    fg = "#cf222e"
  },
  GlyphPalette1 = {
    fg = "#cf222e"
  },
  GlyphPalette2 = {
    fg = "#116329"
  },
  GlyphPalette3 = {
    fg = "#9d5c00"
  },
  GlyphPalette4 = {
    fg = "#0969da"
  },
  GlyphPalette6 = {
    fg = "#39786c"
  },
  GlyphPalette7 = {
    fg = "#1f2328"
  },
  GlyphPalette9 = {
    fg = "#cf222e"
  },
  GrugFarHelpHeader = {
    fg = "#696d71"
  },
  GrugFarHelpHeaderKey = {
    fg = "#1b7c83"
  },
  GrugFarInputLabel = {
    fg = "#1b7c83"
  },
  GrugFarInputPlaceholder = {
    fg = "#878a8e"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#0667d8"
  },
  GrugFarResultsHeader = {
    fg = "#b63f17"
  },
  GrugFarResultsLineColumn = {
    fg = "#878a8e"
  },
  GrugFarResultsLineNo = {
    fg = "#878a8e"
  },
  GrugFarResultsMatch = {
    bg = "#cf222e",
    fg = "#ffffff"
  },
  GrugFarResultsStats = {
    fg = "#0969da"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#f3f8fd"
  },
  Headline2 = {
    bg = "#faf7f2"
  },
  Headline3 = {
    bg = "#f3f7f4"
  },
  Headline4 = {
    bg = "#f4f8f9"
  },
  Headline5 = {
    bg = "#f9f6fd"
  },
  Headline6 = {
    bg = "#f9f6fd"
  },
  Headline7 = {
    bg = "#fbf5f3"
  },
  Headline8 = {
    bg = "#fdf4f5"
  },
  HopNextKey = {
    bold = true,
    fg = "#8250df"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#0667d8"
  },
  HopNextKey2 = {
    fg = "#6aa4e8"
  },
  HopUnmatched = {
    fg = "#878a8e"
  },
  IblIndent = {
    fg = "#e7e9eb",
    nocombine = true
  },
  IblScope = {
    fg = "#1b7c83",
    nocombine = true
  },
  Identifier = {
    fg = "#8250df"
  },
  IlluminatedWordRead = {
    bg = "#e7e9eb"
  },
  IlluminatedWordText = {
    bg = "#e7e9eb"
  },
  IlluminatedWordWrite = {
    bg = "#e7e9eb"
  },
  IncSearch = {
    bg = "#b63f17",
    fg = "#ffffff"
  },
  IndentBlanklineChar = {
    fg = "#e7e9eb",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#1b7c83",
    nocombine = true
  },
  IndentLine = {
    fg = "#e7e9eb",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#1b7c83",
    nocombine = true
  },
  Italic = {
    fg = "#1f2328",
    italic = true
  },
  Keyword = {
    fg = "#1b7c83",
    italic = true
  },
  LazyProgressDone = {
    bold = true,
    fg = "#8250df"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#e7e9eb"
  },
  LeapBackdrop = {
    fg = "#878a8e"
  },
  LeapLabel = {
    bold = true,
    fg = "#8250df"
  },
  LeapMatch = {
    bg = "#8250df",
    bold = true,
    fg = "#1f2328"
  },
  LineNr = {
    fg = "#878a8e"
  },
  LineNrAbove = {
    fg = "#878a8e"
  },
  LineNrBelow = {
    fg = "#878a8e"
  },
  LspCodeLens = {
    fg = "#696d71"
  },
  LspFloatWinBorder = {
    fg = "#d1d2d5"
  },
  LspFloatWinNormal = {
    bg = "#f0f0f0"
  },
  LspInfoBorder = {
    bg = "#f0f0f0",
    fg = "#d1d2d5"
  },
  LspInlayHint = {
    bg = "#e6f0fb",
    fg = "#878a8e"
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
    bg = "#e7e9eb"
  },
  LspReferenceText = {
    bg = "#e7e9eb"
  },
  LspReferenceWrite = {
    bg = "#e7e9eb"
  },
  LspSagaBorderTitle = {
    fg = "#1b7c83"
  },
  LspSagaCodeActionBorder = {
    fg = "#0969da"
  },
  LspSagaCodeActionContent = {
    fg = "#8250df"
  },
  LspSagaCodeActionTitle = {
    fg = "#1b7c83"
  },
  LspSagaDefPreviewBorder = {
    fg = "#116329"
  },
  LspSagaFinderSelection = {
    fg = "#cecfd0"
  },
  LspSagaHoverBorder = {
    fg = "#0969da"
  },
  LspSagaRenameBorder = {
    fg = "#116329"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#cf222e"
  },
  LspSignatureActiveParameter = {
    bg = "#ebecec",
    bold = true
  },
  MarkviewCode = {
    bg = "#f0f0f0"
  },
  MarkviewCodeFg = {
    fg = "#f0f0f0"
  },
  MarkviewCodeInfo = {
    bg = "#f0f0f0",
    fg = "#696d71"
  },
  MarkviewHeading1 = {
    bg = "#f3f8fd",
    bold = true,
    fg = "#0969da"
  },
  MarkviewHeading1Sign = "MarkviewPalette1Sign",
  MarkviewHeading2 = {
    bg = "#faf7f2",
    bold = true,
    fg = "#9d5c00"
  },
  MarkviewHeading2Sign = "MarkviewPalette2Sign",
  MarkviewHeading3 = {
    bg = "#f3f7f4",
    bold = true,
    fg = "#116329"
  },
  MarkviewHeading3Sign = "MarkviewPalette3Sign",
  MarkviewHeading4 = {
    bg = "#f4f8f9",
    bold = true,
    fg = "#1b7c83"
  },
  MarkviewHeading4Sign = "MarkviewPalette4Sign",
  MarkviewHeading5 = {
    bg = "#f9f6fd",
    bold = true,
    fg = "#8250df"
  },
  MarkviewHeading5Sign = "MarkviewPalette5Sign",
  MarkviewHeading6 = {
    bg = "#f9f6fd",
    bold = true,
    fg = "#8250df"
  },
  MarkviewHeading6Sign = "MarkviewPalette6Sign",
  MarkviewIcon0 = {
    bg = "#f0f0f0",
    fg = "#696d71"
  },
  MarkviewIcon1 = {
    bg = "#f0f0f0",
    fg = "#0969da"
  },
  MarkviewIcon2 = {
    bg = "#f0f0f0",
    fg = "#9d5c00"
  },
  MarkviewIcon3 = {
    bg = "#f0f0f0",
    fg = "#116329"
  },
  MarkviewIcon4 = {
    bg = "#f0f0f0",
    fg = "#1b7c83"
  },
  MarkviewIcon5 = {
    bg = "#f0f0f0",
    fg = "#8250df"
  },
  MarkviewIcon6 = {
    bg = "#f0f0f0",
    fg = "#8250df"
  },
  MarkviewInlineCode = {
    bg = "#f2f2f2",
    fg = "#0969da"
  },
  MarkviewPalette0 = {
    bg = "#f8f8f8",
    fg = "#696d71"
  },
  MarkviewPalette0Fg = {
    fg = "#696d71"
  },
  MarkviewPalette0Sign = {
    fg = "#696d71"
  },
  MarkviewPalette1 = {
    bg = "#f3f8fd",
    fg = "#0969da"
  },
  MarkviewPalette1Fg = {
    fg = "#0969da"
  },
  MarkviewPalette1Sign = {
    fg = "#0969da"
  },
  MarkviewPalette2 = {
    bg = "#faf7f2",
    fg = "#9d5c00"
  },
  MarkviewPalette2Fg = {
    fg = "#9d5c00"
  },
  MarkviewPalette2Sign = {
    fg = "#9d5c00"
  },
  MarkviewPalette3 = {
    bg = "#f3f7f4",
    fg = "#116329"
  },
  MarkviewPalette3Fg = {
    fg = "#116329"
  },
  MarkviewPalette3Sign = {
    fg = "#116329"
  },
  MarkviewPalette4 = {
    bg = "#f4f8f9",
    fg = "#1b7c83"
  },
  MarkviewPalette4Fg = {
    fg = "#1b7c83"
  },
  MarkviewPalette4Sign = {
    fg = "#1b7c83"
  },
  MarkviewPalette5 = {
    bg = "#f9f6fd",
    fg = "#8250df"
  },
  MarkviewPalette5Fg = {
    fg = "#8250df"
  },
  MarkviewPalette5Sign = {
    fg = "#8250df"
  },
  MarkviewPalette6 = {
    bg = "#f9f6fd",
    fg = "#8250df"
  },
  MarkviewPalette6Fg = {
    fg = "#8250df"
  },
  MarkviewPalette6Sign = {
    fg = "#8250df"
  },
  MarkviewPalette7 = {
    bg = "#fbf5f3",
    fg = "#b63f17"
  },
  MarkviewPalette7Fg = {
    fg = "#b63f17"
  },
  MarkviewPalette7Sign = {
    fg = "#b63f17"
  },
  MatchParen = {
    bold = true,
    fg = "#b63f17"
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
    bg = "#e7e9eb"
  },
  MiniCursorwordCurrent = {
    bg = "#e7e9eb"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#cf222e",
    fg = "#ffffff"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#116329",
    fg = "#ffffff"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#116329"
  },
  MiniDiffSignChange = {
    fg = "#0667d8"
  },
  MiniDiffSignDelete = {
    fg = "#cf222e"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#1f2328"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#f0f0f0",
    bold = true,
    fg = "#d1d2d5"
  },
  MiniHipatternsFixme = {
    bg = "#cf222e",
    bold = true,
    fg = "#ffffff"
  },
  MiniHipatternsHack = {
    bg = "#9d5c00",
    bold = true,
    fg = "#ffffff"
  },
  MiniHipatternsNote = {
    bg = "#1b7c83",
    bold = true,
    fg = "#ffffff"
  },
  MiniHipatternsTodo = {
    bg = "#0667d8",
    bold = true,
    fg = "#ffffff"
  },
  MiniIconsAzure = {
    fg = "#0667d8"
  },
  MiniIconsBlue = {
    fg = "#0969da"
  },
  MiniIconsCyan = {
    fg = "#1b7c83"
  },
  MiniIconsGreen = {
    fg = "#116329"
  },
  MiniIconsGrey = {
    fg = "#1f2328"
  },
  MiniIconsOrange = {
    fg = "#b63f17"
  },
  MiniIconsPurple = {
    fg = "#8250df"
  },
  MiniIconsRed = {
    fg = "#cf222e"
  },
  MiniIconsYellow = {
    fg = "#9d5c00"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#1b7c83",
    nocombine = true
  },
  MiniJump = {
    bg = "#8250df",
    fg = "#ffffff"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#8250df",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#f0f0f0",
    fg = "#1b7c83",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#b63f17",
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
    bg = "#f0f0f0",
    fg = "#1b7c83"
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
    bg = "#f0f0f0",
    fg = "#0667d8"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#9d5c00",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#0969da"
  },
  MiniStarterInactive = {
    fg = "#696d71",
    italic = true
  },
  MiniStarterItem = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  MiniStarterItemBullet = {
    fg = "#d1d2d5"
  },
  MiniStarterItemPrefix = {
    fg = "#9d5c00"
  },
  MiniStarterQuery = {
    fg = "#0667d8"
  },
  MiniStarterSection = {
    fg = "#1b7c83"
  },
  MiniStatuslineDevinfo = {
    bg = "#e7e9eb",
    fg = "#696d71"
  },
  MiniStatuslineFileinfo = {
    bg = "#e7e9eb",
    fg = "#696d71"
  },
  MiniStatuslineFilename = {
    bg = "#e9e9ea",
    fg = "#696d71"
  },
  MiniStatuslineInactive = {
    bg = "#f0f0f0",
    fg = "#0969da"
  },
  MiniStatuslineModeCommand = {
    bg = "#9d5c00",
    bold = true,
    fg = "#ffffff"
  },
  MiniStatuslineModeInsert = {
    bg = "#116329",
    bold = true,
    fg = "#ffffff"
  },
  MiniStatuslineModeNormal = {
    bg = "#0969da",
    bold = true,
    fg = "#ffffff"
  },
  MiniStatuslineModeOther = {
    bg = "#1b7c83",
    bold = true,
    fg = "#ffffff"
  },
  MiniStatuslineModeReplace = {
    bg = "#cf222e",
    bold = true,
    fg = "#ffffff"
  },
  MiniStatuslineModeVisual = {
    bg = "#8250df",
    bold = true,
    fg = "#ffffff"
  },
  MiniSurround = {
    bg = "#b63f17",
    fg = "#ffffff"
  },
  MiniTablineCurrent = {
    bg = "#e7e9eb",
    fg = "#1f2328"
  },
  MiniTablineFill = {
    bg = "#ffffff"
  },
  MiniTablineHidden = {
    bg = "#f0f0f0",
    fg = "#696d71"
  },
  MiniTablineModifiedCurrent = {
    bg = "#e7e9eb",
    fg = "#9d5c00"
  },
  MiniTablineModifiedHidden = {
    bg = "#f0f0f0",
    fg = "#ba8d4d"
  },
  MiniTablineModifiedVisible = {
    bg = "#f0f0f0",
    fg = "#9d5c00"
  },
  MiniTablineTabpagesection = {
    bg = "#e7e9eb",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#f0f0f0",
    fg = "#1f2328"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#cf222e"
  },
  MiniTestPass = {
    bold = true,
    fg = "#116329"
  },
  MiniTrailspace = {
    bg = "#cf222e"
  },
  ModeMsg = {
    bold = true,
    fg = "#696d71"
  },
  MoreMsg = {
    fg = "#0969da"
  },
  MsgArea = {
    fg = "#696d71"
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
    fg = "#1f2328"
  },
  NavicText = {
    bg = "NONE",
    fg = "#1f2328"
  },
  NeoTreeDimText = {
    fg = "#e7e9eb"
  },
  NeoTreeFileName = {
    fg = "#696d71"
  },
  NeoTreeGitModified = {
    fg = "#b63f17"
  },
  NeoTreeGitStaged = {
    fg = "#39786c"
  },
  NeoTreeGitUntracked = {
    fg = "#8250df"
  },
  NeoTreeNormal = {
    bg = "#f0f0f0",
    fg = "#696d71"
  },
  NeoTreeNormalNC = {
    bg = "#f0f0f0",
    fg = "#696d71"
  },
  NeoTreeTabActive = {
    bg = "#f0f0f0",
    bold = true,
    fg = "#0969da"
  },
  NeoTreeTabInactive = {
    bg = "#c0c0c0",
    fg = "#878a8e"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#f0f0f0",
    fg = "#0969da"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#c0c0c0",
    fg = "#ffffff"
  },
  NeogitBranch = {
    fg = "#8250df"
  },
  NeogitDiffAddHighlight = {
    bg = "#e5ede6",
    fg = "#116329"
  },
  NeogitDiffContextHighlight = {
    bg = "#f3f4f5",
    fg = "#696d71"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#fee9e7",
    fg = "#cf222e"
  },
  NeogitHunkHeader = {
    bg = "#e9e9ea",
    fg = "#1f2328"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#e7e9eb",
    fg = "#0969da"
  },
  NeogitRemote = {
    fg = "#8250df"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#8250df"
  },
  NeotestBorder = {
    fg = "#0969da"
  },
  NeotestDir = {
    fg = "#0969da"
  },
  NeotestExpandMarker = {
    fg = "#696d71"
  },
  NeotestFailed = {
    fg = "#cf222e"
  },
  NeotestFile = {
    fg = "#1b7c83"
  },
  NeotestFocused = {
    fg = "#9d5c00"
  },
  NeotestIndent = {
    fg = "#696d71"
  },
  NeotestMarked = {
    fg = "#0969da"
  },
  NeotestNamespace = {
    fg = "#116329"
  },
  NeotestPassed = {
    fg = "#116329"
  },
  NeotestRunning = {
    fg = "#9d5c00"
  },
  NeotestSkipped = {
    fg = "#0969da"
  },
  NeotestTarget = {
    fg = "#0969da"
  },
  NeotestTest = {
    fg = "#696d71"
  },
  NeotestWinSelect = {
    fg = "#0969da"
  },
  NoiceCmdlineIconInput = {
    fg = "#9d5c00"
  },
  NoiceCmdlineIconLua = {
    fg = "#1b7c83"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#9d5c00"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#1b7c83"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#9d5c00"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#1b7c83"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#696d71"
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
    fg = "#878a8e"
  },
  Normal = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  NormalFloat = {
    bg = "#f0f0f0",
    fg = "#1f2328"
  },
  NormalNC = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  NormalSB = {
    bg = "#f0f0f0",
    fg = "#696d71"
  },
  NotifyBackground = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  NotifyDEBUGBody = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  NotifyDEBUGBorder = {
    bg = "#ffffff",
    fg = "#d2d3d4"
  },
  NotifyDEBUGIcon = {
    fg = "#696d71"
  },
  NotifyDEBUGTitle = {
    fg = "#696d71"
  },
  NotifyERRORBody = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  NotifyERRORBorder = {
    bg = "#ffffff",
    fg = "#f1bdc0"
  },
  NotifyERRORIcon = {
    fg = "#cf222e"
  },
  NotifyERRORTitle = {
    fg = "#cf222e"
  },
  NotifyINFOBody = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  NotifyINFOBorder = {
    bg = "#ffffff",
    fg = "#b4d1f3"
  },
  NotifyINFOIcon = {
    fg = "#0667d8"
  },
  NotifyINFOTitle = {
    fg = "#0667d8"
  },
  NotifyTRACEBody = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  NotifyTRACEBorder = {
    bg = "#ffffff",
    fg = "#dacbf5"
  },
  NotifyTRACEIcon = {
    fg = "#8250df"
  },
  NotifyTRACETitle = {
    fg = "#8250df"
  },
  NotifyWARNBody = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  NotifyWARNBorder = {
    bg = "#ffffff",
    fg = "#e2ceb3"
  },
  NotifyWARNIcon = {
    fg = "#9d5c00"
  },
  NotifyWARNTitle = {
    fg = "#9d5c00"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#0969da"
  },
  NvimTreeGitDeleted = {
    fg = "#cf222e"
  },
  NvimTreeGitDirty = {
    fg = "#0667d8"
  },
  NvimTreeGitNew = {
    fg = "#116329"
  },
  NvimTreeImageFile = {
    fg = "#696d71"
  },
  NvimTreeIndentMarker = {
    fg = "#e7e9eb"
  },
  NvimTreeNormal = {
    bg = "#f0f0f0",
    fg = "#696d71"
  },
  NvimTreeNormalNC = {
    bg = "#f0f0f0",
    fg = "#696d71"
  },
  NvimTreeOpenedFile = {
    bg = "#e9e9ea"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#0969da"
  },
  NvimTreeSpecialFile = {
    fg = "#8250df",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#0969da"
  },
  NvimTreeWinSeparator = {
    bg = "#f0f0f0",
    fg = "#f0f0f0"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#1b7c83"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#b63f17"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#8250df"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#f3eefc",
    fg = "#8250df"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#1b7c83"
  },
  Operator = {
    fg = "#0969da"
  },
  Pmenu = {
    bg = "#f0f0f0",
    fg = "#1f2328"
  },
  PmenuMatch = {
    bg = "#f0f0f0",
    fg = "#1b7c83"
  },
  PmenuMatchSel = {
    bg = "#ecedef",
    fg = "#1b7c83"
  },
  PmenuSbar = {
    bg = "#e6e6e6"
  },
  PmenuSel = {
    bg = "#cecfd0"
  },
  PmenuThumb = {
    bg = "#e7e9eb"
  },
  PreProc = {
    fg = "#1b7c83"
  },
  Question = {
    fg = "#0969da"
  },
  QuickFixLine = {
    bg = "#cecfd0",
    bold = true
  },
  RainbowDelimiterBlue = {
    fg = "#0969da"
  },
  RainbowDelimiterCyan = {
    fg = "#1b7c83"
  },
  RainbowDelimiterGreen = {
    fg = "#116329"
  },
  RainbowDelimiterOrange = {
    fg = "#b63f17"
  },
  RainbowDelimiterRed = {
    fg = "#cf222e"
  },
  RainbowDelimiterViolet = {
    fg = "#8250df"
  },
  RainbowDelimiterYellow = {
    fg = "#9d5c00"
  },
  ReferencesCount = {
    fg = "#8250df"
  },
  ReferencesIcon = {
    fg = "#0969da"
  },
  RenderMarkdownBullet = {
    fg = "#b63f17"
  },
  RenderMarkdownCode = {
    bg = "#f0f0f0"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#b63f17"
  },
  RenderMarkdownH1Bg = {
    bg = "#f3f8fd"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#0969da"
  },
  RenderMarkdownH2Bg = {
    bg = "#faf7f2"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#9d5c00"
  },
  RenderMarkdownH3Bg = {
    bg = "#f3f7f4"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#116329"
  },
  RenderMarkdownH4Bg = {
    bg = "#f4f8f9"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#1b7c83"
  },
  RenderMarkdownH5Bg = {
    bg = "#f9f6fd"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#8250df"
  },
  RenderMarkdownH6Bg = {
    bg = "#f9f6fd"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#8250df"
  },
  RenderMarkdownH7Bg = {
    bg = "#fbf5f3"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#b63f17"
  },
  RenderMarkdownH8Bg = {
    bg = "#fdf4f5"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#cf222e"
  },
  RenderMarkdownTableHead = {
    fg = "#cf222e"
  },
  RenderMarkdownTableRow = {
    fg = "#b63f17"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#cf222e"
  },
  ScrollbarErrorHandle = {
    bg = "#e9e9ea",
    fg = "#cf222e"
  },
  ScrollbarHandle = {
    bg = "#e9e9ea",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#1b7c83"
  },
  ScrollbarHintHandle = {
    bg = "#e9e9ea",
    fg = "#1b7c83"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#0667d8"
  },
  ScrollbarInfoHandle = {
    bg = "#e9e9ea",
    fg = "#0667d8"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#8250df"
  },
  ScrollbarMiscHandle = {
    bg = "#e9e9ea",
    fg = "#8250df"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#b63f17"
  },
  ScrollbarSearchHandle = {
    bg = "#e9e9ea",
    fg = "#b63f17"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#9d5c00"
  },
  ScrollbarWarnHandle = {
    bg = "#e9e9ea",
    fg = "#9d5c00"
  },
  Search = {
    bg = "#e6effc",
    fg = "#1f2328"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#116329"
  },
  SidekickSignChange = {
    fg = "#0667d8"
  },
  SidekickSignDelete = {
    fg = "#cf222e"
  },
  SignColumn = {
    bg = "#ffffff",
    fg = "#e7e9eb"
  },
  SignColumnSB = {
    bg = "#f0f0f0",
    fg = "#e7e9eb"
  },
  SnacksDashboardDesc = {
    fg = "#1b7c83"
  },
  SnacksDashboardDir = {
    fg = "#878a8e"
  },
  SnacksDashboardFooter = {
    fg = "#1b7c83"
  },
  SnacksDashboardHeader = {
    fg = "#0969da"
  },
  SnacksDashboardIcon = {
    fg = "#1b7c83"
  },
  SnacksDashboardKey = {
    fg = "#b63f17"
  },
  SnacksDashboardSpecial = {
    fg = "#8250df"
  },
  SnacksDiffLabel = {
    bold = true,
    fg = "#1b7c83"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#e8f2f3",
    fg = "#1b7c83"
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#1b7c83"
  },
  SnacksIndent = {
    fg = "#e7e9eb",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#0969da",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#9d5c00",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#116329",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#1b7c83",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#8250df",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#8250df",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#b63f17",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#cf222e",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#1b7c83",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#9d5c00"
  },
  SnacksInputIcon = {
    fg = "#1b7c83"
  },
  SnacksInputTitle = {
    fg = "#9d5c00"
  },
  SnacksNotifierBorderDebug = {
    bg = "#ffffff",
    fg = "#c3c5c6"
  },
  SnacksNotifierBorderError = {
    bg = "#ffffff",
    fg = "#eca7ab"
  },
  SnacksNotifierBorderInfo = {
    bg = "#ffffff",
    fg = "#9bc2ef"
  },
  SnacksNotifierBorderTrace = {
    bg = "#ffffff",
    fg = "#cdb9f2"
  },
  SnacksNotifierBorderWarn = {
    bg = "#ffffff",
    fg = "#d8be99"
  },
  SnacksNotifierDebug = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  SnacksNotifierError = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  SnacksNotifierIconDebug = {
    fg = "#696d71"
  },
  SnacksNotifierIconError = {
    fg = "#cf222e"
  },
  SnacksNotifierIconInfo = {
    fg = "#0667d8"
  },
  SnacksNotifierIconTrace = {
    fg = "#8250df"
  },
  SnacksNotifierIconWarn = {
    fg = "#9d5c00"
  },
  SnacksNotifierInfo = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  SnacksNotifierTitleDebug = {
    fg = "#696d71"
  },
  SnacksNotifierTitleError = {
    fg = "#cf222e"
  },
  SnacksNotifierTitleInfo = {
    fg = "#0667d8"
  },
  SnacksNotifierTitleTrace = {
    fg = "#8250df"
  },
  SnacksNotifierTitleWarn = {
    fg = "#9d5c00"
  },
  SnacksNotifierTrace = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  SnacksNotifierWarn = {
    bg = "#ffffff",
    fg = "#1f2328"
  },
  SnacksPickerBoxTitle = {
    bg = "#f0f0f0",
    fg = "#b63f17"
  },
  SnacksPickerInputBorder = {
    bg = "#f0f0f0",
    fg = "#b63f17"
  },
  SnacksPickerInputTitle = {
    bg = "#f0f0f0",
    fg = "#b63f17"
  },
  SnacksPickerListCursorLine = {
    bg = "#cecfd0"
  },
  SnacksPickerPickWin = {
    bg = "#e6effc",
    bold = true,
    fg = "#1f2328"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#8250df",
    bold = true,
    fg = "#1f2328"
  },
  SnacksPickerSelected = {
    fg = "#8250df"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#e8f2f3",
    fg = "#1b7c83"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#e6f0fb",
    fg = "#878a8e"
  },
  SnacksProfilerIconInfo = {
    bg = "#bbd8da",
    fg = "#1b7c83"
  },
  SnacksProfilerIconTrace = {
    bg = "#b4d1f3",
    fg = "#878a8e"
  },
  SnacksZenIcon = {
    fg = "#8250df"
  },
  Sneak = {
    bg = "#8250df",
    fg = "#e9e9ea"
  },
  SneakScope = {
    bg = "#cecfd0"
  },
  Special = {
    fg = "#1b7c83"
  },
  SpecialKey = {
    fg = "#878a8e"
  },
  SpellBad = {
    sp = "#cf222e",
    undercurl = true
  },
  SpellCap = {
    sp = "#9d5c00",
    undercurl = true
  },
  SpellLocal = {
    sp = "#0667d8",
    undercurl = true
  },
  SpellRare = {
    sp = "#1b7c83",
    undercurl = true
  },
  Statement = {
    fg = "#8250df"
  },
  StatusLine = {
    bg = "#f0f0f0",
    fg = "#696d71"
  },
  StatusLineNC = {
    bg = "#f0f0f0",
    fg = "#878a8e"
  },
  String = {
    fg = "#116329"
  },
  Substitute = {
    bg = "#cf222e",
    fg = "#ffffff"
  },
  SupermavenSuggestion = {
    fg = "#57606a"
  },
  TabLine = {
    bg = "#f0f0f0",
    fg = "#878a8e"
  },
  TabLineFill = {
    bg = "#ffffff"
  },
  TabLineSel = {
    bg = "#0969da",
    fg = "#ffffff"
  },
  TargetWord = {
    fg = "#1b7c83"
  },
  TelescopeBorder = {
    bg = "#f0f0f0",
    fg = "#d1d2d5"
  },
  TelescopeNormal = {
    bg = "#f0f0f0",
    fg = "#1f2328"
  },
  TelescopePromptBorder = {
    bg = "#f0f0f0",
    fg = "#b63f17"
  },
  TelescopePromptTitle = {
    bg = "#f0f0f0",
    fg = "#b63f17"
  },
  TelescopeResultsComment = {
    fg = "#878a8e"
  },
  TelescopeSelection = {
    bg = "#cecfd0",
    bold = true
  },
  Title = {
    bold = true,
    fg = "#0969da"
  },
  Todo = {
    bg = "#9d5c00",
    fg = "#ffffff"
  },
  TreesitterContext = {
    bg = "#ecedef"
  },
  TroubleCount = {
    bg = "#e7e9eb",
    fg = "#8250df"
  },
  TroubleNormal = {
    bg = "#f0f0f0",
    fg = "#1f2328"
  },
  TroubleText = {
    fg = "#696d71"
  },
  Type = {
    fg = "#1b7c83"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#e7e9eb"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#9d5c00"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#0969da"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#9d5c00"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#116329"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#1b7c83"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#8250df"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#8250df"
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#b63f17"
  },
  VimwikiHeader8 = {
    bg = "NONE",
    bold = true,
    fg = "#cf222e"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#9d5c00"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#0969da"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#b63f17"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#0969da"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#116329"
  },
  Visual = {
    bg = "#cecfd0"
  },
  VisualNOS = {
    bg = "#cecfd0"
  },
  WarningMsg = {
    fg = "#9d5c00"
  },
  WhichKey = {
    fg = "#1b7c83"
  },
  WhichKeyDesc = {
    fg = "#8250df"
  },
  WhichKeyGroup = {
    fg = "#0969da"
  },
  WhichKeyNormal = {
    bg = "#f0f0f0"
  },
  WhichKeySeparator = {
    fg = "#696d71"
  },
  WhichKeyValue = {
    fg = "#696d71"
  },
  Whitespace = {
    fg = "#e7e9eb"
  },
  WildMenu = {
    bg = "#cecfd0"
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = "#e7e9eb"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  debugBreakpoint = {
    bg = "#e6f0fb",
    fg = "#0667d8"
  },
  debugPC = {
    bg = "#f0f0f0"
  },
  diffAdded = {
    bg = "#e5ede6",
    fg = "#116329"
  },
  diffChanged = {
    bg = "#e6effc",
    fg = "#0667d8"
  },
  diffFile = {
    fg = "#0969da"
  },
  diffIndexLine = {
    fg = "#8250df"
  },
  diffLine = {
    fg = "#696d71"
  },
  diffNewFile = {
    bg = "#e5ede6",
    fg = "#1b7c83"
  },
  diffOldFile = {
    bg = "#fee9e7",
    fg = "#1b7c83"
  },
  diffRemoved = {
    bg = "#fee9e7",
    fg = "#cf222e"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#cf222e"
  },
  healthSuccess = {
    fg = "#39786c"
  },
  healthWarning = {
    fg = "#9d5c00"
  },
  helpCommand = {
    bg = "#f2f2f2",
    fg = "#0969da"
  },
  helpExample = {
    fg = "#696d71"
  },
  htmlH1 = {
    bold = true,
    fg = "#8250df"
  },
  htmlH2 = {
    bold = true,
    fg = "#0969da"
  },
  illuminatedCurWord = {
    bg = "#e7e9eb"
  },
  illuminatedWord = {
    bg = "#e7e9eb"
  },
  lCursor = {
    bg = "#0969da",
    fg = "#b6d8ff"
  },
  qfFileName = {
    fg = "#0969da"
  },
  qfLineNr = {
    fg = "#696d71"
  }
}

return colors, highlights
