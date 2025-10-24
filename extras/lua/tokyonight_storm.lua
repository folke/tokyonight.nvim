local colors = {
  _name = "tokyonight_storm",
  _style = "storm",
  bg = "#24283b",
  bg_dark = "#1f2335",
  bg_dark1 = "#1b1e2d",
  bg_float = "#1f2335",
  bg_highlight = "#292e42",
  bg_popup = "#1f2335",
  bg_search = "#3d59a1",
  bg_sidebar = "#1f2335",
  bg_statusline = "#1f2335",
  bg_visual = "#2e3c64",
  black = "#1d202f",
  blue = "#7aa2f7",
  blue0 = "#3d59a1",
  blue1 = "#2ac3de",
  blue2 = "#0db9d7",
  blue5 = "#89ddff",
  blue6 = "#b4f9f8",
  blue7 = "#394b70",
  border = "#1d202f",
  border_highlight = "#29a4bd",
  comment = "#565f89",
  cyan = "#7dcfff",
  dark3 = "#545c7e",
  dark5 = "#737aa2",
  diff = {
    add = "#2b485a",
    change = "#272d43",
    delete = "#52313f",
    text = "#394b70"
  },
  error = "#db4b4b",
  fg = "#c0caf5",
  fg_dark = "#a9b1d6",
  fg_float = "#c0caf5",
  fg_gutter = "#3b4261",
  fg_sidebar = "#a9b1d6",
  git = {
    add = "#449dab",
    change = "#6183bb",
    delete = "#914c54",
    ignore = "#545c7e"
  },
  green = "#9ece6a",
  green1 = "#73daca",
  green2 = "#41a6b5",
  hint = "#1abc9c",
  info = "#0db9d7",
  magenta = "#bb9af7",
  magenta2 = "#ff007c",
  none = "NONE",
  orange = "#ff9e64",
  purple = "#9d7cd8",
  rainbow = { "#7aa2f7", "#e0af68", "#9ece6a", "#1abc9c", "#bb9af7", "#9d7cd8", "#ff9e64", "#f7768e" },
  red = "#f7768e",
  red1 = "#db4b4b",
  teal = "#1abc9c",
  terminal = {
    black = "#1d202f",
    black_bright = "#414868",
    blue = "#7aa2f7",
    blue_bright = "#8db0ff",
    cyan = "#7dcfff",
    cyan_bright = "#a4daff",
    green = "#9ece6a",
    green_bright = "#9fe044",
    magenta = "#bb9af7",
    magenta_bright = "#c7a9ff",
    red = "#f7768e",
    red_bright = "#ff899d",
    white = "#a9b1d6",
    white_bright = "#c0caf5",
    yellow = "#e0af68",
    yellow_bright = "#faba4a"
  },
  terminal_black = "#414868",
  todo = "#7aa2f7",
  warning = "#e0af68",
  yellow = "#e0af68"
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
    fg = "#db4b4b"
  },
  ["@comment.hint"] = {
    fg = "#1abc9c"
  },
  ["@comment.info"] = {
    fg = "#0db9d7"
  },
  ["@comment.note"] = {
    fg = "#1abc9c"
  },
  ["@comment.todo"] = {
    fg = "#7aa2f7"
  },
  ["@comment.warning"] = {
    fg = "#e0af68"
  },
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.macro"] = "Define",
  ["@constructor"] = {
    fg = "#bb9af7"
  },
  ["@constructor.tsx"] = {
    fg = "#2ac3de"
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
    fg = "#9d7cd8",
    italic = true
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = "#bb9af7"
  },
  ["@keyword.import"] = "Include",
  ["@keyword.operator"] = "@operator",
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = "#7aa2f7"
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
    fg = "#57c5e5"
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
    sp = "#db4b4b",
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
    fg = "#29a4bd"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#29a4bd"
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
    bold = true,
    fg = "#7aa2f7"
  },
  ["@markup.heading.2.markdown"] = {
    bold = true,
    fg = "#e0af68"
  },
  ["@markup.heading.3.markdown"] = {
    bold = true,
    fg = "#9ece6a"
  },
  ["@markup.heading.4.markdown"] = {
    bold = true,
    fg = "#1abc9c"
  },
  ["@markup.heading.5.markdown"] = {
    bold = true,
    fg = "#bb9af7"
  },
  ["@markup.heading.6.markdown"] = {
    bold = true,
    fg = "#9d7cd8"
  },
  ["@markup.heading.7.markdown"] = {
    bold = true,
    fg = "#ff9e64"
  },
  ["@markup.heading.8.markdown"] = {
    bold = true,
    fg = "#f7768e"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#1abc9c"
  },
  ["@markup.link.label"] = "SpecialChar",
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = "Underlined",
  ["@markup.list"] = {
    fg = "#89ddff"
  },
  ["@markup.list.checked"] = {
    fg = "#73daca"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#ff9e64"
  },
  ["@markup.list.unchecked"] = {
    fg = "#7aa2f7"
  },
  ["@markup.math"] = "Special",
  ["@markup.raw"] = "String",
  ["@markup.raw.markdown_inline"] = {
    bg = "#414868",
    fg = "#7aa2f7"
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
    fg = "#f7768e"
  },
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.float"] = "Float",
  ["@operator"] = {
    fg = "#89ddff"
  },
  ["@property"] = {
    fg = "#73daca"
  },
  ["@punctuation.bracket"] = {
    fg = "#a9b1d6"
  },
  ["@punctuation.delimiter"] = {
    fg = "#89ddff"
  },
  ["@punctuation.special"] = {
    fg = "#89ddff"
  },
  ["@punctuation.special.markdown"] = {
    fg = "#ff9e64"
  },
  ["@string"] = "String",
  ["@string.documentation"] = {
    fg = "#e0af68"
  },
  ["@string.escape"] = {
    fg = "#bb9af7"
  },
  ["@string.regexp"] = {
    fg = "#b4f9f8"
  },
  ["@tag"] = "Label",
  ["@tag.attribute"] = "@property",
  ["@tag.delimiter"] = "Delimiter",
  ["@tag.delimiter.tsx"] = {
    fg = "#607dbf"
  },
  ["@tag.javascript"] = {
    fg = "#f7768e"
  },
  ["@tag.tsx"] = {
    fg = "#f7768e"
  },
  ["@type"] = "Type",
  ["@type.builtin"] = {
    fg = "#29a4bd"
  },
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = "#c0caf5"
  },
  ["@variable.builtin"] = {
    fg = "#f7768e"
  },
  ["@variable.member"] = {
    fg = "#73daca"
  },
  ["@variable.parameter"] = {
    fg = "#e0af68"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#dab484"
  },
  ALEErrorSign = {
    fg = "#db4b4b"
  },
  ALEWarningSign = {
    fg = "#e0af68"
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
    fg = "#3b4261"
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
    fg = "#c0caf5"
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
    fg = "#7dcfff"
  },
  AlphaFooter = {
    fg = "#2ac3de"
  },
  AlphaHeader = {
    fg = "#7aa2f7"
  },
  AlphaHeaderLabel = {
    fg = "#ff9e64"
  },
  AlphaShortcut = {
    fg = "#ff9e64"
  },
  BlinkCmpDoc = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  BlinkCmpDocBorder = {
    bg = "#1f2335",
    fg = "#29a4bd"
  },
  BlinkCmpGhostText = {
    fg = "#414868"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#a9b1d6"
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
    fg = "#1abc9c"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#c0caf5"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#3b4261",
    strikethrough = true
  },
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#2ac3de"
  },
  BlinkCmpMenu = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  BlinkCmpMenuBorder = {
    bg = "#1f2335",
    fg = "#29a4bd"
  },
  BlinkCmpSignatureHelp = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#1f2335",
    fg = "#29a4bd"
  },
  Bold = {
    bold = true,
    fg = "#c0caf5"
  },
  BufferAlternate = {
    bg = "#3b4261",
    fg = "#c0caf5"
  },
  BufferAlternateERROR = {
    bg = "#3b4261",
    fg = "#db4b4b"
  },
  BufferAlternateHINT = {
    bg = "#3b4261",
    fg = "#1abc9c"
  },
  BufferAlternateINFO = {
    bg = "#3b4261",
    fg = "#0db9d7"
  },
  BufferAlternateIndex = {
    bg = "#3b4261",
    fg = "#0db9d7"
  },
  BufferAlternateMod = {
    bg = "#3b4261",
    fg = "#e0af68"
  },
  BufferAlternateSign = {
    bg = "#3b4261",
    fg = "#0db9d7"
  },
  BufferAlternateTarget = {
    bg = "#3b4261",
    fg = "#f7768e"
  },
  BufferAlternateWARN = {
    bg = "#3b4261",
    fg = "#e0af68"
  },
  BufferCurrent = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  BufferCurrentERROR = {
    bg = "#24283b",
    fg = "#db4b4b"
  },
  BufferCurrentHINT = {
    bg = "#24283b",
    fg = "#1abc9c"
  },
  BufferCurrentINFO = {
    bg = "#24283b",
    fg = "#0db9d7"
  },
  BufferCurrentIndex = {
    bg = "#24283b",
    fg = "#0db9d7"
  },
  BufferCurrentMod = {
    bg = "#24283b",
    fg = "#e0af68"
  },
  BufferCurrentSign = {
    bg = "#24283b",
    fg = "#24283b"
  },
  BufferCurrentTarget = {
    bg = "#24283b",
    fg = "#f7768e"
  },
  BufferCurrentWARN = {
    bg = "#24283b",
    fg = "#e0af68"
  },
  BufferInactive = {
    bg = "#262a3e",
    fg = "#636a8d"
  },
  BufferInactiveERROR = {
    bg = "#262a3e",
    fg = "#b64448"
  },
  BufferInactiveHINT = {
    bg = "#262a3e",
    fg = "#1c9e89"
  },
  BufferInactiveINFO = {
    bg = "#262a3e",
    fg = "#129cb8"
  },
  BufferInactiveIndex = {
    bg = "#262a3e",
    fg = "#737aa2"
  },
  BufferInactiveMod = {
    bg = "#262a3e",
    fg = "#ba945f"
  },
  BufferInactiveSign = {
    bg = "#262a3e",
    fg = "#24283b"
  },
  BufferInactiveTarget = {
    bg = "#262a3e",
    fg = "#f7768e"
  },
  BufferInactiveWARN = {
    bg = "#262a3e",
    fg = "#ba945f"
  },
  BufferLineIndicatorSelected = {
    fg = "#6183bb"
  },
  BufferOffset = {
    bg = "#1f2335",
    fg = "#737aa2"
  },
  BufferTabpageFill = {
    bg = "#282d41",
    fg = "#737aa2"
  },
  BufferTabpages = {
    bg = "#1f2335",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  BufferVisibleERROR = {
    bg = "#1f2335",
    fg = "#db4b4b"
  },
  BufferVisibleHINT = {
    bg = "#1f2335",
    fg = "#1abc9c"
  },
  BufferVisibleINFO = {
    bg = "#1f2335",
    fg = "#0db9d7"
  },
  BufferVisibleIndex = {
    bg = "#1f2335",
    fg = "#0db9d7"
  },
  BufferVisibleMod = {
    bg = "#1f2335",
    fg = "#e0af68"
  },
  BufferVisibleSign = {
    bg = "#1f2335",
    fg = "#0db9d7"
  },
  BufferVisibleTarget = {
    bg = "#1f2335",
    fg = "#f7768e"
  },
  BufferVisibleWARN = {
    bg = "#1f2335",
    fg = "#e0af68"
  },
  Character = {
    fg = "#9ece6a"
  },
  CmpDocumentation = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  CmpDocumentationBorder = {
    bg = "#1f2335",
    fg = "#29a4bd"
  },
  CmpGhostText = {
    fg = "#414868"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#c0caf5"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#3b4261",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#2ac3de"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#2ac3de"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#a9b1d6"
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
    fg = "#1abc9c"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#565f89"
  },
  CodeBlock = {
    bg = "#1f2335"
  },
  CodeiumSuggestion = {
    fg = "#414868"
  },
  ColorColumn = {
    bg = "#1d202f"
  },
  Comment = {
    fg = "#565f89",
    italic = true
  },
  ComplHint = {
    fg = "#414868"
  },
  Conceal = {
    fg = "#737aa2"
  },
  Constant = {
    fg = "#ff9e64"
  },
  CopilotAnnotation = {
    fg = "#414868"
  },
  CopilotSuggestion = {
    fg = "#414868"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#c0caf5",
    fg = "#24283b"
  },
  CursorColumn = {
    bg = "#292e42"
  },
  CursorIM = {
    bg = "#c0caf5",
    fg = "#24283b"
  },
  CursorLine = {
    bg = "#292e42"
  },
  CursorLineNr = {
    bold = true,
    fg = "#ff9e64"
  },
  DapStoppedLine = {
    bg = "#373640"
  },
  DashboardDesc = {
    fg = "#7dcfff"
  },
  DashboardFiles = {
    fg = "#7aa2f7"
  },
  DashboardFooter = {
    fg = "#2ac3de"
  },
  DashboardHeader = {
    fg = "#7aa2f7"
  },
  DashboardIcon = {
    fg = "#7dcfff"
  },
  DashboardKey = {
    fg = "#ff9e64"
  },
  DashboardMruIcon = {
    fg = "#9d7cd8"
  },
  DashboardMruTitle = {
    fg = "#7dcfff"
  },
  DashboardProjectIcon = {
    fg = "#e0af68"
  },
  DashboardProjectTitle = {
    fg = "#7dcfff"
  },
  DashboardProjectTitleIcon = {
    fg = "#ff9e64"
  },
  DashboardShortCut = {
    fg = "#7dcfff"
  },
  DashboardShortCutIcon = {
    fg = "#bb9af7"
  },
  Debug = {
    fg = "#ff9e64"
  },
  DefinitionCount = {
    fg = "#9d7cd8"
  },
  DefinitionIcon = {
    fg = "#7aa2f7"
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#db4b4b"
  },
  DiagnosticHint = {
    fg = "#1abc9c"
  },
  DiagnosticInfo = {
    fg = "#0db9d7"
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticUnderlineError = {
    sp = "#db4b4b",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#1abc9c",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#0db9d7",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#e0af68",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#414868"
  },
  DiagnosticVirtualTextError = {
    bg = "#362c3d",
    fg = "#db4b4b"
  },
  DiagnosticVirtualTextHint = {
    bg = "#233745",
    fg = "#1abc9c"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#22374b",
    fg = "#0db9d7"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#373640",
    fg = "#e0af68"
  },
  DiagnosticWarn = {
    fg = "#e0af68"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#2b485a"
  },
  DiffChange = {
    bg = "#272d43"
  },
  DiffDelete = {
    bg = "#52313f"
  },
  DiffText = {
    bg = "#394b70"
  },
  Directory = {
    fg = "#7aa2f7"
  },
  EndOfBuffer = {
    fg = "#24283b"
  },
  Error = {
    fg = "#db4b4b"
  },
  ErrorMsg = {
    fg = "#db4b4b"
  },
  FlashBackdrop = {
    fg = "#545c7e"
  },
  FlashLabel = {
    bg = "#ff007c",
    bold = true,
    fg = "#c0caf5"
  },
  FloatBorder = {
    bg = "#1f2335",
    fg = "#29a4bd"
  },
  FloatTitle = {
    bg = "#1f2335",
    fg = "#29a4bd"
  },
  FoldColumn = {
    bg = "#24283b",
    fg = "#565f89"
  },
  Folded = {
    bg = "#3b4261",
    fg = "#7aa2f7"
  },
  Foo = {
    bg = "#ff007c",
    fg = "#c0caf5"
  },
  Function = {
    fg = "#7aa2f7"
  },
  FzfLuaBorder = {
    bg = "#1f2335",
    fg = "#29a4bd"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#a9b1d6"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#c0caf5"
  },
  FzfLuaFzfPointer = {
    fg = "#ff007c"
  },
  FzfLuaFzfSeparator = {
    bg = "#1f2335",
    fg = "#ff9e64"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#1f2335",
    fg = "#29a4bd"
  },
  FzfLuaTitle = {
    bg = "#1f2335",
    fg = "#ff9e64"
  },
  GitGutterAdd = {
    fg = "#449dab"
  },
  GitGutterAddLineNr = {
    fg = "#449dab"
  },
  GitGutterChange = {
    fg = "#6183bb"
  },
  GitGutterChangeLineNr = {
    fg = "#6183bb"
  },
  GitGutterDelete = {
    fg = "#914c54"
  },
  GitGutterDeleteLineNr = {
    fg = "#914c54"
  },
  GitSignsAdd = {
    fg = "#449dab"
  },
  GitSignsChange = {
    fg = "#6183bb"
  },
  GitSignsDelete = {
    fg = "#914c54"
  },
  GlyphPalette1 = {
    fg = "#db4b4b"
  },
  GlyphPalette2 = {
    fg = "#9ece6a"
  },
  GlyphPalette3 = {
    fg = "#e0af68"
  },
  GlyphPalette4 = {
    fg = "#7aa2f7"
  },
  GlyphPalette6 = {
    fg = "#73daca"
  },
  GlyphPalette7 = {
    fg = "#c0caf5"
  },
  GlyphPalette9 = {
    fg = "#f7768e"
  },
  GrugFarHelpHeader = {
    fg = "#565f89"
  },
  GrugFarHelpHeaderKey = {
    fg = "#7dcfff"
  },
  GrugFarInputLabel = {
    fg = "#2ac3de"
  },
  GrugFarInputPlaceholder = {
    fg = "#545c7e"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#6183bb"
  },
  GrugFarResultsHeader = {
    fg = "#ff9e64"
  },
  GrugFarResultsLineColumn = {
    fg = "#545c7e"
  },
  GrugFarResultsLineNo = {
    fg = "#545c7e"
  },
  GrugFarResultsMatch = {
    bg = "#f7768e",
    fg = "#1d202f"
  },
  GrugFarResultsStats = {
    fg = "#7aa2f7"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#282e44"
  },
  Headline2 = {
    bg = "#2d2f3d"
  },
  Headline3 = {
    bg = "#2a303d"
  },
  Headline4 = {
    bg = "#232f40"
  },
  Headline5 = {
    bg = "#2c2e44"
  },
  Headline6 = {
    bg = "#2a2c43"
  },
  Headline7 = {
    bg = "#2f2e3d"
  },
  Headline8 = {
    bg = "#2f2c3f"
  },
  HopNextKey = {
    bold = true,
    fg = "#ff007c"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#0db9d7"
  },
  HopNextKey2 = {
    fg = "#167f99"
  },
  HopUnmatched = {
    fg = "#545c7e"
  },
  IblIndent = {
    fg = "#3b4261",
    nocombine = true
  },
  IblScope = {
    fg = "#2ac3de",
    nocombine = true
  },
  Identifier = {
    fg = "#bb9af7"
  },
  IlluminatedWordRead = {
    bg = "#3b4261"
  },
  IlluminatedWordText = {
    bg = "#3b4261"
  },
  IlluminatedWordWrite = {
    bg = "#3b4261"
  },
  IncSearch = {
    bg = "#ff9e64",
    fg = "#1d202f"
  },
  IndentBlanklineChar = {
    fg = "#3b4261",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#2ac3de",
    nocombine = true
  },
  IndentLine = {
    fg = "#3b4261",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#2ac3de",
    nocombine = true
  },
  Italic = {
    fg = "#c0caf5",
    italic = true
  },
  Keyword = {
    fg = "#7dcfff",
    italic = true
  },
  LazyProgressDone = {
    bold = true,
    fg = "#ff007c"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#3b4261"
  },
  LeapBackdrop = {
    fg = "#545c7e"
  },
  LeapLabel = {
    bold = true,
    fg = "#ff007c"
  },
  LeapMatch = {
    bg = "#ff007c",
    bold = true,
    fg = "#c0caf5"
  },
  LineNr = {
    fg = "#3b4261"
  },
  LineNrAbove = {
    fg = "#3b4261"
  },
  LineNrBelow = {
    fg = "#3b4261"
  },
  LspCodeLens = {
    fg = "#565f89"
  },
  LspFloatWinBorder = {
    fg = "#29a4bd"
  },
  LspFloatWinNormal = {
    bg = "#1f2335"
  },
  LspInfoBorder = {
    bg = "#1f2335",
    fg = "#29a4bd"
  },
  LspInlayHint = {
    bg = "#262c40",
    fg = "#545c7e"
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
    bg = "#3b4261"
  },
  LspReferenceText = {
    bg = "#3b4261"
  },
  LspReferenceWrite = {
    bg = "#3b4261"
  },
  LspSagaBorderTitle = {
    fg = "#7dcfff"
  },
  LspSagaCodeActionBorder = {
    fg = "#7aa2f7"
  },
  LspSagaCodeActionContent = {
    fg = "#9d7cd8"
  },
  LspSagaCodeActionTitle = {
    fg = "#2ac3de"
  },
  LspSagaDefPreviewBorder = {
    fg = "#9ece6a"
  },
  LspSagaFinderSelection = {
    fg = "#2e3c64"
  },
  LspSagaHoverBorder = {
    fg = "#7aa2f7"
  },
  LspSagaRenameBorder = {
    fg = "#9ece6a"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#f7768e"
  },
  LspSignatureActiveParameter = {
    bg = "#28304b",
    bold = true
  },
  MatchParen = {
    bold = true,
    fg = "#ff9e64"
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
    bg = "#3b4261"
  },
  MiniCursorwordCurrent = {
    bg = "#3b4261"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#914c54",
    fg = "#1d202f"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#449dab",
    fg = "#1d202f"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#449dab"
  },
  MiniDiffSignChange = {
    fg = "#6183bb"
  },
  MiniDiffSignDelete = {
    fg = "#914c54"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#c0caf5"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#1f2335",
    bold = true,
    fg = "#29a4bd"
  },
  MiniHipatternsFixme = {
    bg = "#db4b4b",
    bold = true,
    fg = "#1d202f"
  },
  MiniHipatternsHack = {
    bg = "#e0af68",
    bold = true,
    fg = "#1d202f"
  },
  MiniHipatternsNote = {
    bg = "#1abc9c",
    bold = true,
    fg = "#1d202f"
  },
  MiniHipatternsTodo = {
    bg = "#0db9d7",
    bold = true,
    fg = "#1d202f"
  },
  MiniIconsAzure = {
    fg = "#0db9d7"
  },
  MiniIconsBlue = {
    fg = "#7aa2f7"
  },
  MiniIconsCyan = {
    fg = "#1abc9c"
  },
  MiniIconsGreen = {
    fg = "#9ece6a"
  },
  MiniIconsGrey = {
    fg = "#c0caf5"
  },
  MiniIconsOrange = {
    fg = "#ff9e64"
  },
  MiniIconsPurple = {
    fg = "#9d7cd8"
  },
  MiniIconsRed = {
    fg = "#f7768e"
  },
  MiniIconsYellow = {
    fg = "#e0af68"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#2ac3de",
    nocombine = true
  },
  MiniJump = {
    bg = "#ff007c",
    fg = "#ffffff"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#ff007c",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#1f2335",
    fg = "#1abc9c",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#ff9e64",
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
    bg = "#1f2335",
    fg = "#1abc9c"
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
    bg = "#1f2335",
    fg = "#0db9d7"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#e0af68",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#7aa2f7"
  },
  MiniStarterInactive = {
    fg = "#565f89",
    italic = true
  },
  MiniStarterItem = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  MiniStarterItemBullet = {
    fg = "#29a4bd"
  },
  MiniStarterItemPrefix = {
    fg = "#e0af68"
  },
  MiniStarterQuery = {
    fg = "#0db9d7"
  },
  MiniStarterSection = {
    fg = "#2ac3de"
  },
  MiniStatuslineDevinfo = {
    bg = "#3b4261",
    fg = "#a9b1d6"
  },
  MiniStatuslineFileinfo = {
    bg = "#3b4261",
    fg = "#a9b1d6"
  },
  MiniStatuslineFilename = {
    bg = "#292e42",
    fg = "#a9b1d6"
  },
  MiniStatuslineInactive = {
    bg = "#1f2335",
    fg = "#7aa2f7"
  },
  MiniStatuslineModeCommand = {
    bg = "#e0af68",
    bold = true,
    fg = "#1d202f"
  },
  MiniStatuslineModeInsert = {
    bg = "#9ece6a",
    bold = true,
    fg = "#1d202f"
  },
  MiniStatuslineModeNormal = {
    bg = "#7aa2f7",
    bold = true,
    fg = "#1d202f"
  },
  MiniStatuslineModeOther = {
    bg = "#1abc9c",
    bold = true,
    fg = "#1d202f"
  },
  MiniStatuslineModeReplace = {
    bg = "#f7768e",
    bold = true,
    fg = "#1d202f"
  },
  MiniStatuslineModeVisual = {
    bg = "#bb9af7",
    bold = true,
    fg = "#1d202f"
  },
  MiniSurround = {
    bg = "#ff9e64",
    fg = "#1d202f"
  },
  MiniTablineCurrent = {
    bg = "#3b4261",
    fg = "#c0caf5"
  },
  MiniTablineFill = {
    bg = "#1d202f"
  },
  MiniTablineHidden = {
    bg = "#1f2335",
    fg = "#737aa2"
  },
  MiniTablineModifiedCurrent = {
    bg = "#3b4261",
    fg = "#e0af68"
  },
  MiniTablineModifiedHidden = {
    bg = "#1f2335",
    fg = "#a8875b"
  },
  MiniTablineModifiedVisible = {
    bg = "#1f2335",
    fg = "#e0af68"
  },
  MiniTablineTabpagesection = {
    bg = "#3b4261",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#f7768e"
  },
  MiniTestPass = {
    bold = true,
    fg = "#9ece6a"
  },
  MiniTrailspace = {
    bg = "#f7768e"
  },
  ModeMsg = {
    bold = true,
    fg = "#a9b1d6"
  },
  MoreMsg = {
    fg = "#7aa2f7"
  },
  MsgArea = {
    fg = "#a9b1d6"
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
    fg = "#c0caf5"
  },
  NavicText = {
    bg = "NONE",
    fg = "#c0caf5"
  },
  NeoTreeDimText = {
    fg = "#3b4261"
  },
  NeoTreeFileName = {
    fg = "#a9b1d6"
  },
  NeoTreeGitModified = {
    fg = "#ff9e64"
  },
  NeoTreeGitStaged = {
    fg = "#73daca"
  },
  NeoTreeGitUntracked = {
    fg = "#bb9af7"
  },
  NeoTreeNormal = {
    bg = "#1f2335",
    fg = "#a9b1d6"
  },
  NeoTreeNormalNC = {
    bg = "#1f2335",
    fg = "#a9b1d6"
  },
  NeoTreeTabActive = {
    bg = "#1f2335",
    bold = true,
    fg = "#7aa2f7"
  },
  NeoTreeTabInactive = {
    bg = "#191c2a",
    fg = "#545c7e"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#1f2335",
    fg = "#7aa2f7"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#191c2a",
    fg = "#24283b"
  },
  NeogitBranch = {
    fg = "#bb9af7"
  },
  NeogitDiffAddHighlight = {
    bg = "#2b485a",
    fg = "#449dab"
  },
  NeogitDiffContextHighlight = {
    bg = "#30354e",
    fg = "#a9b1d6"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#52313f",
    fg = "#914c54"
  },
  NeogitHunkHeader = {
    bg = "#292e42",
    fg = "#c0caf5"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#3b4261",
    fg = "#7aa2f7"
  },
  NeogitRemote = {
    fg = "#9d7cd8"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#9d7cd8"
  },
  NeotestBorder = {
    fg = "#7aa2f7"
  },
  NeotestDir = {
    fg = "#7aa2f7"
  },
  NeotestExpandMarker = {
    fg = "#a9b1d6"
  },
  NeotestFailed = {
    fg = "#f7768e"
  },
  NeotestFile = {
    fg = "#1abc9c"
  },
  NeotestFocused = {
    fg = "#e0af68"
  },
  NeotestIndent = {
    fg = "#a9b1d6"
  },
  NeotestMarked = {
    fg = "#7aa2f7"
  },
  NeotestNamespace = {
    fg = "#41a6b5"
  },
  NeotestPassed = {
    fg = "#9ece6a"
  },
  NeotestRunning = {
    fg = "#e0af68"
  },
  NeotestSkipped = {
    fg = "#7aa2f7"
  },
  NeotestTarget = {
    fg = "#7aa2f7"
  },
  NeotestTest = {
    fg = "#a9b1d6"
  },
  NeotestWinSelect = {
    fg = "#7aa2f7"
  },
  NoiceCmdlineIconInput = {
    fg = "#e0af68"
  },
  NoiceCmdlineIconLua = {
    fg = "#2ac3de"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#e0af68"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#2ac3de"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#e0af68"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#2ac3de"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#a9b1d6"
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
    fg = "#545c7e"
  },
  Normal = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  NormalFloat = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  NormalNC = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  NormalSB = {
    bg = "#1f2335",
    fg = "#a9b1d6"
  },
  NotifyBackground = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  NotifyDEBUGBody = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  NotifyDEBUGBorder = {
    bg = "#24283b",
    fg = "#333952"
  },
  NotifyDEBUGIcon = {
    fg = "#565f89"
  },
  NotifyDEBUGTitle = {
    fg = "#565f89"
  },
  NotifyERRORBody = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  NotifyERRORBorder = {
    bg = "#24283b",
    fg = "#5b3340"
  },
  NotifyERRORIcon = {
    fg = "#db4b4b"
  },
  NotifyERRORTitle = {
    fg = "#db4b4b"
  },
  NotifyINFOBody = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  NotifyINFOBorder = {
    bg = "#24283b",
    fg = "#1d546a"
  },
  NotifyINFOIcon = {
    fg = "#0db9d7"
  },
  NotifyINFOTitle = {
    fg = "#0db9d7"
  },
  NotifyTRACEBody = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  NotifyTRACEBorder = {
    bg = "#24283b",
    fg = "#48416a"
  },
  NotifyTRACEIcon = {
    fg = "#9d7cd8"
  },
  NotifyTRACETitle = {
    fg = "#9d7cd8"
  },
  NotifyWARNBody = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  NotifyWARNBorder = {
    bg = "#24283b",
    fg = "#5c5149"
  },
  NotifyWARNIcon = {
    fg = "#e0af68"
  },
  NotifyWARNTitle = {
    fg = "#e0af68"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#7aa2f7"
  },
  NvimTreeGitDeleted = {
    fg = "#914c54"
  },
  NvimTreeGitDirty = {
    fg = "#6183bb"
  },
  NvimTreeGitNew = {
    fg = "#449dab"
  },
  NvimTreeImageFile = {
    fg = "#a9b1d6"
  },
  NvimTreeIndentMarker = {
    fg = "#3b4261"
  },
  NvimTreeNormal = {
    bg = "#1f2335",
    fg = "#a9b1d6"
  },
  NvimTreeNormalNC = {
    bg = "#1f2335",
    fg = "#a9b1d6"
  },
  NvimTreeOpenedFile = {
    bg = "#292e42"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#7aa2f7"
  },
  NvimTreeSpecialFile = {
    fg = "#9d7cd8",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#7aa2f7"
  },
  NvimTreeWinSeparator = {
    bg = "#1f2335",
    fg = "#1f2335"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#2ac3de"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#ff9e64"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#9d7cd8"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#33334e",
    fg = "#bb9af7"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#2ac3de"
  },
  Operator = {
    fg = "#89ddff"
  },
  Pmenu = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  PmenuMatch = {
    bg = "#1f2335",
    fg = "#2ac3de"
  },
  PmenuMatchSel = {
    bg = "#363d59",
    fg = "#2ac3de"
  },
  PmenuSbar = {
    bg = "#272b3f"
  },
  PmenuSel = {
    bg = "#363d59"
  },
  PmenuThumb = {
    bg = "#3b4261"
  },
  PreProc = {
    fg = "#7dcfff"
  },
  Question = {
    fg = "#7aa2f7"
  },
  QuickFixLine = {
    bg = "#2e3c64",
    bold = true
  },
  RainbowDelimiterBlue = {
    fg = "#7aa2f7"
  },
  RainbowDelimiterCyan = {
    fg = "#7dcfff"
  },
  RainbowDelimiterGreen = {
    fg = "#9ece6a"
  },
  RainbowDelimiterOrange = {
    fg = "#ff9e64"
  },
  RainbowDelimiterRed = {
    fg = "#f7768e"
  },
  RainbowDelimiterViolet = {
    fg = "#9d7cd8"
  },
  RainbowDelimiterYellow = {
    fg = "#e0af68"
  },
  ReferencesCount = {
    fg = "#9d7cd8"
  },
  ReferencesIcon = {
    fg = "#7aa2f7"
  },
  RenderMarkdownBullet = {
    fg = "#ff9e64"
  },
  RenderMarkdownCode = {
    bg = "#1f2335"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#ff9e64"
  },
  RenderMarkdownH1Bg = {
    bg = "#2d344e"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#7aa2f7"
  },
  RenderMarkdownH2Bg = {
    bg = "#373640"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#e0af68"
  },
  RenderMarkdownH3Bg = {
    bg = "#303940"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#9ece6a"
  },
  RenderMarkdownH4Bg = {
    bg = "#233745"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#1abc9c"
  },
  RenderMarkdownH5Bg = {
    bg = "#33334e"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#bb9af7"
  },
  RenderMarkdownH6Bg = {
    bg = "#30304b"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#9d7cd8"
  },
  RenderMarkdownH7Bg = {
    bg = "#3a343f"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#ff9e64"
  },
  RenderMarkdownH8Bg = {
    bg = "#393043"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#f7768e"
  },
  RenderMarkdownTableHead = {
    fg = "#f7768e"
  },
  RenderMarkdownTableRow = {
    fg = "#ff9e64"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#db4b4b"
  },
  ScrollbarErrorHandle = {
    bg = "#292e42",
    fg = "#db4b4b"
  },
  ScrollbarHandle = {
    bg = "#292e42",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#1abc9c"
  },
  ScrollbarHintHandle = {
    bg = "#292e42",
    fg = "#1abc9c"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#0db9d7"
  },
  ScrollbarInfoHandle = {
    bg = "#292e42",
    fg = "#0db9d7"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#9d7cd8"
  },
  ScrollbarMiscHandle = {
    bg = "#292e42",
    fg = "#9d7cd8"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  ScrollbarSearchHandle = {
    bg = "#292e42",
    fg = "#ff9e64"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#e0af68"
  },
  ScrollbarWarnHandle = {
    bg = "#292e42",
    fg = "#e0af68"
  },
  Search = {
    bg = "#3d59a1",
    fg = "#c0caf5"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#449dab"
  },
  SidekickSignChange = {
    fg = "#6183bb"
  },
  SidekickSignDelete = {
    fg = "#914c54"
  },
  SignColumn = {
    bg = "#24283b",
    fg = "#3b4261"
  },
  SignColumnSB = {
    bg = "#1f2335",
    fg = "#3b4261"
  },
  SnacksDashboardDesc = {
    fg = "#7dcfff"
  },
  SnacksDashboardDir = {
    fg = "#545c7e"
  },
  SnacksDashboardFooter = {
    fg = "#2ac3de"
  },
  SnacksDashboardHeader = {
    fg = "#7aa2f7"
  },
  SnacksDashboardIcon = {
    fg = "#2ac3de"
  },
  SnacksDashboardKey = {
    fg = "#ff9e64"
  },
  SnacksDashboardSpecial = {
    fg = "#9d7cd8"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksIndent = {
    fg = "#3b4261",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#7aa2f7",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#e0af68",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#9ece6a",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#1abc9c",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#bb9af7",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#9d7cd8",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#ff9e64",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#f7768e",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#2ac3de",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#e0af68"
  },
  SnacksInputIcon = {
    fg = "#2ac3de"
  },
  SnacksInputTitle = {
    fg = "#e0af68"
  },
  SnacksNotifierBorderDebug = {
    bg = "#24283b",
    fg = "#383e5a"
  },
  SnacksNotifierBorderError = {
    bg = "#24283b",
    fg = "#6d3641"
  },
  SnacksNotifierBorderInfo = {
    bg = "#24283b",
    fg = "#1b6279"
  },
  SnacksNotifierBorderTrace = {
    bg = "#24283b",
    fg = "#544a7a"
  },
  SnacksNotifierBorderWarn = {
    bg = "#24283b",
    fg = "#6f5e4d"
  },
  SnacksNotifierDebug = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  SnacksNotifierError = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  SnacksNotifierIconDebug = {
    fg = "#565f89"
  },
  SnacksNotifierIconError = {
    fg = "#db4b4b"
  },
  SnacksNotifierIconInfo = {
    fg = "#0db9d7"
  },
  SnacksNotifierIconTrace = {
    fg = "#9d7cd8"
  },
  SnacksNotifierIconWarn = {
    fg = "#e0af68"
  },
  SnacksNotifierInfo = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  SnacksNotifierTitleDebug = {
    fg = "#565f89"
  },
  SnacksNotifierTitleError = {
    fg = "#db4b4b"
  },
  SnacksNotifierTitleInfo = {
    fg = "#0db9d7"
  },
  SnacksNotifierTitleTrace = {
    fg = "#9d7cd8"
  },
  SnacksNotifierTitleWarn = {
    fg = "#e0af68"
  },
  SnacksNotifierTrace = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  SnacksNotifierWarn = {
    bg = "#24283b",
    fg = "#c0caf5"
  },
  SnacksPickerBoxTitle = {
    bg = "#1f2335",
    fg = "#ff9e64"
  },
  SnacksPickerInputBorder = {
    bg = "#1f2335",
    fg = "#ff9e64"
  },
  SnacksPickerInputTitle = {
    bg = "#1f2335",
    fg = "#ff9e64"
  },
  SnacksPickerPickWin = {
    bg = "#3d59a1",
    bold = true,
    fg = "#c0caf5"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#ff007c",
    bold = true,
    fg = "#c0caf5"
  },
  SnacksPickerSelected = {
    fg = "#ff007c"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#25384b",
    fg = "#2ac3de"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#262c40",
    fg = "#545c7e"
  },
  SnacksProfilerIconInfo = {
    bg = "#26576c",
    fg = "#2ac3de"
  },
  SnacksProfilerIconTrace = {
    bg = "#2a334b",
    fg = "#545c7e"
  },
  SnacksZenIcon = {
    fg = "#9d7cd8"
  },
  Sneak = {
    bg = "#bb9af7",
    fg = "#292e42"
  },
  SneakScope = {
    bg = "#2e3c64"
  },
  Special = {
    fg = "#2ac3de"
  },
  SpecialKey = {
    fg = "#545c7e"
  },
  SpellBad = {
    sp = "#db4b4b",
    undercurl = true
  },
  SpellCap = {
    sp = "#e0af68",
    undercurl = true
  },
  SpellLocal = {
    sp = "#0db9d7",
    undercurl = true
  },
  SpellRare = {
    sp = "#1abc9c",
    undercurl = true
  },
  Statement = {
    fg = "#bb9af7"
  },
  StatusLine = {
    bg = "#1f2335",
    fg = "#a9b1d6"
  },
  StatusLineNC = {
    bg = "#1f2335",
    fg = "#3b4261"
  },
  String = {
    fg = "#9ece6a"
  },
  Substitute = {
    bg = "#f7768e",
    fg = "#1d202f"
  },
  SupermavenSuggestion = {
    fg = "#414868"
  },
  TabLine = {
    bg = "#1f2335",
    fg = "#3b4261"
  },
  TabLineFill = {
    bg = "#1d202f"
  },
  TabLineSel = {
    bg = "#7aa2f7",
    fg = "#1d202f"
  },
  TargetWord = {
    fg = "#7dcfff"
  },
  TelescopeBorder = {
    bg = "#1f2335",
    fg = "#29a4bd"
  },
  TelescopeNormal = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  TelescopePromptBorder = {
    bg = "#1f2335",
    fg = "#ff9e64"
  },
  TelescopePromptTitle = {
    bg = "#1f2335",
    fg = "#ff9e64"
  },
  TelescopeResultsComment = {
    fg = "#545c7e"
  },
  Title = {
    bold = true,
    fg = "#7aa2f7"
  },
  Todo = {
    bg = "#e0af68",
    fg = "#24283b"
  },
  TreesitterContext = {
    bg = "#363d59"
  },
  TroubleCount = {
    bg = "#3b4261",
    fg = "#bb9af7"
  },
  TroubleNormal = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  TroubleText = {
    fg = "#a9b1d6"
  },
  Type = {
    fg = "#2ac3de"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#1d202f"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#e0af68"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#7aa2f7"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#e0af68"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#9ece6a"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#1abc9c"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#bb9af7"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#9d7cd8"
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#ff9e64"
  },
  VimwikiHeader8 = {
    bg = "NONE",
    bold = true,
    fg = "#f7768e"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#e0af68"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#7aa2f7"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#7aa2f7"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#9ece6a"
  },
  Visual = {
    bg = "#2e3c64"
  },
  VisualNOS = {
    bg = "#2e3c64"
  },
  WarningMsg = {
    fg = "#e0af68"
  },
  WhichKey = {
    fg = "#7dcfff"
  },
  WhichKeyDesc = {
    fg = "#bb9af7"
  },
  WhichKeyGroup = {
    fg = "#7aa2f7"
  },
  WhichKeyNormal = {
    bg = "#1f2335"
  },
  WhichKeySeparator = {
    fg = "#565f89"
  },
  WhichKeyValue = {
    fg = "#737aa2"
  },
  Whitespace = {
    fg = "#3b4261"
  },
  WildMenu = {
    bg = "#2e3c64"
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = "#1d202f"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  debugBreakpoint = {
    bg = "#22374b",
    fg = "#0db9d7"
  },
  debugPC = {
    bg = "#1f2335"
  },
  diffAdded = {
    bg = "#2b485a",
    fg = "#449dab"
  },
  diffChanged = {
    bg = "#272d43",
    fg = "#6183bb"
  },
  diffFile = {
    fg = "#7aa2f7"
  },
  diffIndexLine = {
    fg = "#bb9af7"
  },
  diffLine = {
    fg = "#565f89"
  },
  diffNewFile = {
    bg = "#2b485a",
    fg = "#2ac3de"
  },
  diffOldFile = {
    bg = "#52313f",
    fg = "#2ac3de"
  },
  diffRemoved = {
    bg = "#52313f",
    fg = "#914c54"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#db4b4b"
  },
  healthSuccess = {
    fg = "#73daca"
  },
  healthWarning = {
    fg = "#e0af68"
  },
  helpCommand = {
    bg = "#414868",
    fg = "#7aa2f7"
  },
  helpExample = {
    fg = "#565f89"
  },
  htmlH1 = {
    bold = true,
    fg = "#bb9af7"
  },
  htmlH2 = {
    bold = true,
    fg = "#7aa2f7"
  },
  illuminatedCurWord = {
    bg = "#3b4261"
  },
  illuminatedWord = {
    bg = "#3b4261"
  },
  lCursor = {
    bg = "#c0caf5",
    fg = "#24283b"
  },
  qfFileName = {
    fg = "#7aa2f7"
  },
  qfLineNr = {
    fg = "#737aa2"
  }
}
