local colors = {
  _name = "tokyonight_moon",
  bg = "#222436",
  bg_dark = "#1e2030",
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
  delta = {
    add = "#305f6f",
    delete = "#6b2e43"
  },
  diff = {
    add = "#273849",
    change = "#252a3f",
    delete = "#3a273a",
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
  gitSigns = {
    add = "#627259",
    change = "#485a86",
    delete = "#b55a67"
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
  red = "#ff757f",
  red1 = "#c53b53",
  teal = "#4fd6be",
  terminal_black = "#444a73",
  warning = "#ffc777",
  yellow = "#ffc777"
}

local highlights = {
  ["@constructor"] = {
    fg = "#c099ff"
  },
  ["@constructor.tsx"] = {
    fg = "#65bcff"
  },
  ["@field"] = {
    fg = "#4fd6be"
  },
  ["@keyword"] = {
    fg = "#fca7ea",
    style = {
      italic = true
    }
  },
  ["@keyword.function"] = {
    fg = "#c099ff",
    style = {}
  },
  ["@label"] = {
    fg = "#82aaff"
  },
  ["@lsp.type.boolean"] = {
    link = "@boolean"
  },
  ["@lsp.type.builtinType"] = {
    link = "@type.builtin"
  },
  ["@lsp.type.comment"] = {
    link = "@comment"
  },
  ["@lsp.type.decorator"] = {
    link = "@attribute"
  },
  ["@lsp.type.deriveHelper"] = {
    link = "@attribute"
  },
  ["@lsp.type.enum"] = {
    link = "@type"
  },
  ["@lsp.type.enumMember"] = {
    link = "@constant"
  },
  ["@lsp.type.escapeSequence"] = {
    link = "@string.escape"
  },
  ["@lsp.type.formatSpecifier"] = {
    link = "@punctuation.special"
  },
  ["@lsp.type.generic"] = {
    link = "@variable"
  },
  ["@lsp.type.interface"] = {
    fg = "#93d0ff"
  },
  ["@lsp.type.keyword"] = {
    link = "@keyword"
  },
  ["@lsp.type.lifetime"] = {
    link = "@storageclass"
  },
  ["@lsp.type.namespace"] = {
    link = "@namespace"
  },
  ["@lsp.type.number"] = {
    link = "@number"
  },
  ["@lsp.type.operator"] = {
    link = "@operator"
  },
  ["@lsp.type.parameter"] = {
    link = "@parameter"
  },
  ["@lsp.type.property"] = {
    link = "@property"
  },
  ["@lsp.type.selfKeyword"] = {
    link = "@variable.builtin"
  },
  ["@lsp.type.selfTypeKeyword"] = {
    link = "@variable.builtin"
  },
  ["@lsp.type.string"] = {
    link = "@string"
  },
  ["@lsp.type.typeAlias"] = {
    link = "@type.definition"
  },
  ["@lsp.type.unresolvedReference"] = {
    sp = "#c53b53",
    undercurl = true
  },
  ["@lsp.type.variable"] = {},
  ["@lsp.typemod.class.defaultLibrary"] = {
    link = "@type.builtin"
  },
  ["@lsp.typemod.enum.defaultLibrary"] = {
    link = "@type.builtin"
  },
  ["@lsp.typemod.enumMember.defaultLibrary"] = {
    link = "@constant.builtin"
  },
  ["@lsp.typemod.function.defaultLibrary"] = {
    link = "@function.builtin"
  },
  ["@lsp.typemod.keyword.async"] = {
    link = "@keyword.coroutine"
  },
  ["@lsp.typemod.keyword.injected"] = {
    link = "@keyword"
  },
  ["@lsp.typemod.macro.defaultLibrary"] = {
    link = "@function.builtin"
  },
  ["@lsp.typemod.method.defaultLibrary"] = {
    link = "@function.builtin"
  },
  ["@lsp.typemod.operator.injected"] = {
    link = "@operator"
  },
  ["@lsp.typemod.string.injected"] = {
    link = "@string"
  },
  ["@lsp.typemod.struct.defaultLibrary"] = {
    link = "@type.builtin"
  },
  ["@lsp.typemod.type.defaultLibrary"] = {
    fg = "#589ed7"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#589ed7"
  },
  ["@lsp.typemod.variable.callable"] = {
    link = "@function"
  },
  ["@lsp.typemod.variable.defaultLibrary"] = {
    link = "@variable.builtin"
  },
  ["@lsp.typemod.variable.injected"] = {
    link = "@variable"
  },
  ["@lsp.typemod.variable.static"] = {
    link = "@constant"
  },
  ["@namespace"] = {
    link = "Include"
  },
  ["@namespace.builtin"] = {
    fg = "#ff757f"
  },
  ["@operator"] = {
    fg = "#89ddff"
  },
  ["@parameter"] = {
    fg = "#ffc777"
  },
  ["@parameter.builtin"] = {
    fg = "#ffd292"
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
    bold = true,
    fg = "#ff966c"
  },
  ["@string.documentation"] = {
    fg = "#ffc777"
  },
  ["@string.escape"] = {
    fg = "#c099ff"
  },
  ["@string.regex"] = {
    fg = "#b4f9f8"
  },
  ["@tag.delimiter.tsx"] = {
    fg = "#6582c3"
  },
  ["@tag.tsx"] = {
    fg = "#ff757f"
  },
  ["@text.danger"] = {
    bg = "#c53b53",
    fg = "#222436"
  },
  ["@text.diff.add"] = {
    link = "DiffAdd"
  },
  ["@text.diff.delete"] = {
    link = "DiffDelete"
  },
  ["@text.literal.markdown_inline"] = {
    bg = "#444a73",
    fg = "#82aaff"
  },
  ["@text.reference"] = {
    fg = "#4fd6be"
  },
  ["@text.title.1.markdown"] = {
    bold = true,
    fg = "#82aaff"
  },
  ["@text.title.2.markdown"] = {
    bold = true,
    fg = "#ffc777"
  },
  ["@text.title.3.markdown"] = {
    bold = true,
    fg = "#c3e88d"
  },
  ["@text.title.4.markdown"] = {
    bold = true,
    fg = "#4fd6be"
  },
  ["@text.title.5.markdown"] = {
    bold = true,
    fg = "#c099ff"
  },
  ["@text.title.6.markdown"] = {
    bold = true,
    fg = "#fca7ea"
  },
  ["@text.todo.checked"] = {
    fg = "#4fd6be"
  },
  ["@text.todo.unchecked"] = {
    fg = "#82aaff"
  },
  ["@text.warning"] = {
    bg = "#ffc777",
    fg = "#222436"
  },
  ["@type.builtin"] = {
    fg = "#589ed7"
  },
  ["@variable"] = {
    fg = "#c8d3f5",
    style = {}
  },
  ["@variable.builtin"] = {
    fg = "#ff757f"
  },
  ALEErrorSign = {
    fg = "#c53b53"
  },
  ALEWarningSign = {
    fg = "#ffc777"
  },
  AerialArrayIcon = {
    link = "LspKindArray"
  },
  AerialBooleanIcon = {
    link = "LspKindBoolean"
  },
  AerialClassIcon = {
    link = "LspKindClass"
  },
  AerialColorIcon = {
    link = "LspKindColor"
  },
  AerialConstantIcon = {
    link = "LspKindConstant"
  },
  AerialConstructorIcon = {
    link = "LspKindConstructor"
  },
  AerialEnumIcon = {
    link = "LspKindEnum"
  },
  AerialEnumMemberIcon = {
    link = "LspKindEnumMember"
  },
  AerialEventIcon = {
    link = "LspKindEvent"
  },
  AerialFieldIcon = {
    link = "LspKindField"
  },
  AerialFileIcon = {
    link = "LspKindFile"
  },
  AerialFolderIcon = {
    link = "LspKindFolder"
  },
  AerialFunctionIcon = {
    link = "LspKindFunction"
  },
  AerialGuide = {
    fg = "#3b4261"
  },
  AerialInterfaceIcon = {
    link = "LspKindInterface"
  },
  AerialKeyIcon = {
    link = "LspKindKey"
  },
  AerialKeywordIcon = {
    link = "LspKindKeyword"
  },
  AerialLine = {
    link = "LspInlayHint"
  },
  AerialMethodIcon = {
    link = "LspKindMethod"
  },
  AerialModuleIcon = {
    link = "LspKindModule"
  },
  AerialNamespaceIcon = {
    link = "LspKindNamespace"
  },
  AerialNormal = {
    bg = "NONE",
    fg = "#c8d3f5"
  },
  AerialNullIcon = {
    link = "LspKindNull"
  },
  AerialNumberIcon = {
    link = "LspKindNumber"
  },
  AerialObjectIcon = {
    link = "LspKindObject"
  },
  AerialOperatorIcon = {
    link = "LspKindOperator"
  },
  AerialPackageIcon = {
    link = "LspKindPackage"
  },
  AerialPropertyIcon = {
    link = "LspKindProperty"
  },
  AerialReferenceIcon = {
    link = "LspKindReference"
  },
  AerialSnippetIcon = {
    link = "LspKindSnippet"
  },
  AerialStringIcon = {
    link = "LspKindString"
  },
  AerialStructIcon = {
    link = "LspKindStruct"
  },
  AerialTextIcon = {
    link = "LspKindText"
  },
  AerialTypeParameterIcon = {
    link = "LspKindTypeParameter"
  },
  AerialUnitIcon = {
    link = "LspKindUnit"
  },
  AerialValueIcon = {
    link = "LspKindValue"
  },
  AerialVariableIcon = {
    link = "LspKindVariable"
  },
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
  Bold = {
    bold = true
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
  CmpItemKindArray = {
    link = "LspKindArray"
  },
  CmpItemKindBoolean = {
    link = "LspKindBoolean"
  },
  CmpItemKindClass = {
    link = "LspKindClass"
  },
  CmpItemKindCodeium = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  CmpItemKindColor = {
    link = "LspKindColor"
  },
  CmpItemKindConstant = {
    link = "LspKindConstant"
  },
  CmpItemKindConstructor = {
    link = "LspKindConstructor"
  },
  CmpItemKindCopilot = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#828bb8"
  },
  CmpItemKindEnum = {
    link = "LspKindEnum"
  },
  CmpItemKindEnumMember = {
    link = "LspKindEnumMember"
  },
  CmpItemKindEvent = {
    link = "LspKindEvent"
  },
  CmpItemKindField = {
    link = "LspKindField"
  },
  CmpItemKindFile = {
    link = "LspKindFile"
  },
  CmpItemKindFolder = {
    link = "LspKindFolder"
  },
  CmpItemKindFunction = {
    link = "LspKindFunction"
  },
  CmpItemKindInterface = {
    link = "LspKindInterface"
  },
  CmpItemKindKey = {
    link = "LspKindKey"
  },
  CmpItemKindKeyword = {
    link = "LspKindKeyword"
  },
  CmpItemKindMethod = {
    link = "LspKindMethod"
  },
  CmpItemKindModule = {
    link = "LspKindModule"
  },
  CmpItemKindNamespace = {
    link = "LspKindNamespace"
  },
  CmpItemKindNull = {
    link = "LspKindNull"
  },
  CmpItemKindNumber = {
    link = "LspKindNumber"
  },
  CmpItemKindObject = {
    link = "LspKindObject"
  },
  CmpItemKindOperator = {
    link = "LspKindOperator"
  },
  CmpItemKindPackage = {
    link = "LspKindPackage"
  },
  CmpItemKindProperty = {
    link = "LspKindProperty"
  },
  CmpItemKindReference = {
    link = "LspKindReference"
  },
  CmpItemKindSnippet = {
    link = "LspKindSnippet"
  },
  CmpItemKindString = {
    link = "LspKindString"
  },
  CmpItemKindStruct = {
    link = "LspKindStruct"
  },
  CmpItemKindTabNine = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  CmpItemKindText = {
    link = "LspKindText"
  },
  CmpItemKindTypeParameter = {
    link = "LspKindTypeParameter"
  },
  CmpItemKindUnit = {
    link = "LspKindUnit"
  },
  CmpItemKindValue = {
    link = "LspKindValue"
  },
  CmpItemKindVariable = {
    link = "LspKindVariable"
  },
  CmpItemMenu = {
    bg = "NONE",
    fg = "#636da6"
  },
  CodeBlock = {
    bg = "#1e2030"
  },
  ColorColumn = {
    bg = "#1b1d2b"
  },
  Comment = {
    fg = "#636da6",
    style = {
      italic = true
    }
  },
  Conceal = {
    fg = "#737aa2"
  },
  Constant = {
    fg = "#ff966c"
  },
  CurSearch = {
    link = "IncSearch"
  },
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
    fg = "#737aa2"
  },
  DapStoppedLine = {
    bg = "#38343d"
  },
  DashboardCenter = {
    fg = "#c099ff"
  },
  DashboardDesc = {
    fg = "#86e1fc"
  },
  DashboardFooter = {
    fg = "#65bcff"
  },
  DashboardHeader = {
    fg = "#82aaff"
  },
  DashboardIcon = {
    bold = true,
    fg = "#86e1fc"
  },
  DashboardKey = {
    fg = "#ff966c"
  },
  DashboardShortCut = {
    fg = "#86e1fc"
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
  DiagnosticError = {
    fg = "#c53b53"
  },
  DiagnosticHint = {
    fg = "#4fd6be"
  },
  DiagnosticInfo = {
    fg = "#0db9d7"
  },
  DiagnosticInformation = {
    link = "DiagnosticInfo"
  },
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
  DiagnosticWarning = {
    link = "DiagnosticWarn"
  },
  DiffAdd = {
    bg = "#273849"
  },
  DiffChange = {
    bg = "#252a3f"
  },
  DiffDelete = {
    bg = "#3a273a"
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
  FernBranchText = {
    fg = "#82aaff"
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
    fg = "#82aaff",
    style = {}
  },
  GitGutterAdd = {
    fg = "#627259"
  },
  GitGutterAddLineNr = {
    fg = "#627259"
  },
  GitGutterChange = {
    fg = "#485a86"
  },
  GitGutterChangeLineNr = {
    fg = "#485a86"
  },
  GitGutterDelete = {
    fg = "#b55a67"
  },
  GitGutterDeleteLineNr = {
    fg = "#b55a67"
  },
  GitSignsAdd = {
    fg = "#627259"
  },
  GitSignsChange = {
    fg = "#485a86"
  },
  GitSignsDelete = {
    fg = "#b55a67"
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
  Headline = {
    link = "Headline1"
  },
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
  Hlargs = {
    fg = "#ffc777"
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
    fg = "#fca7ea",
    nocombine = true
  },
  Identifier = {
    fg = "#c099ff",
    style = {}
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
    fg = "#fca7ea",
    nocombine = true
  },
  Italic = {
    italic = true
  },
  Keyword = {
    fg = "#86e1fc",
    style = {
      italic = true
    }
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
  LeapLabelPrimary = {
    bold = true,
    fg = "#ff007c"
  },
  LeapLabelSecondary = {
    bold = true,
    fg = "#4fd6be"
  },
  LeapMatch = {
    bg = "#ff007c",
    bold = true,
    fg = "#c8d3f5"
  },
  LightspeedGreyWash = {
    fg = "#545c7e"
  },
  LightspeedLabel = {
    bold = true,
    fg = "#ff007c",
    underline = true
  },
  LightspeedLabelDistant = {
    bold = true,
    fg = "#4fd6be",
    underline = true
  },
  LightspeedLabelDistantOverlapped = {
    fg = "#41a6b5",
    underline = true
  },
  LightspeedLabelOverlapped = {
    fg = "#ff007c",
    underline = true
  },
  LightspeedMaskedChar = {
    fg = "#ff966c"
  },
  LightspeedOneCharMatch = {
    bg = "#ff007c",
    bold = true,
    fg = "#c8d3f5"
  },
  LightspeedPendingOpArea = {
    bg = "#ff007c",
    fg = "#c8d3f5"
  },
  LightspeedShortcut = {
    bg = "#ff007c",
    bold = true,
    fg = "#c8d3f5",
    underline = true
  },
  LightspeedUnlabeledMatch = {
    bold = true,
    fg = "#0db9d7"
  },
  LineNr = {
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
  LspKindArray = {
    link = "@punctuation.bracket"
  },
  LspKindBoolean = {
    link = "@boolean"
  },
  LspKindClass = {
    link = "@type"
  },
  LspKindColor = {
    link = "Special"
  },
  LspKindConstant = {
    link = "@constant"
  },
  LspKindConstructor = {
    link = "@constructor"
  },
  LspKindEnum = {
    link = "@lsp.type.enum"
  },
  LspKindEnumMember = {
    link = "@lsp.type.enumMember"
  },
  LspKindEvent = {
    link = "Special"
  },
  LspKindField = {
    link = "@field"
  },
  LspKindFile = {
    link = "Normal"
  },
  LspKindFolder = {
    link = "Directory"
  },
  LspKindFunction = {
    link = "@function"
  },
  LspKindInterface = {
    link = "@lsp.type.interface"
  },
  LspKindKey = {
    link = "@field"
  },
  LspKindKeyword = {
    link = "@lsp.type.keyword"
  },
  LspKindMethod = {
    link = "@method"
  },
  LspKindModule = {
    link = "@namespace"
  },
  LspKindNamespace = {
    link = "@namespace"
  },
  LspKindNull = {
    link = "@constant.builtin"
  },
  LspKindNumber = {
    link = "@number"
  },
  LspKindObject = {
    link = "@constant"
  },
  LspKindOperator = {
    link = "@operator"
  },
  LspKindPackage = {
    link = "@namespace"
  },
  LspKindProperty = {
    link = "@property"
  },
  LspKindReference = {
    link = "@text.reference"
  },
  LspKindSnippet = {
    link = "Conceal"
  },
  LspKindString = {
    link = "@string"
  },
  LspKindStruct = {
    link = "@lsp.type.struct"
  },
  LspKindText = {
    link = "@text"
  },
  LspKindTypeParameter = {
    link = "@lsp.type.typeParameter"
  },
  LspKindUnit = {
    link = "@lsp.type.struct"
  },
  LspKindValue = {
    link = "@string"
  },
  LspKindVariable = {
    link = "@variable"
  },
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
  MiniCompletionActiveParameter = {
    underline = true
  },
  MiniCursorword = {
    bg = "#3b4261"
  },
  MiniCursorwordCurrent = {
    bg = "#3b4261"
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
  MiniJump2dSpot = {
    bold = true,
    fg = "#ff007c",
    nocombine = true
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
    style = {
      italic = true
    }
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
    bg = "#2f334d",
    fg = "#828bb8"
  },
  MiniStatuslineFileinfo = {
    bg = "#2f334d",
    fg = "#828bb8"
  },
  MiniStatuslineFilename = {
    bg = "#3b4261",
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
    bg = "#1e2030",
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
  NavicIconsArray = {
    link = "LspKindArray"
  },
  NavicIconsBoolean = {
    link = "LspKindBoolean"
  },
  NavicIconsClass = {
    link = "LspKindClass"
  },
  NavicIconsColor = {
    link = "LspKindColor"
  },
  NavicIconsConstant = {
    link = "LspKindConstant"
  },
  NavicIconsConstructor = {
    link = "LspKindConstructor"
  },
  NavicIconsEnum = {
    link = "LspKindEnum"
  },
  NavicIconsEnumMember = {
    link = "LspKindEnumMember"
  },
  NavicIconsEvent = {
    link = "LspKindEvent"
  },
  NavicIconsField = {
    link = "LspKindField"
  },
  NavicIconsFile = {
    link = "LspKindFile"
  },
  NavicIconsFolder = {
    link = "LspKindFolder"
  },
  NavicIconsFunction = {
    link = "LspKindFunction"
  },
  NavicIconsInterface = {
    link = "LspKindInterface"
  },
  NavicIconsKey = {
    link = "LspKindKey"
  },
  NavicIconsKeyword = {
    link = "LspKindKeyword"
  },
  NavicIconsMethod = {
    link = "LspKindMethod"
  },
  NavicIconsModule = {
    link = "LspKindModule"
  },
  NavicIconsNamespace = {
    link = "LspKindNamespace"
  },
  NavicIconsNull = {
    link = "LspKindNull"
  },
  NavicIconsNumber = {
    link = "LspKindNumber"
  },
  NavicIconsObject = {
    link = "LspKindObject"
  },
  NavicIconsOperator = {
    link = "LspKindOperator"
  },
  NavicIconsPackage = {
    link = "LspKindPackage"
  },
  NavicIconsProperty = {
    link = "LspKindProperty"
  },
  NavicIconsReference = {
    link = "LspKindReference"
  },
  NavicIconsSnippet = {
    link = "LspKindSnippet"
  },
  NavicIconsString = {
    link = "LspKindString"
  },
  NavicIconsStruct = {
    link = "LspKindStruct"
  },
  NavicIconsText = {
    link = "LspKindText"
  },
  NavicIconsTypeParameter = {
    link = "LspKindTypeParameter"
  },
  NavicIconsUnit = {
    link = "LspKindUnit"
  },
  NavicIconsValue = {
    link = "LspKindValue"
  },
  NavicIconsVariable = {
    link = "LspKindVariable"
  },
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
  NeoTreeNormal = {
    bg = "#1e2030",
    fg = "#828bb8"
  },
  NeoTreeNormalNC = {
    bg = "#1e2030",
    fg = "#828bb8"
  },
  NeogitBranch = {
    fg = "#c099ff"
  },
  NeogitDiffAddHighlight = {
    bg = "#273849",
    fg = "#b8db87"
  },
  NeogitDiffContextHighlight = {
    bg = "#2f334c",
    fg = "#828bb8"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#3a273a",
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
  NoiceCompletionItemKindArray = {
    link = "LspKindArray"
  },
  NoiceCompletionItemKindBoolean = {
    link = "LspKindBoolean"
  },
  NoiceCompletionItemKindClass = {
    link = "LspKindClass"
  },
  NoiceCompletionItemKindColor = {
    link = "LspKindColor"
  },
  NoiceCompletionItemKindConstant = {
    link = "LspKindConstant"
  },
  NoiceCompletionItemKindConstructor = {
    link = "LspKindConstructor"
  },
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#828bb8"
  },
  NoiceCompletionItemKindEnum = {
    link = "LspKindEnum"
  },
  NoiceCompletionItemKindEnumMember = {
    link = "LspKindEnumMember"
  },
  NoiceCompletionItemKindEvent = {
    link = "LspKindEvent"
  },
  NoiceCompletionItemKindField = {
    link = "LspKindField"
  },
  NoiceCompletionItemKindFile = {
    link = "LspKindFile"
  },
  NoiceCompletionItemKindFolder = {
    link = "LspKindFolder"
  },
  NoiceCompletionItemKindFunction = {
    link = "LspKindFunction"
  },
  NoiceCompletionItemKindInterface = {
    link = "LspKindInterface"
  },
  NoiceCompletionItemKindKey = {
    link = "LspKindKey"
  },
  NoiceCompletionItemKindKeyword = {
    link = "LspKindKeyword"
  },
  NoiceCompletionItemKindMethod = {
    link = "LspKindMethod"
  },
  NoiceCompletionItemKindModule = {
    link = "LspKindModule"
  },
  NoiceCompletionItemKindNamespace = {
    link = "LspKindNamespace"
  },
  NoiceCompletionItemKindNull = {
    link = "LspKindNull"
  },
  NoiceCompletionItemKindNumber = {
    link = "LspKindNumber"
  },
  NoiceCompletionItemKindObject = {
    link = "LspKindObject"
  },
  NoiceCompletionItemKindOperator = {
    link = "LspKindOperator"
  },
  NoiceCompletionItemKindPackage = {
    link = "LspKindPackage"
  },
  NoiceCompletionItemKindProperty = {
    link = "LspKindProperty"
  },
  NoiceCompletionItemKindReference = {
    link = "LspKindReference"
  },
  NoiceCompletionItemKindSnippet = {
    link = "LspKindSnippet"
  },
  NoiceCompletionItemKindString = {
    link = "LspKindString"
  },
  NoiceCompletionItemKindStruct = {
    link = "LspKindStruct"
  },
  NoiceCompletionItemKindText = {
    link = "LspKindText"
  },
  NoiceCompletionItemKindTypeParameter = {
    link = "LspKindTypeParameter"
  },
  NoiceCompletionItemKindUnit = {
    link = "LspKindUnit"
  },
  NoiceCompletionItemKindValue = {
    link = "LspKindValue"
  },
  NoiceCompletionItemKindVariable = {
    link = "LspKindVariable"
  },
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
  Operator = {
    fg = "#89ddff"
  },
  Pmenu = {
    bg = "#1e2030",
    fg = "#c8d3f5"
  },
  PmenuSbar = {
    bg = "#292b3a"
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
  SignColumn = {
    bg = "#222436",
    fg = "#3b4261"
  },
  SignColumnSB = {
    bg = "#1e2030",
    fg = "#3b4261"
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
  TSNodeKey = {
    bold = true,
    fg = "#ff007c"
  },
  TSNodeUnmatched = {
    fg = "#545c7e"
  },
  TSRainbowBlue = {
    fg = "#82aaff"
  },
  TSRainbowCyan = {
    fg = "#86e1fc"
  },
  TSRainbowGreen = {
    fg = "#c3e88d"
  },
  TSRainbowOrange = {
    fg = "#ff966c"
  },
  TSRainbowRed = {
    fg = "#ff757f"
  },
  TSRainbowViolet = {
    fg = "#fca7ea"
  },
  TSRainbowYellow = {
    fg = "#ffc777"
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
    fg = "#828bb8"
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
  WhichKeyFloat = {
    bg = "#1e2030"
  },
  WhichKeyGroup = {
    fg = "#82aaff"
  },
  WhichKeySeparator = {
    fg = "#636da6"
  },
  WhichKeySeperator = {
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
  WinSeparator = {
    bold = true,
    fg = "#1b1d2b"
  },
  YankyPut = {
    link = "IncSearch"
  },
  YankyYanked = {
    link = "IncSearch"
  },
  debugBreakpoint = {
    bg = "#203346",
    fg = "#0db9d7"
  },
  debugPC = {
    bg = "#1e2030"
  },
  diffAdded = {
    fg = "#b8db87"
  },
  diffChanged = {
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
    fg = "#ff966c"
  },
  diffOldFile = {
    fg = "#ffc777"
  },
  diffRemoved = {
    fg = "#e26a75"
  },
  dosIniLabel = {
    link = "@property"
  },
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
  markdownCode = {
    fg = "#4fd6be"
  },
  markdownCodeBlock = {
    fg = "#4fd6be"
  },
  markdownH1 = {
    bold = true,
    fg = "#c099ff"
  },
  markdownH2 = {
    bold = true,
    fg = "#82aaff"
  },
  markdownHeadingDelimiter = {
    bold = true,
    fg = "#ff966c"
  },
  markdownLinkText = {
    fg = "#82aaff",
    underline = true
  },
  mkdCodeDelimiter = {
    bg = "#444a73",
    fg = "#c8d3f5"
  },
  mkdCodeEnd = {
    bold = true,
    fg = "#4fd6be"
  },
  mkdCodeStart = {
    bold = true,
    fg = "#4fd6be"
  },
  qfFileName = {
    fg = "#82aaff"
  },
  qfLineNr = {
    fg = "#737aa2"
  },
  rainbowcol1 = {
    fg = "#ff757f"
  },
  rainbowcol2 = {
    fg = "#ffc777"
  },
  rainbowcol3 = {
    fg = "#c3e88d"
  },
  rainbowcol4 = {
    fg = "#4fd6be"
  },
  rainbowcol5 = {
    fg = "#82aaff"
  },
  rainbowcol6 = {
    fg = "#c099ff"
  },
  rainbowcol7 = {
    fg = "#fca7ea"
  }
}
