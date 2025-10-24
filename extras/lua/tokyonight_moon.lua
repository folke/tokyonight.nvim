local colors = {
  _name = "tokyonight_moon",
  _style = "moon",
  bg = "#222436",
  bg_dark = "#1e2030",
  bg_dark1 = "#191B29",
  bg_float = "#1e2030",
  bg_highlight = "#2f334d",
  bg_popup = "#1e2030",
  bg_search = "#3e68d7",
  bg_sidebar = "#1e2030",
  bg_statusline = "#1e2030",
  bg_visual = "#2d3f76",
  black = "#1b1d2b",
  blue = "#82aaff",
  blue0 = "#3e68d7",
  blue1 = "#65bcff",
  blue2 = "#0db9d7",
  blue5 = "#89ddff",
  blue6 = "#b4f9f8",
  blue7 = "#394b70",
  border = "#1b1d2b",
  border_highlight = "#589ed7",
  comment = "#636da6",
  cyan = "#86e1fc",
  dark3 = "#545c7e",
  dark5 = "#737aa2",
  diff = {
    add = "#2a4556",
    change = "#252a3f",
    delete = "#4b2a3d",
    text = "#394b70"
  },
  error = "#c53b53",
  fg = "#c8d3f5",
  fg_dark = "#828bb8",
  fg_float = "#c8d3f5",
  fg_gutter = "#3b4261",
  fg_sidebar = "#828bb8",
  git = {
    add = "#b8db87",
    change = "#7ca1f2",
    delete = "#e26a75",
    ignore = "#545c7e"
  },
  green = "#c3e88d",
  green1 = "#4fd6be",
  green2 = "#41a6b5",
  hint = "#4fd6be",
  info = "#0db9d7",
  magenta = "#c099ff",
  magenta2 = "#ff007c",
  none = "NONE",
  orange = "#ff966c",
  purple = "#fca7ea",
  rainbow = { "#82aaff", "#ffc777", "#c3e88d", "#4fd6be", "#c099ff", "#fca7ea", "#ff966c", "#ff757f" },
  red = "#ff757f",
  red1 = "#c53b53",
  teal = "#4fd6be",
  terminal = {
    black = "#1b1d2b",
    black_bright = "#444a73",
    blue = "#82aaff",
    blue_bright = "#9ab8ff",
    cyan = "#86e1fc",
    cyan_bright = "#b2ebff",
    green = "#c3e88d",
    green_bright = "#c7fb6d",
    magenta = "#c099ff",
    magenta_bright = "#caabff",
    red = "#ff757f",
    red_bright = "#ff8d94",
    white = "#828bb8",
    white_bright = "#c8d3f5",
    yellow = "#ffc777",
    yellow_bright = "#ffd8ab"
  },
  terminal_black = "#444a73",
  todo = "#82aaff",
  warning = "#ffc777",
  yellow = "#ffc777"
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
    fg = "#c53b53"
  },
  ["@comment.hint"] = {
    fg = "#4fd6be"
  },
  ["@comment.info"] = {
    fg = "#0db9d7"
  },
  ["@comment.note"] = {
    fg = "#4fd6be"
  },
  ["@comment.todo"] = {
    fg = "#82aaff"
  },
  ["@comment.warning"] = {
    fg = "#ffc777"
  },
  ["@constant"] = "Constant",
  ["@constant.builtin"] = "Special",
  ["@constant.macro"] = "Define",
  ["@constructor"] = {
    fg = "#c099ff"
  },
  ["@constructor.tsx"] = {
    fg = "#65bcff"
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
    fg = "#fca7ea",
    italic = true
  },
  ["@keyword.conditional"] = "Conditional",
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = "Exception",
  ["@keyword.function"] = {
    fg = "#c099ff"
  },
  ["@keyword.import"] = "Include",
  ["@keyword.operator"] = "@operator",
  ["@keyword.repeat"] = "Repeat",
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = "#82aaff"
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
    fg = "#83c3fc"
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
    sp = "#c53b53",
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
    fg = "#589ed7"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#589ed7"
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
    fg = "#82aaff"
  },
  ["@markup.heading.2.markdown"] = {
    bold = true,
    fg = "#ffc777"
  },
  ["@markup.heading.3.markdown"] = {
    bold = true,
    fg = "#c3e88d"
  },
  ["@markup.heading.4.markdown"] = {
    bold = true,
    fg = "#4fd6be"
  },
  ["@markup.heading.5.markdown"] = {
    bold = true,
    fg = "#c099ff"
  },
  ["@markup.heading.6.markdown"] = {
    bold = true,
    fg = "#fca7ea"
  },
  ["@markup.heading.7.markdown"] = {
    bold = true,
    fg = "#ff966c"
  },
  ["@markup.heading.8.markdown"] = {
    bold = true,
    fg = "#ff757f"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#4fd6be"
  },
  ["@markup.link.label"] = "SpecialChar",
  ["@markup.link.label.symbol"] = "Identifier",
  ["@markup.link.url"] = "Underlined",
  ["@markup.list"] = {
    fg = "#89ddff"
  },
  ["@markup.list.checked"] = {
    fg = "#4fd6be"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#ff966c"
  },
  ["@markup.list.unchecked"] = {
    fg = "#82aaff"
  },
  ["@markup.math"] = "Special",
  ["@markup.raw"] = "String",
  ["@markup.raw.markdown_inline"] = {
    bg = "#444a73",
    fg = "#82aaff"
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
    fg = "#ff757f"
  },
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.float"] = "Float",
  ["@operator"] = {
    fg = "#89ddff"
  },
  ["@property"] = {
    fg = "#4fd6be"
  },
  ["@punctuation.bracket"] = {
    fg = "#828bb8"
  },
  ["@punctuation.delimiter"] = {
    fg = "#89ddff"
  },
  ["@punctuation.special"] = {
    fg = "#89ddff"
  },
  ["@punctuation.special.markdown"] = {
    fg = "#ff966c"
  },
  ["@string"] = "String",
  ["@string.documentation"] = {
    fg = "#ffc777"
  },
  ["@string.escape"] = {
    fg = "#c099ff"
  },
  ["@string.regexp"] = {
    fg = "#b4f9f8"
  },
  ["@tag"] = "Label",
  ["@tag.attribute"] = "@property",
  ["@tag.delimiter"] = "Delimiter",
  ["@tag.delimiter.tsx"] = {
    fg = "#6582c3"
  },
  ["@tag.javascript"] = {
    fg = "#ff757f"
  },
  ["@tag.tsx"] = {
    fg = "#ff757f"
  },
  ["@type"] = "Type",
  ["@type.builtin"] = {
    fg = "#589ed7"
  },
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = "#c8d3f5"
  },
  ["@variable.builtin"] = {
    fg = "#ff757f"
  },
  ["@variable.member"] = {
    fg = "#4fd6be"
  },
  ["@variable.parameter"] = {
    fg = "#ffc777"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#f4c990"
  },
  ALEErrorSign = {
    fg = "#c53b53"
  },
  ALEWarningSign = {
    fg = "#ffc777"
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
    fg = "#c8d3f5"
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
    fg = "#86e1fc"
  },
  AlphaFooter = {
    fg = "#65bcff"
  },
  AlphaHeader = {
    fg = "#82aaff"
  },
  AlphaHeaderLabel = {
    fg = "#ff966c"
  },
  AlphaShortcut = {
    fg = "#ff966c"
  },
  BlinkCmpDoc = {
    bg = "#1e2030",
    fg = "#c8d3f5"
  },
  BlinkCmpDocBorder = {
    bg = "#1e2030",
    fg = "#589ed7"
  },
  BlinkCmpGhostText = {
    fg = "#444a73"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = "LspKindClass",
  BlinkCmpKindCodeium = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  BlinkCmpKindColor = "LspKindColor",
  BlinkCmpKindConstant = "LspKindConstant",
  BlinkCmpKindConstructor = "LspKindConstructor",
  BlinkCmpKindCopilot = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  BlinkCmpKindDefault = {
    bg = "NONE",
    fg = "#828bb8"
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
    fg = "#4fd6be"
  },
  BlinkCmpKindTabNine = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  BlinkCmpKindText = "LspKindText",
  BlinkCmpKindTypeParameter = "LspKindTypeParameter",
  BlinkCmpKindUnit = "LspKindUnit",
  BlinkCmpKindValue = "LspKindValue",
  BlinkCmpKindVariable = "LspKindVariable",
  BlinkCmpLabel = {
    bg = "NONE",
    fg = "#c8d3f5"
  },
  BlinkCmpLabelDeprecated = {
    bg = "NONE",
    fg = "#3b4261",
    strikethrough = true
  },
  BlinkCmpLabelMatch = {
    bg = "NONE",
    fg = "#65bcff"
  },
  BlinkCmpMenu = {
    bg = "#1e2030",
    fg = "#c8d3f5"
  },
  BlinkCmpMenuBorder = {
    bg = "#1e2030",
    fg = "#589ed7"
  },
  BlinkCmpSignatureHelp = {
    bg = "#1e2030",
    fg = "#c8d3f5"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#1e2030",
    fg = "#589ed7"
  },
  Bold = {
    bold = true,
    fg = "#c8d3f5"
  },
  BufferAlternate = {
    bg = "#3b4261",
    fg = "#c8d3f5"
  },
  BufferAlternateERROR = {
    bg = "#3b4261",
    fg = "#c53b53"
  },
  BufferAlternateHINT = {
    bg = "#3b4261",
    fg = "#4fd6be"
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
    fg = "#ffc777"
  },
  BufferAlternateSign = {
    bg = "#3b4261",
    fg = "#0db9d7"
  },
  BufferAlternateTarget = {
    bg = "#3b4261",
    fg = "#ff757f"
  },
  BufferAlternateWARN = {
    bg = "#3b4261",
    fg = "#ffc777"
  },
  BufferCurrent = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  BufferCurrentERROR = {
    bg = "#222436",
    fg = "#c53b53"
  },
  BufferCurrentHINT = {
    bg = "#222436",
    fg = "#4fd6be"
  },
  BufferCurrentINFO = {
    bg = "#222436",
    fg = "#0db9d7"
  },
  BufferCurrentIndex = {
    bg = "#222436",
    fg = "#0db9d7"
  },
  BufferCurrentMod = {
    bg = "#222436",
    fg = "#ffc777"
  },
  BufferCurrentSign = {
    bg = "#222436",
    fg = "#222436"
  },
  BufferCurrentTarget = {
    bg = "#222436",
    fg = "#ff757f"
  },
  BufferCurrentWARN = {
    bg = "#222436",
    fg = "#ffc777"
  },
  BufferInactive = {
    bg = "#272a3f",
    fg = "#63698c"
  },
  BufferInactiveERROR = {
    bg = "#272a3f",
    fg = "#a4364d"
  },
  BufferInactiveHINT = {
    bg = "#272a3f",
    fg = "#46b2a3"
  },
  BufferInactiveINFO = {
    bg = "#272a3f",
    fg = "#119bb7"
  },
  BufferInactiveIndex = {
    bg = "#272a3f",
    fg = "#737aa2"
  },
  BufferInactiveMod = {
    bg = "#272a3f",
    fg = "#d3a66a"
  },
  BufferInactiveSign = {
    bg = "#272a3f",
    fg = "#222436"
  },
  BufferInactiveTarget = {
    bg = "#272a3f",
    fg = "#ff757f"
  },
  BufferInactiveWARN = {
    bg = "#272a3f",
    fg = "#d3a66a"
  },
  BufferLineIndicatorSelected = {
    fg = "#7ca1f2"
  },
  BufferOffset = {
    bg = "#1e2030",
    fg = "#737aa2"
  },
  BufferTabpageFill = {
    bg = "#2c3048",
    fg = "#737aa2"
  },
  BufferTabpages = {
    bg = "#1e2030",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#1e2030",
    fg = "#c8d3f5"
  },
  BufferVisibleERROR = {
    bg = "#1e2030",
    fg = "#c53b53"
  },
  BufferVisibleHINT = {
    bg = "#1e2030",
    fg = "#4fd6be"
  },
  BufferVisibleINFO = {
    bg = "#1e2030",
    fg = "#0db9d7"
  },
  BufferVisibleIndex = {
    bg = "#1e2030",
    fg = "#0db9d7"
  },
  BufferVisibleMod = {
    bg = "#1e2030",
    fg = "#ffc777"
  },
  BufferVisibleSign = {
    bg = "#1e2030",
    fg = "#0db9d7"
  },
  BufferVisibleTarget = {
    bg = "#1e2030",
    fg = "#ff757f"
  },
  BufferVisibleWARN = {
    bg = "#1e2030",
    fg = "#ffc777"
  },
  Character = {
    fg = "#c3e88d"
  },
  CmpDocumentation = {
    bg = "#1e2030",
    fg = "#c8d3f5"
  },
  CmpDocumentationBorder = {
    bg = "#1e2030",
    fg = "#589ed7"
  },
  CmpGhostText = {
    fg = "#444a73"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#c8d3f5"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#3b4261",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#65bcff"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#65bcff"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = "LspKindClass",
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  CmpItemKindColor = "LspKindColor",
  CmpItemKindConstant = "LspKindConstant",
  CmpItemKindConstructor = "LspKindConstructor",
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#828bb8"
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
    fg = "#4fd6be"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  CmpItemKindText = "LspKindText",
  CmpItemKindTypeParameter = "LspKindTypeParameter",
  CmpItemKindUnit = "LspKindUnit",
  CmpItemKindValue = "LspKindValue",
  CmpItemKindVariable = "LspKindVariable",
  CmpItemMenu = {
    bg = "NONE",
    fg = "#636da6"
  },
  CodeBlock = {
    bg = "#1e2030"
  },
  CodeiumSuggestion = {
    fg = "#444a73"
  },
  ColorColumn = {
    bg = "#1b1d2b"
  },
  Comment = {
    fg = "#636da6",
    italic = true
  },
  ComplHint = {
    fg = "#444a73"
  },
  Conceal = {
    fg = "#737aa2"
  },
  Constant = {
    fg = "#ff966c"
  },
  CopilotAnnotation = {
    fg = "#444a73"
  },
  CopilotSuggestion = {
    fg = "#444a73"
  },
  CurSearch = "IncSearch",
  Cursor = {
    bg = "#c8d3f5",
    fg = "#222436"
  },
  CursorColumn = {
    bg = "#2f334d"
  },
  CursorIM = {
    bg = "#c8d3f5",
    fg = "#222436"
  },
  CursorLine = {
    bg = "#2f334d"
  },
  CursorLineNr = {
    bold = true,
    fg = "#ff966c"
  },
  DapStoppedLine = {
    bg = "#38343d"
  },
  DashboardDesc = {
    fg = "#86e1fc"
  },
  DashboardFiles = {
    fg = "#82aaff"
  },
  DashboardFooter = {
    fg = "#65bcff"
  },
  DashboardHeader = {
    fg = "#82aaff"
  },
  DashboardIcon = {
    fg = "#86e1fc"
  },
  DashboardKey = {
    fg = "#ff966c"
  },
  DashboardMruIcon = {
    fg = "#fca7ea"
  },
  DashboardMruTitle = {
    fg = "#86e1fc"
  },
  DashboardProjectIcon = {
    fg = "#ffc777"
  },
  DashboardProjectTitle = {
    fg = "#86e1fc"
  },
  DashboardProjectTitleIcon = {
    fg = "#ff966c"
  },
  DashboardShortCut = {
    fg = "#86e1fc"
  },
  DashboardShortCutIcon = {
    fg = "#c099ff"
  },
  Debug = {
    fg = "#ff966c"
  },
  DefinitionCount = {
    fg = "#fca7ea"
  },
  DefinitionIcon = {
    fg = "#82aaff"
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#c53b53"
  },
  DiagnosticHint = {
    fg = "#4fd6be"
  },
  DiagnosticInfo = {
    fg = "#0db9d7"
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticUnderlineError = {
    sp = "#c53b53",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#4fd6be",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#0db9d7",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#ffc777",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#444a73"
  },
  DiagnosticVirtualTextError = {
    bg = "#322639",
    fg = "#c53b53"
  },
  DiagnosticVirtualTextHint = {
    bg = "#273644",
    fg = "#4fd6be"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#203346",
    fg = "#0db9d7"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#38343d",
    fg = "#ffc777"
  },
  DiagnosticWarn = {
    fg = "#ffc777"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#2a4556"
  },
  DiffChange = {
    bg = "#252a3f"
  },
  DiffDelete = {
    bg = "#4b2a3d"
  },
  DiffText = {
    bg = "#394b70"
  },
  Directory = {
    fg = "#82aaff"
  },
  EndOfBuffer = {
    fg = "#222436"
  },
  Error = {
    fg = "#c53b53"
  },
  ErrorMsg = {
    fg = "#c53b53"
  },
  FlashBackdrop = {
    fg = "#545c7e"
  },
  FlashLabel = {
    bg = "#ff007c",
    bold = true,
    fg = "#c8d3f5"
  },
  FloatBorder = {
    bg = "#1e2030",
    fg = "#589ed7"
  },
  FloatTitle = {
    bg = "#1e2030",
    fg = "#589ed7"
  },
  FoldColumn = {
    bg = "#222436",
    fg = "#636da6"
  },
  Folded = {
    bg = "#3b4261",
    fg = "#82aaff"
  },
  Foo = {
    bg = "#ff007c",
    fg = "#c8d3f5"
  },
  Function = {
    fg = "#82aaff"
  },
  FzfLuaBorder = {
    bg = "#1e2030",
    fg = "#589ed7"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#828bb8"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#c8d3f5"
  },
  FzfLuaFzfPointer = {
    fg = "#ff007c"
  },
  FzfLuaFzfSeparator = {
    bg = "#1e2030",
    fg = "#ff966c"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#1e2030",
    fg = "#c8d3f5"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#1e2030",
    fg = "#589ed7"
  },
  FzfLuaTitle = {
    bg = "#1e2030",
    fg = "#ff966c"
  },
  GitGutterAdd = {
    fg = "#b8db87"
  },
  GitGutterAddLineNr = {
    fg = "#b8db87"
  },
  GitGutterChange = {
    fg = "#7ca1f2"
  },
  GitGutterChangeLineNr = {
    fg = "#7ca1f2"
  },
  GitGutterDelete = {
    fg = "#e26a75"
  },
  GitGutterDeleteLineNr = {
    fg = "#e26a75"
  },
  GitSignsAdd = {
    fg = "#b8db87"
  },
  GitSignsChange = {
    fg = "#7ca1f2"
  },
  GitSignsDelete = {
    fg = "#e26a75"
  },
  GlyphPalette1 = {
    fg = "#c53b53"
  },
  GlyphPalette2 = {
    fg = "#c3e88d"
  },
  GlyphPalette3 = {
    fg = "#ffc777"
  },
  GlyphPalette4 = {
    fg = "#82aaff"
  },
  GlyphPalette6 = {
    fg = "#4fd6be"
  },
  GlyphPalette7 = {
    fg = "#c8d3f5"
  },
  GlyphPalette9 = {
    fg = "#ff757f"
  },
  GrugFarHelpHeader = {
    fg = "#636da6"
  },
  GrugFarHelpHeaderKey = {
    fg = "#86e1fc"
  },
  GrugFarInputLabel = {
    fg = "#65bcff"
  },
  GrugFarInputPlaceholder = {
    fg = "#545c7e"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#7ca1f2"
  },
  GrugFarResultsHeader = {
    fg = "#ff966c"
  },
  GrugFarResultsLineColumn = {
    fg = "#545c7e"
  },
  GrugFarResultsLineNo = {
    fg = "#545c7e"
  },
  GrugFarResultsMatch = {
    bg = "#ff757f",
    fg = "#1b1d2b"
  },
  GrugFarResultsStats = {
    fg = "#82aaff"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#272b40"
  },
  Headline2 = {
    bg = "#2d2c39"
  },
  Headline3 = {
    bg = "#2a2e3a"
  },
  Headline4 = {
    bg = "#242d3d"
  },
  Headline5 = {
    bg = "#2a2a40"
  },
  Headline6 = {
    bg = "#2d2b3f"
  },
  Headline7 = {
    bg = "#2d2a39"
  },
  Headline8 = {
    bg = "#2d283a"
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
    fg = "#157d97"
  },
  HopUnmatched = {
    fg = "#545c7e"
  },
  IblIndent = {
    fg = "#3b4261",
    nocombine = true
  },
  IblScope = {
    fg = "#65bcff",
    nocombine = true
  },
  Identifier = {
    fg = "#c099ff"
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
    bg = "#ff966c",
    fg = "#1b1d2b"
  },
  IndentBlanklineChar = {
    fg = "#3b4261",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#65bcff",
    nocombine = true
  },
  IndentLine = {
    fg = "#3b4261",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#65bcff",
    nocombine = true
  },
  Italic = {
    fg = "#c8d3f5",
    italic = true
  },
  Keyword = {
    fg = "#86e1fc",
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
    fg = "#c8d3f5"
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
    fg = "#636da6"
  },
  LspFloatWinBorder = {
    fg = "#589ed7"
  },
  LspFloatWinNormal = {
    bg = "#1e2030"
  },
  LspInfoBorder = {
    bg = "#1e2030",
    fg = "#589ed7"
  },
  LspInlayHint = {
    bg = "#24283c",
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
    fg = "#86e1fc"
  },
  LspSagaCodeActionBorder = {
    fg = "#82aaff"
  },
  LspSagaCodeActionContent = {
    fg = "#fca7ea"
  },
  LspSagaCodeActionTitle = {
    fg = "#65bcff"
  },
  LspSagaDefPreviewBorder = {
    fg = "#c3e88d"
  },
  LspSagaFinderSelection = {
    fg = "#2d3f76"
  },
  LspSagaHoverBorder = {
    fg = "#82aaff"
  },
  LspSagaRenameBorder = {
    fg = "#c3e88d"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#ff757f"
  },
  LspSignatureActiveParameter = {
    bg = "#262f50",
    bold = true
  },
  MatchParen = {
    bold = true,
    fg = "#ff966c"
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
    bg = "#e26a75",
    fg = "#1b1d2b"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#b8db87",
    fg = "#1b1d2b"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#b8db87"
  },
  MiniDiffSignChange = {
    fg = "#7ca1f2"
  },
  MiniDiffSignDelete = {
    fg = "#e26a75"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#c8d3f5"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#1e2030",
    bold = true,
    fg = "#589ed7"
  },
  MiniHipatternsFixme = {
    bg = "#c53b53",
    bold = true,
    fg = "#1b1d2b"
  },
  MiniHipatternsHack = {
    bg = "#ffc777",
    bold = true,
    fg = "#1b1d2b"
  },
  MiniHipatternsNote = {
    bg = "#4fd6be",
    bold = true,
    fg = "#1b1d2b"
  },
  MiniHipatternsTodo = {
    bg = "#0db9d7",
    bold = true,
    fg = "#1b1d2b"
  },
  MiniIconsAzure = {
    fg = "#0db9d7"
  },
  MiniIconsBlue = {
    fg = "#82aaff"
  },
  MiniIconsCyan = {
    fg = "#4fd6be"
  },
  MiniIconsGreen = {
    fg = "#c3e88d"
  },
  MiniIconsGrey = {
    fg = "#c8d3f5"
  },
  MiniIconsOrange = {
    fg = "#ff966c"
  },
  MiniIconsPurple = {
    fg = "#fca7ea"
  },
  MiniIconsRed = {
    fg = "#ff757f"
  },
  MiniIconsYellow = {
    fg = "#ffc777"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#65bcff",
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
    bg = "#1e2030",
    fg = "#4fd6be",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#ff966c",
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
    bg = "#1e2030",
    fg = "#4fd6be"
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
    bg = "#1e2030",
    fg = "#0db9d7"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#ffc777",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#82aaff"
  },
  MiniStarterInactive = {
    fg = "#636da6",
    italic = true
  },
  MiniStarterItem = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  MiniStarterItemBullet = {
    fg = "#589ed7"
  },
  MiniStarterItemPrefix = {
    fg = "#ffc777"
  },
  MiniStarterQuery = {
    fg = "#0db9d7"
  },
  MiniStarterSection = {
    fg = "#65bcff"
  },
  MiniStatuslineDevinfo = {
    bg = "#3b4261",
    fg = "#828bb8"
  },
  MiniStatuslineFileinfo = {
    bg = "#3b4261",
    fg = "#828bb8"
  },
  MiniStatuslineFilename = {
    bg = "#2f334d",
    fg = "#828bb8"
  },
  MiniStatuslineInactive = {
    bg = "#1e2030",
    fg = "#82aaff"
  },
  MiniStatuslineModeCommand = {
    bg = "#ffc777",
    bold = true,
    fg = "#1b1d2b"
  },
  MiniStatuslineModeInsert = {
    bg = "#c3e88d",
    bold = true,
    fg = "#1b1d2b"
  },
  MiniStatuslineModeNormal = {
    bg = "#82aaff",
    bold = true,
    fg = "#1b1d2b"
  },
  MiniStatuslineModeOther = {
    bg = "#4fd6be",
    bold = true,
    fg = "#1b1d2b"
  },
  MiniStatuslineModeReplace = {
    bg = "#ff757f",
    bold = true,
    fg = "#1b1d2b"
  },
  MiniStatuslineModeVisual = {
    bg = "#c099ff",
    bold = true,
    fg = "#1b1d2b"
  },
  MiniSurround = {
    bg = "#ff966c",
    fg = "#1b1d2b"
  },
  MiniTablineCurrent = {
    bg = "#3b4261",
    fg = "#c8d3f5"
  },
  MiniTablineFill = {
    bg = "#1b1d2b"
  },
  MiniTablineHidden = {
    bg = "#1e2030",
    fg = "#737aa2"
  },
  MiniTablineModifiedCurrent = {
    bg = "#3b4261",
    fg = "#ffc777"
  },
  MiniTablineModifiedHidden = {
    bg = "#1e2030",
    fg = "#bd9664"
  },
  MiniTablineModifiedVisible = {
    bg = "#1e2030",
    fg = "#ffc777"
  },
  MiniTablineTabpagesection = {
    bg = "#3b4261",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#1e2030",
    fg = "#c8d3f5"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#ff757f"
  },
  MiniTestPass = {
    bold = true,
    fg = "#c3e88d"
  },
  MiniTrailspace = {
    bg = "#ff757f"
  },
  ModeMsg = {
    bold = true,
    fg = "#828bb8"
  },
  MoreMsg = {
    fg = "#82aaff"
  },
  MsgArea = {
    fg = "#828bb8"
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
    fg = "#c8d3f5"
  },
  NavicText = {
    bg = "NONE",
    fg = "#c8d3f5"
  },
  NeoTreeDimText = {
    fg = "#3b4261"
  },
  NeoTreeFileName = {
    fg = "#828bb8"
  },
  NeoTreeGitModified = {
    fg = "#ff966c"
  },
  NeoTreeGitStaged = {
    fg = "#4fd6be"
  },
  NeoTreeGitUntracked = {
    fg = "#c099ff"
  },
  NeoTreeNormal = {
    bg = "#1e2030",
    fg = "#828bb8"
  },
  NeoTreeNormalNC = {
    bg = "#1e2030",
    fg = "#828bb8"
  },
  NeoTreeTabActive = {
    bg = "#1e2030",
    bold = true,
    fg = "#82aaff"
  },
  NeoTreeTabInactive = {
    bg = "#181a26",
    fg = "#545c7e"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#1e2030",
    fg = "#82aaff"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#181a26",
    fg = "#222436"
  },
  NeogitBranch = {
    fg = "#c099ff"
  },
  NeogitDiffAddHighlight = {
    bg = "#2a4556",
    fg = "#b8db87"
  },
  NeogitDiffContextHighlight = {
    bg = "#2f334c",
    fg = "#828bb8"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#4b2a3d",
    fg = "#e26a75"
  },
  NeogitHunkHeader = {
    bg = "#2f334d",
    fg = "#c8d3f5"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#3b4261",
    fg = "#82aaff"
  },
  NeogitRemote = {
    fg = "#fca7ea"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#fca7ea"
  },
  NeotestBorder = {
    fg = "#82aaff"
  },
  NeotestDir = {
    fg = "#82aaff"
  },
  NeotestExpandMarker = {
    fg = "#828bb8"
  },
  NeotestFailed = {
    fg = "#ff757f"
  },
  NeotestFile = {
    fg = "#4fd6be"
  },
  NeotestFocused = {
    fg = "#ffc777"
  },
  NeotestIndent = {
    fg = "#828bb8"
  },
  NeotestMarked = {
    fg = "#82aaff"
  },
  NeotestNamespace = {
    fg = "#41a6b5"
  },
  NeotestPassed = {
    fg = "#c3e88d"
  },
  NeotestRunning = {
    fg = "#ffc777"
  },
  NeotestSkipped = {
    fg = "#82aaff"
  },
  NeotestTarget = {
    fg = "#82aaff"
  },
  NeotestTest = {
    fg = "#828bb8"
  },
  NeotestWinSelect = {
    fg = "#82aaff"
  },
  NoiceCmdlineIconInput = {
    fg = "#ffc777"
  },
  NoiceCmdlineIconLua = {
    fg = "#65bcff"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#ffc777"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#65bcff"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#ffc777"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#65bcff"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#828bb8"
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
    bg = "#222436",
    fg = "#c8d3f5"
  },
  NormalFloat = {
    bg = "#1e2030",
    fg = "#c8d3f5"
  },
  NormalNC = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  NormalSB = {
    bg = "#1e2030",
    fg = "#828bb8"
  },
  NotifyBackground = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  NotifyDEBUGBody = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  NotifyDEBUGBorder = {
    bg = "#222436",
    fg = "#363a58"
  },
  NotifyDEBUGIcon = {
    fg = "#636da6"
  },
  NotifyDEBUGTitle = {
    fg = "#636da6"
  },
  NotifyERRORBody = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  NotifyERRORBorder = {
    bg = "#222436",
    fg = "#532b3f"
  },
  NotifyERRORIcon = {
    fg = "#c53b53"
  },
  NotifyERRORTitle = {
    fg = "#c53b53"
  },
  NotifyINFOBody = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  NotifyINFOBorder = {
    bg = "#222436",
    fg = "#1c5166"
  },
  NotifyINFOIcon = {
    fg = "#0db9d7"
  },
  NotifyINFOTitle = {
    fg = "#0db9d7"
  },
  NotifyTRACEBody = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  NotifyTRACEBorder = {
    bg = "#222436",
    fg = "#634b6c"
  },
  NotifyTRACEIcon = {
    fg = "#fca7ea"
  },
  NotifyTRACETitle = {
    fg = "#fca7ea"
  },
  NotifyWARNBody = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  NotifyWARNBorder = {
    bg = "#222436",
    fg = "#64554a"
  },
  NotifyWARNIcon = {
    fg = "#ffc777"
  },
  NotifyWARNTitle = {
    fg = "#ffc777"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#82aaff"
  },
  NvimTreeGitDeleted = {
    fg = "#e26a75"
  },
  NvimTreeGitDirty = {
    fg = "#7ca1f2"
  },
  NvimTreeGitNew = {
    fg = "#b8db87"
  },
  NvimTreeImageFile = {
    fg = "#828bb8"
  },
  NvimTreeIndentMarker = {
    fg = "#3b4261"
  },
  NvimTreeNormal = {
    bg = "#1e2030",
    fg = "#828bb8"
  },
  NvimTreeNormalNC = {
    bg = "#1e2030",
    fg = "#828bb8"
  },
  NvimTreeOpenedFile = {
    bg = "#2f334d"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#82aaff"
  },
  NvimTreeSpecialFile = {
    fg = "#fca7ea",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#82aaff"
  },
  NvimTreeWinSeparator = {
    bg = "#1e2030",
    fg = "#1e2030"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#65bcff"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#ff966c"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#fca7ea"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#32304a",
    fg = "#c099ff"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#65bcff"
  },
  Operator = {
    fg = "#89ddff"
  },
  Pmenu = {
    bg = "#1e2030",
    fg = "#c8d3f5"
  },
  PmenuMatch = {
    bg = "#1e2030",
    fg = "#65bcff"
  },
  PmenuMatchSel = {
    bg = "#363c58",
    fg = "#65bcff"
  },
  PmenuSbar = {
    bg = "#27293a"
  },
  PmenuSel = {
    bg = "#363c58"
  },
  PmenuThumb = {
    bg = "#3b4261"
  },
  PreProc = {
    fg = "#86e1fc"
  },
  Question = {
    fg = "#82aaff"
  },
  QuickFixLine = {
    bg = "#2d3f76",
    bold = true
  },
  RainbowDelimiterBlue = {
    fg = "#82aaff"
  },
  RainbowDelimiterCyan = {
    fg = "#86e1fc"
  },
  RainbowDelimiterGreen = {
    fg = "#c3e88d"
  },
  RainbowDelimiterOrange = {
    fg = "#ff966c"
  },
  RainbowDelimiterRed = {
    fg = "#ff757f"
  },
  RainbowDelimiterViolet = {
    fg = "#fca7ea"
  },
  RainbowDelimiterYellow = {
    fg = "#ffc777"
  },
  ReferencesCount = {
    fg = "#fca7ea"
  },
  ReferencesIcon = {
    fg = "#82aaff"
  },
  RenderMarkdownBullet = {
    fg = "#ff966c"
  },
  RenderMarkdownCode = {
    bg = "#1e2030"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#ff966c"
  },
  RenderMarkdownH1Bg = {
    bg = "#2c314a"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#82aaff"
  },
  RenderMarkdownH2Bg = {
    bg = "#38343d"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#ffc777"
  },
  RenderMarkdownH3Bg = {
    bg = "#32383f"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#c3e88d"
  },
  RenderMarkdownH4Bg = {
    bg = "#273644"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#4fd6be"
  },
  RenderMarkdownH5Bg = {
    bg = "#32304a"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#c099ff"
  },
  RenderMarkdownH6Bg = {
    bg = "#383148"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#fca7ea"
  },
  RenderMarkdownH7Bg = {
    bg = "#382f3b"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#ff966c"
  },
  RenderMarkdownH8Bg = {
    bg = "#382c3d"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#ff757f"
  },
  RenderMarkdownTableHead = {
    fg = "#ff757f"
  },
  RenderMarkdownTableRow = {
    fg = "#ff966c"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#c53b53"
  },
  ScrollbarErrorHandle = {
    bg = "#2f334d",
    fg = "#c53b53"
  },
  ScrollbarHandle = {
    bg = "#2f334d",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  ScrollbarHintHandle = {
    bg = "#2f334d",
    fg = "#4fd6be"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#0db9d7"
  },
  ScrollbarInfoHandle = {
    bg = "#2f334d",
    fg = "#0db9d7"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#fca7ea"
  },
  ScrollbarMiscHandle = {
    bg = "#2f334d",
    fg = "#fca7ea"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#ff966c"
  },
  ScrollbarSearchHandle = {
    bg = "#2f334d",
    fg = "#ff966c"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#ffc777"
  },
  ScrollbarWarnHandle = {
    bg = "#2f334d",
    fg = "#ffc777"
  },
  Search = {
    bg = "#3e68d7",
    fg = "#c8d3f5"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#b8db87"
  },
  SidekickSignChange = {
    fg = "#7ca1f2"
  },
  SidekickSignDelete = {
    fg = "#e26a75"
  },
  SignColumn = {
    bg = "#222436",
    fg = "#3b4261"
  },
  SignColumnSB = {
    bg = "#1e2030",
    fg = "#3b4261"
  },
  SnacksDashboardDesc = {
    fg = "#86e1fc"
  },
  SnacksDashboardDir = {
    fg = "#545c7e"
  },
  SnacksDashboardFooter = {
    fg = "#65bcff"
  },
  SnacksDashboardHeader = {
    fg = "#82aaff"
  },
  SnacksDashboardIcon = {
    fg = "#65bcff"
  },
  SnacksDashboardKey = {
    fg = "#ff966c"
  },
  SnacksDashboardSpecial = {
    fg = "#fca7ea"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksIndent = {
    fg = "#3b4261",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#82aaff",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#ffc777",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#c3e88d",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#4fd6be",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#c099ff",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#fca7ea",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#ff966c",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#ff757f",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#65bcff",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#ffc777"
  },
  SnacksInputIcon = {
    fg = "#65bcff"
  },
  SnacksInputTitle = {
    fg = "#ffc777"
  },
  SnacksNotifierBorderDebug = {
    bg = "#222436",
    fg = "#3c4163"
  },
  SnacksNotifierBorderError = {
    bg = "#222436",
    fg = "#632d42"
  },
  SnacksNotifierBorderInfo = {
    bg = "#222436",
    fg = "#1a6076"
  },
  SnacksNotifierBorderTrace = {
    bg = "#222436",
    fg = "#79587e"
  },
  SnacksNotifierBorderWarn = {
    bg = "#222436",
    fg = "#7a6550"
  },
  SnacksNotifierDebug = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  SnacksNotifierError = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  SnacksNotifierIconDebug = {
    fg = "#636da6"
  },
  SnacksNotifierIconError = {
    fg = "#c53b53"
  },
  SnacksNotifierIconInfo = {
    fg = "#0db9d7"
  },
  SnacksNotifierIconTrace = {
    fg = "#fca7ea"
  },
  SnacksNotifierIconWarn = {
    fg = "#ffc777"
  },
  SnacksNotifierInfo = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  SnacksNotifierTitleDebug = {
    fg = "#636da6"
  },
  SnacksNotifierTitleError = {
    fg = "#c53b53"
  },
  SnacksNotifierTitleInfo = {
    fg = "#0db9d7"
  },
  SnacksNotifierTitleTrace = {
    fg = "#fca7ea"
  },
  SnacksNotifierTitleWarn = {
    fg = "#ffc777"
  },
  SnacksNotifierTrace = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  SnacksNotifierWarn = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  SnacksPickerBoxTitle = {
    bg = "#1e2030",
    fg = "#ff966c"
  },
  SnacksPickerInputBorder = {
    bg = "#1e2030",
    fg = "#ff966c"
  },
  SnacksPickerInputTitle = {
    bg = "#1e2030",
    fg = "#ff966c"
  },
  SnacksPickerPickWin = {
    bg = "#3e68d7",
    bold = true,
    fg = "#c8d3f5"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#ff007c",
    bold = true,
    fg = "#c8d3f5"
  },
  SnacksPickerSelected = {
    fg = "#ff007c"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#29334a",
    fg = "#65bcff"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#24283c",
    fg = "#545c7e"
  },
  SnacksProfilerIconInfo = {
    bg = "#365272",
    fg = "#65bcff"
  },
  SnacksProfilerIconTrace = {
    bg = "#293047",
    fg = "#545c7e"
  },
  SnacksZenIcon = {
    fg = "#fca7ea"
  },
  Sneak = {
    bg = "#c099ff",
    fg = "#2f334d"
  },
  SneakScope = {
    bg = "#2d3f76"
  },
  Special = {
    fg = "#65bcff"
  },
  SpecialKey = {
    fg = "#545c7e"
  },
  SpellBad = {
    sp = "#c53b53",
    undercurl = true
  },
  SpellCap = {
    sp = "#ffc777",
    undercurl = true
  },
  SpellLocal = {
    sp = "#0db9d7",
    undercurl = true
  },
  SpellRare = {
    sp = "#4fd6be",
    undercurl = true
  },
  Statement = {
    fg = "#c099ff"
  },
  StatusLine = {
    bg = "#1e2030",
    fg = "#828bb8"
  },
  StatusLineNC = {
    bg = "#1e2030",
    fg = "#3b4261"
  },
  String = {
    fg = "#c3e88d"
  },
  Substitute = {
    bg = "#ff757f",
    fg = "#1b1d2b"
  },
  SupermavenSuggestion = {
    fg = "#444a73"
  },
  TabLine = {
    bg = "#1e2030",
    fg = "#3b4261"
  },
  TabLineFill = {
    bg = "#1b1d2b"
  },
  TabLineSel = {
    bg = "#82aaff",
    fg = "#1b1d2b"
  },
  TargetWord = {
    fg = "#86e1fc"
  },
  TelescopeBorder = {
    bg = "#1e2030",
    fg = "#589ed7"
  },
  TelescopeNormal = {
    bg = "#1e2030",
    fg = "#c8d3f5"
  },
  TelescopePromptBorder = {
    bg = "#1e2030",
    fg = "#ff966c"
  },
  TelescopePromptTitle = {
    bg = "#1e2030",
    fg = "#ff966c"
  },
  TelescopeResultsComment = {
    fg = "#545c7e"
  },
  Title = {
    bold = true,
    fg = "#82aaff"
  },
  Todo = {
    bg = "#ffc777",
    fg = "#222436"
  },
  TreesitterContext = {
    bg = "#363c58"
  },
  TroubleCount = {
    bg = "#3b4261",
    fg = "#c099ff"
  },
  TroubleNormal = {
    bg = "#1e2030",
    fg = "#c8d3f5"
  },
  TroubleText = {
    fg = "#828bb8"
  },
  Type = {
    fg = "#65bcff"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#1b1d2b"
  },
  VimwikiHR = {
    bg = "NONE",
    fg = "#ffc777"
  },
  VimwikiHeader1 = {
    bg = "NONE",
    bold = true,
    fg = "#82aaff"
  },
  VimwikiHeader2 = {
    bg = "NONE",
    bold = true,
    fg = "#ffc777"
  },
  VimwikiHeader3 = {
    bg = "NONE",
    bold = true,
    fg = "#c3e88d"
  },
  VimwikiHeader4 = {
    bg = "NONE",
    bold = true,
    fg = "#4fd6be"
  },
  VimwikiHeader5 = {
    bg = "NONE",
    bold = true,
    fg = "#c099ff"
  },
  VimwikiHeader6 = {
    bg = "NONE",
    bold = true,
    fg = "#fca7ea"
  },
  VimwikiHeader7 = {
    bg = "NONE",
    bold = true,
    fg = "#ff966c"
  },
  VimwikiHeader8 = {
    bg = "NONE",
    bold = true,
    fg = "#ff757f"
  },
  VimwikiHeaderChar = {
    bg = "NONE",
    fg = "#ffc777"
  },
  VimwikiLink = {
    bg = "NONE",
    fg = "#82aaff"
  },
  VimwikiList = {
    bg = "NONE",
    fg = "#ff966c"
  },
  VimwikiMarkers = {
    bg = "NONE",
    fg = "#82aaff"
  },
  VimwikiTag = {
    bg = "NONE",
    fg = "#c3e88d"
  },
  Visual = {
    bg = "#2d3f76"
  },
  VisualNOS = {
    bg = "#2d3f76"
  },
  WarningMsg = {
    fg = "#ffc777"
  },
  WhichKey = {
    fg = "#86e1fc"
  },
  WhichKeyDesc = {
    fg = "#c099ff"
  },
  WhichKeyGroup = {
    fg = "#82aaff"
  },
  WhichKeyNormal = {
    bg = "#1e2030"
  },
  WhichKeySeparator = {
    fg = "#636da6"
  },
  WhichKeyValue = {
    fg = "#737aa2"
  },
  Whitespace = {
    fg = "#3b4261"
  },
  WildMenu = {
    bg = "#2d3f76"
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bold = true,
    fg = "#1b1d2b"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  debugBreakpoint = {
    bg = "#203346",
    fg = "#0db9d7"
  },
  debugPC = {
    bg = "#1e2030"
  },
  diffAdded = {
    bg = "#2a4556",
    fg = "#b8db87"
  },
  diffChanged = {
    bg = "#252a3f",
    fg = "#7ca1f2"
  },
  diffFile = {
    fg = "#82aaff"
  },
  diffIndexLine = {
    fg = "#c099ff"
  },
  diffLine = {
    fg = "#636da6"
  },
  diffNewFile = {
    bg = "#2a4556",
    fg = "#65bcff"
  },
  diffOldFile = {
    bg = "#4b2a3d",
    fg = "#65bcff"
  },
  diffRemoved = {
    bg = "#4b2a3d",
    fg = "#e26a75"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#c53b53"
  },
  healthSuccess = {
    fg = "#4fd6be"
  },
  healthWarning = {
    fg = "#ffc777"
  },
  helpCommand = {
    bg = "#444a73",
    fg = "#82aaff"
  },
  helpExample = {
    fg = "#636da6"
  },
  htmlH1 = {
    bold = true,
    fg = "#c099ff"
  },
  htmlH2 = {
    bold = true,
    fg = "#82aaff"
  },
  illuminatedCurWord = {
    bg = "#3b4261"
  },
  illuminatedWord = {
    bg = "#3b4261"
  },
  lCursor = {
    bg = "#c8d3f5",
    fg = "#222436"
  },
  qfFileName = {
    fg = "#82aaff"
  },
  qfLineNr = {
    fg = "#737aa2"
  }
}
