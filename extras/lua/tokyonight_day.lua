local colors = {
  _name = "tokyonight_day",
  bg = "#e1e2e7",
  bg_dark = "#e9e9ec",
  bg_float = "#e9e9ec",
  bg_highlight = "#c4c8da",
  bg_popup = "#e9e9ec",
  bg_search = "#7890dd",
  bg_sidebar = "#e9e9ec",
  bg_statusline = "#e9e9ec",
  bg_visual = "#b6bfe2",
  black = "#e9e9ed",
  blue = "#2e7de9",
  blue0 = "#7890dd",
  blue1 = "#188092",
  blue2 = "#07879d",
  blue5 = "#006a83",
  blue6 = "#2e5857",
  blue7 = "#92a6d5",
  border = "#e9e9ed",
  border_highlight = "#2496ac",
  comment = "#848cb5",
  cyan = "#007197",
  dark3 = "#8990b3",
  dark5 = "#68709a",
  delta = {
    add = "#57a7bc",
    delete = "#d99ea2"
  },
  diff = {
    add = "#aecde6",
    change = "#d6d8e3",
    delete = "#dfccd4",
    text = "#92a6d5"
  },
  error = "#c64343",
  fg = "#3760bf",
  fg_dark = "#6172b0",
  fg_float = "#3760bf",
  fg_gutter = "#a8aecb",
  fg_sidebar = "#6172b0",
  git = {
    add = "#4197a4",
    change = "#506d9c",
    delete = "#c47981",
    ignore = "#8990b3"
  },
  gitSigns = {
    add = "#399a96",
    change = "#6482bd",
    delete = "#c25d64"
  },
  green = "#587539",
  green1 = "#387068",
  green2 = "#38919f",
  hint = "#118c74",
  info = "#07879d",
  magenta = "#9854f1",
  magenta2 = "#d20065",
  none = "NONE",
  orange = "#b15c00",
  purple = "#7847bd",
  red = "#f52a65",
  red1 = "#c64343",
  teal = "#118c74",
  terminal_black = "#a1a6c5",
  warning = "#8c6c3e",
  yellow = "#8c6c3e"
}

local highlights = {
  ["@constructor"] = {
    fg = "#9854f1"
  },
  ["@constructor.tsx"] = {
    fg = "#188092"
  },
  ["@field"] = {
    fg = "#387068"
  },
  ["@keyword"] = {
    fg = "#7847bd",
    style = {
      italic = true
    }
  },
  ["@keyword.function"] = {
    fg = "#9854f1",
    style = {}
  },
  ["@label"] = {
    fg = "#2e7de9"
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
    fg = "#35717b"
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
    sp = "#c64343",
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
    fg = "#2496ac"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#2496ac"
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
    fg = "#f52a65"
  },
  ["@operator"] = {
    fg = "#006a83"
  },
  ["@parameter"] = {
    fg = "#8c6c3e"
  },
  ["@parameter.builtin"] = {
    fg = "#7b6545"
  },
  ["@property"] = {
    fg = "#387068"
  },
  ["@punctuation.bracket"] = {
    fg = "#6172b0"
  },
  ["@punctuation.delimiter"] = {
    fg = "#006a83"
  },
  ["@punctuation.special"] = {
    fg = "#006a83"
  },
  ["@punctuation.special.markdown"] = {
    bold = true,
    fg = "#b15c00"
  },
  ["@string.documentation"] = {
    fg = "#8c6c3e"
  },
  ["@string.escape"] = {
    fg = "#9854f1"
  },
  ["@string.regex"] = {
    fg = "#2e5857"
  },
  ["@tag.delimiter.tsx"] = {
    fg = "#5772ad"
  },
  ["@tag.tsx"] = {
    fg = "#f52a65"
  },
  ["@text.danger"] = {
    bg = "#c64343",
    fg = "#e1e2e7"
  },
  ["@text.diff.add"] = {
    link = "DiffAdd"
  },
  ["@text.diff.delete"] = {
    link = "DiffDelete"
  },
  ["@text.literal.markdown_inline"] = {
    bg = "#a1a6c5",
    fg = "#2e7de9"
  },
  ["@text.reference"] = {
    fg = "#118c74"
  },
  ["@text.title.1.markdown"] = {
    bold = true,
    fg = "#2e7de9"
  },
  ["@text.title.2.markdown"] = {
    bold = true,
    fg = "#8c6c3e"
  },
  ["@text.title.3.markdown"] = {
    bold = true,
    fg = "#587539"
  },
  ["@text.title.4.markdown"] = {
    bold = true,
    fg = "#118c74"
  },
  ["@text.title.5.markdown"] = {
    bold = true,
    fg = "#9854f1"
  },
  ["@text.title.6.markdown"] = {
    bold = true,
    fg = "#7847bd"
  },
  ["@text.todo.checked"] = {
    fg = "#387068"
  },
  ["@text.todo.unchecked"] = {
    fg = "#2e7de9"
  },
  ["@text.warning"] = {
    bg = "#8c6c3e",
    fg = "#e1e2e7"
  },
  ["@type.builtin"] = {
    fg = "#2496ac"
  },
  ["@variable"] = {
    fg = "#3760bf",
    style = {}
  },
  ["@variable.builtin"] = {
    fg = "#f52a65"
  },
  ALEErrorSign = {
    fg = "#c64343"
  },
  ALEWarningSign = {
    fg = "#8c6c3e"
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
    fg = "#a8aecb"
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
    fg = "#3760bf"
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
    fg = "#007197"
  },
  AlphaFooter = {
    fg = "#188092"
  },
  AlphaHeader = {
    fg = "#2e7de9"
  },
  AlphaHeaderLabel = {
    fg = "#b15c00"
  },
  AlphaShortcut = {
    fg = "#b15c00"
  },
  Bold = {
    bold = true
  },
  BufferAlternate = {
    bg = "#a8aecb",
    fg = "#3760bf"
  },
  BufferAlternateERROR = {
    bg = "#a8aecb",
    fg = "#c64343"
  },
  BufferAlternateHINT = {
    bg = "#a8aecb",
    fg = "#118c74"
  },
  BufferAlternateINFO = {
    bg = "#a8aecb",
    fg = "#07879d"
  },
  BufferAlternateIndex = {
    bg = "#a8aecb",
    fg = "#07879d"
  },
  BufferAlternateMod = {
    bg = "#a8aecb",
    fg = "#8c6c3e"
  },
  BufferAlternateSign = {
    bg = "#a8aecb",
    fg = "#07879d"
  },
  BufferAlternateTarget = {
    bg = "#a8aecb",
    fg = "#f52a65"
  },
  BufferAlternateWARN = {
    bg = "#a8aecb",
    fg = "#8c6c3e"
  },
  BufferCurrent = {
    bg = "#e1e2e7",
    fg = "#3760bf"
  },
  BufferCurrentERROR = {
    bg = "#e1e2e7",
    fg = "#c64343"
  },
  BufferCurrentHINT = {
    bg = "#e1e2e7",
    fg = "#118c74"
  },
  BufferCurrentINFO = {
    bg = "#e1e2e7",
    fg = "#07879d"
  },
  BufferCurrentIndex = {
    bg = "#e1e2e7",
    fg = "#07879d"
  },
  BufferCurrentMod = {
    bg = "#e1e2e7",
    fg = "#8c6c3e"
  },
  BufferCurrentSign = {
    bg = "#e1e2e7",
    fg = "#e1e2e7"
  },
  BufferCurrentTarget = {
    bg = "#e1e2e7",
    fg = "#f52a65"
  },
  BufferCurrentWARN = {
    bg = "#e1e2e7",
    fg = "#8c6c3e"
  },
  BufferInactive = {
    bg = "#d5d7e1",
    fg = "#7f84a4"
  },
  BufferInactiveERROR = {
    bg = "#d5d7e1",
    fg = "#db5d60"
  },
  BufferInactiveHINT = {
    bg = "#d5d7e1",
    fg = "#10715f"
  },
  BufferInactiveINFO = {
    bg = "#d5d7e1",
    fg = "#086c80"
  },
  BufferInactiveIndex = {
    bg = "#d5d7e1",
    fg = "#68709a"
  },
  BufferInactiveMod = {
    bg = "#d5d7e1",
    fg = "#a48150"
  },
  BufferInactiveSign = {
    bg = "#d5d7e1",
    fg = "#e1e2e7"
  },
  BufferInactiveTarget = {
    bg = "#d5d7e1",
    fg = "#f52a65"
  },
  BufferInactiveWARN = {
    bg = "#d5d7e1",
    fg = "#a48150"
  },
  BufferLineIndicatorSelected = {
    fg = "#506d9c"
  },
  BufferOffset = {
    bg = "#e9e9ec",
    fg = "#68709a"
  },
  BufferTabpageFill = {
    bg = "#cacddc",
    fg = "#68709a"
  },
  BufferTabpages = {
    bg = "#e9e9ec",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#e9e9ec",
    fg = "#3760bf"
  },
  BufferVisibleERROR = {
    bg = "#e9e9ec",
    fg = "#c64343"
  },
  BufferVisibleHINT = {
    bg = "#e9e9ec",
    fg = "#118c74"
  },
  BufferVisibleINFO = {
    bg = "#e9e9ec",
    fg = "#07879d"
  },
  BufferVisibleIndex = {
    bg = "#e9e9ec",
    fg = "#07879d"
  },
  BufferVisibleMod = {
    bg = "#e9e9ec",
    fg = "#8c6c3e"
  },
  BufferVisibleSign = {
    bg = "#e9e9ec",
    fg = "#07879d"
  },
  BufferVisibleTarget = {
    bg = "#e9e9ec",
    fg = "#f52a65"
  },
  BufferVisibleWARN = {
    bg = "#e9e9ec",
    fg = "#8c6c3e"
  },
  Character = {
    fg = "#587539"
  },
  CmpDocumentation = {
    bg = "#e9e9ec",
    fg = "#3760bf"
  },
  CmpDocumentationBorder = {
    bg = "#e9e9ec",
    fg = "#2496ac"
  },
  CmpGhostText = {
    fg = "#a1a6c5"
  },
  CmpItemAbbr = {
    bg = "NONE",
    fg = "#3760bf"
  },
  CmpItemAbbrDeprecated = {
    bg = "NONE",
    fg = "#a8aecb",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bg = "NONE",
    fg = "#188092"
  },
  CmpItemAbbrMatchFuzzy = {
    bg = "NONE",
    fg = "#188092"
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
    fg = "#118c74"
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
    fg = "#118c74"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#6172b0"
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
    fg = "#118c74"
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
    fg = "#848cb5"
  },
  CodeBlock = {
    bg = "#e9e9ec"
  },
  ColorColumn = {
    bg = "#e9e9ed"
  },
  Comment = {
    fg = "#848cb5",
    style = {
      italic = true
    }
  },
  Conceal = {
    fg = "#68709a"
  },
  Constant = {
    fg = "#b15c00"
  },
  CurSearch = {
    link = "IncSearch"
  },
  Cursor = {
    bg = "#3760bf",
    fg = "#e1e2e7"
  },
  CursorColumn = {
    bg = "#c4c8da"
  },
  CursorIM = {
    bg = "#3760bf",
    fg = "#e1e2e7"
  },
  CursorLine = {
    bg = "#c4c8da"
  },
  CursorLineNr = {
    fg = "#68709a"
  },
  DapStoppedLine = {
    bg = "#d0cccf"
  },
  DashboardCenter = {
    fg = "#9854f1"
  },
  DashboardDesc = {
    fg = "#007197"
  },
  DashboardFooter = {
    fg = "#188092"
  },
  DashboardHeader = {
    fg = "#2e7de9"
  },
  DashboardIcon = {
    bold = true,
    fg = "#007197"
  },
  DashboardKey = {
    fg = "#b15c00"
  },
  DashboardShortCut = {
    fg = "#007197"
  },
  Debug = {
    fg = "#b15c00"
  },
  DefinitionCount = {
    fg = "#7847bd"
  },
  DefinitionIcon = {
    fg = "#2e7de9"
  },
  DiagnosticError = {
    fg = "#c64343"
  },
  DiagnosticHint = {
    fg = "#118c74"
  },
  DiagnosticInfo = {
    fg = "#07879d"
  },
  DiagnosticInformation = {
    link = "DiagnosticInfo"
  },
  DiagnosticUnderlineError = {
    sp = "#c64343",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#118c74",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#07879d",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#8c6c3e",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#a1a6c5"
  },
  DiagnosticVirtualTextError = {
    bg = "#e0d3dd",
    fg = "#c64343"
  },
  DiagnosticVirtualTextHint = {
    bg = "#acd7eb",
    fg = "#118c74"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#b7d3ed",
    fg = "#07879d"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#d0cccf",
    fg = "#8c6c3e"
  },
  DiagnosticWarn = {
    fg = "#8c6c3e"
  },
  DiagnosticWarning = {
    link = "DiagnosticWarn"
  },
  DiffAdd = {
    bg = "#aecde6"
  },
  DiffChange = {
    bg = "#d6d8e3"
  },
  DiffDelete = {
    bg = "#dfccd4"
  },
  DiffText = {
    bg = "#92a6d5"
  },
  Directory = {
    fg = "#2e7de9"
  },
  EndOfBuffer = {
    fg = "#e1e2e7"
  },
  Error = {
    fg = "#c64343"
  },
  ErrorMsg = {
    fg = "#c64343"
  },
  FernBranchText = {
    fg = "#2e7de9"
  },
  FlashBackdrop = {
    fg = "#8990b3"
  },
  FlashLabel = {
    bg = "#d20065",
    bold = true,
    fg = "#3760bf"
  },
  FloatBorder = {
    bg = "#e9e9ec",
    fg = "#2496ac"
  },
  FloatTitle = {
    bg = "#e9e9ec",
    fg = "#2496ac"
  },
  FoldColumn = {
    bg = "#e1e2e7",
    fg = "#848cb5"
  },
  Folded = {
    bg = "#a8aecb",
    fg = "#2e7de9"
  },
  Foo = {
    bg = "#d20065",
    fg = "#3760bf"
  },
  Function = {
    fg = "#2e7de9",
    style = {}
  },
  GitGutterAdd = {
    fg = "#399a96"
  },
  GitGutterAddLineNr = {
    fg = "#399a96"
  },
  GitGutterChange = {
    fg = "#6482bd"
  },
  GitGutterChangeLineNr = {
    fg = "#6482bd"
  },
  GitGutterDelete = {
    fg = "#c25d64"
  },
  GitGutterDeleteLineNr = {
    fg = "#c25d64"
  },
  GitSignsAdd = {
    fg = "#399a96"
  },
  GitSignsChange = {
    fg = "#6482bd"
  },
  GitSignsDelete = {
    fg = "#c25d64"
  },
  GlyphPalette1 = {
    fg = "#c64343"
  },
  GlyphPalette2 = {
    fg = "#587539"
  },
  GlyphPalette3 = {
    fg = "#8c6c3e"
  },
  GlyphPalette4 = {
    fg = "#2e7de9"
  },
  GlyphPalette6 = {
    fg = "#387068"
  },
  GlyphPalette7 = {
    fg = "#3760bf"
  },
  GlyphPalette9 = {
    fg = "#f52a65"
  },
  Headline = {
    link = "Headline1"
  },
  Headline1 = {
    bg = "#d6d8e3"
  },
  Headline2 = {
    bg = "#d8d7dc"
  },
  Headline3 = {
    bg = "#d3d7de"
  },
  Headline4 = {
    bg = "#cfdbe9"
  },
  Headline5 = {
    bg = "#d8d8df"
  },
  Headline6 = {
    bg = "#dad9e1"
  },
  Hlargs = {
    fg = "#8c6c3e"
  },
  HopNextKey = {
    bold = true,
    fg = "#d20065"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#07879d"
  },
  HopNextKey2 = {
    fg = "#168aa3"
  },
  HopUnmatched = {
    fg = "#8990b3"
  },
  IblIndent = {
    fg = "#a8aecb",
    nocombine = true
  },
  IblScope = {
    fg = "#7847bd",
    nocombine = true
  },
  Identifier = {
    fg = "#9854f1",
    style = {}
  },
  IlluminatedWordRead = {
    bg = "#a8aecb"
  },
  IlluminatedWordText = {
    bg = "#a8aecb"
  },
  IlluminatedWordWrite = {
    bg = "#a8aecb"
  },
  IncSearch = {
    bg = "#b15c00",
    fg = "#e9e9ed"
  },
  IndentBlanklineChar = {
    fg = "#a8aecb",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#7847bd",
    nocombine = true
  },
  Italic = {
    italic = true
  },
  Keyword = {
    fg = "#007197",
    style = {
      italic = true
    }
  },
  LazyProgressDone = {
    bold = true,
    fg = "#d20065"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#a8aecb"
  },
  LeapBackdrop = {
    fg = "#8990b3"
  },
  LeapLabelPrimary = {
    bold = true,
    fg = "#d20065"
  },
  LeapLabelSecondary = {
    bold = true,
    fg = "#387068"
  },
  LeapMatch = {
    bg = "#d20065",
    bold = true,
    fg = "#3760bf"
  },
  LightspeedGreyWash = {
    fg = "#8990b3"
  },
  LightspeedLabel = {
    bold = true,
    fg = "#d20065",
    underline = true
  },
  LightspeedLabelDistant = {
    bold = true,
    fg = "#387068",
    underline = true
  },
  LightspeedLabelDistantOverlapped = {
    fg = "#38919f",
    underline = true
  },
  LightspeedLabelOverlapped = {
    fg = "#d20065",
    underline = true
  },
  LightspeedMaskedChar = {
    fg = "#b15c00"
  },
  LightspeedOneCharMatch = {
    bg = "#d20065",
    bold = true,
    fg = "#3760bf"
  },
  LightspeedPendingOpArea = {
    bg = "#d20065",
    fg = "#3760bf"
  },
  LightspeedShortcut = {
    bg = "#d20065",
    bold = true,
    fg = "#3760bf",
    underline = true
  },
  LightspeedUnlabeledMatch = {
    bold = true,
    fg = "#07879d"
  },
  LineNr = {
    fg = "#a8aecb"
  },
  LspCodeLens = {
    fg = "#848cb5"
  },
  LspFloatWinBorder = {
    fg = "#2496ac"
  },
  LspFloatWinNormal = {
    bg = "#e9e9ec"
  },
  LspInfoBorder = {
    bg = "#e9e9ec",
    fg = "#2496ac"
  },
  LspInlayHint = {
    bg = "#d9dbe5",
    fg = "#8990b3"
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
    bg = "#a8aecb"
  },
  LspReferenceText = {
    bg = "#a8aecb"
  },
  LspReferenceWrite = {
    bg = "#a8aecb"
  },
  LspSagaBorderTitle = {
    fg = "#007197"
  },
  LspSagaCodeActionBorder = {
    fg = "#2e7de9"
  },
  LspSagaCodeActionContent = {
    fg = "#7847bd"
  },
  LspSagaCodeActionTitle = {
    fg = "#188092"
  },
  LspSagaDefPreviewBorder = {
    fg = "#587539"
  },
  LspSagaFinderSelection = {
    fg = "#b6bfe2"
  },
  LspSagaHoverBorder = {
    fg = "#2e7de9"
  },
  LspSagaRenameBorder = {
    fg = "#587539"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#f52a65"
  },
  LspSignatureActiveParameter = {
    bg = "#d0d3e4",
    bold = true
  },
  MatchParen = {
    bold = true,
    fg = "#b15c00"
  },
  MiniCompletionActiveParameter = {
    underline = true
  },
  MiniCursorword = {
    bg = "#a8aecb"
  },
  MiniCursorwordCurrent = {
    bg = "#a8aecb"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#188092",
    nocombine = true
  },
  MiniJump = {
    bg = "#d20065",
    fg = "#474747"
  },
  MiniJump2dSpot = {
    bold = true,
    fg = "#d20065",
    nocombine = true
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#8c6c3e",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#2e7de9"
  },
  MiniStarterInactive = {
    fg = "#848cb5",
    style = {
      italic = true
    }
  },
  MiniStarterItem = {
    bg = "#e1e2e7",
    fg = "#3760bf"
  },
  MiniStarterItemBullet = {
    fg = "#2496ac"
  },
  MiniStarterItemPrefix = {
    fg = "#8c6c3e"
  },
  MiniStarterQuery = {
    fg = "#07879d"
  },
  MiniStarterSection = {
    fg = "#188092"
  },
  MiniStatuslineDevinfo = {
    bg = "#c4c8da",
    fg = "#6172b0"
  },
  MiniStatuslineFileinfo = {
    bg = "#c4c8da",
    fg = "#6172b0"
  },
  MiniStatuslineFilename = {
    bg = "#a8aecb",
    fg = "#6172b0"
  },
  MiniStatuslineInactive = {
    bg = "#e9e9ec",
    fg = "#2e7de9"
  },
  MiniStatuslineModeCommand = {
    bg = "#8c6c3e",
    bold = true,
    fg = "#e9e9ed"
  },
  MiniStatuslineModeInsert = {
    bg = "#587539",
    bold = true,
    fg = "#e9e9ed"
  },
  MiniStatuslineModeNormal = {
    bg = "#2e7de9",
    bold = true,
    fg = "#e9e9ed"
  },
  MiniStatuslineModeOther = {
    bg = "#118c74",
    bold = true,
    fg = "#e9e9ed"
  },
  MiniStatuslineModeReplace = {
    bg = "#f52a65",
    bold = true,
    fg = "#e9e9ed"
  },
  MiniStatuslineModeVisual = {
    bg = "#9854f1",
    bold = true,
    fg = "#e9e9ed"
  },
  MiniSurround = {
    bg = "#b15c00",
    fg = "#e9e9ed"
  },
  MiniTablineCurrent = {
    bg = "#a8aecb",
    fg = "#3760bf"
  },
  MiniTablineFill = {
    bg = "#e9e9ed"
  },
  MiniTablineHidden = {
    bg = "#e9e9ec",
    fg = "#68709a"
  },
  MiniTablineModifiedCurrent = {
    bg = "#a8aecb",
    fg = "#8c6c3e"
  },
  MiniTablineModifiedHidden = {
    bg = "#e9e9ec",
    fg = "#7b613d"
  },
  MiniTablineModifiedVisible = {
    bg = "#e9e9ec",
    fg = "#8c6c3e"
  },
  MiniTablineTabpagesection = {
    bg = "#e9e9ec",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#e9e9ec",
    fg = "#3760bf"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#f52a65"
  },
  MiniTestPass = {
    bold = true,
    fg = "#587539"
  },
  MiniTrailspace = {
    bg = "#f52a65"
  },
  ModeMsg = {
    bold = true,
    fg = "#6172b0"
  },
  MoreMsg = {
    fg = "#2e7de9"
  },
  MsgArea = {
    fg = "#6172b0"
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
    fg = "#3760bf"
  },
  NavicText = {
    bg = "NONE",
    fg = "#3760bf"
  },
  NeoTreeDimText = {
    fg = "#a8aecb"
  },
  NeoTreeNormal = {
    bg = "#e9e9ec",
    fg = "#6172b0"
  },
  NeoTreeNormalNC = {
    bg = "#e9e9ec",
    fg = "#6172b0"
  },
  NeogitBranch = {
    fg = "#9854f1"
  },
  NeogitDiffAddHighlight = {
    bg = "#aecde6",
    fg = "#4197a4"
  },
  NeogitDiffContextHighlight = {
    bg = "#c3c6d8",
    fg = "#6172b0"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#dfccd4",
    fg = "#c47981"
  },
  NeogitHunkHeader = {
    bg = "#c4c8da",
    fg = "#3760bf"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#a8aecb",
    fg = "#2e7de9"
  },
  NeogitRemote = {
    fg = "#7847bd"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#7847bd"
  },
  NeotestBorder = {
    fg = "#2e7de9"
  },
  NeotestDir = {
    fg = "#2e7de9"
  },
  NeotestExpandMarker = {
    fg = "#6172b0"
  },
  NeotestFailed = {
    fg = "#f52a65"
  },
  NeotestFile = {
    fg = "#118c74"
  },
  NeotestFocused = {
    fg = "#8c6c3e"
  },
  NeotestIndent = {
    fg = "#6172b0"
  },
  NeotestMarked = {
    fg = "#2e7de9"
  },
  NeotestNamespace = {
    fg = "#38919f"
  },
  NeotestPassed = {
    fg = "#587539"
  },
  NeotestRunning = {
    fg = "#8c6c3e"
  },
  NeotestSkipped = {
    fg = "#2e7de9"
  },
  NeotestTarget = {
    fg = "#2e7de9"
  },
  NeotestTest = {
    fg = "#6172b0"
  },
  NeotestWinSelect = {
    fg = "#2e7de9"
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
    fg = "#6172b0"
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
    fg = "#8990b3"
  },
  Normal = {
    bg = "#e1e2e7",
    fg = "#3760bf"
  },
  NormalFloat = {
    bg = "#e9e9ec",
    fg = "#3760bf"
  },
  NormalNC = {
    bg = "#e1e2e7",
    fg = "#3760bf"
  },
  NormalSB = {
    bg = "#e9e9ec",
    fg = "#6172b0"
  },
  NotifyBackground = {
    bg = "#e1e2e7",
    fg = "#3760bf"
  },
  NotifyDEBUGBody = {
    bg = "#e1e2e7",
    fg = "#3760bf"
  },
  NotifyDEBUGBorder = {
    bg = "#e1e2e7",
    fg = "#c4c6d6"
  },
  NotifyDEBUGIcon = {
    fg = "#848cb5"
  },
  NotifyDEBUGTitle = {
    fg = "#848cb5"
  },
  NotifyERRORBody = {
    bg = "#e1e2e7",
    fg = "#3760bf"
  },
  NotifyERRORBorder = {
    bg = "#e1e2e7",
    fg = "#dbb6bb"
  },
  NotifyERRORIcon = {
    fg = "#c64343"
  },
  NotifyERRORTitle = {
    fg = "#c64343"
  },
  NotifyINFOBody = {
    bg = "#e1e2e7",
    fg = "#3760bf"
  },
  NotifyINFOBorder = {
    bg = "#e1e2e7",
    fg = "#44bbe2"
  },
  NotifyINFOIcon = {
    fg = "#07879d"
  },
  NotifyINFOTitle = {
    fg = "#07879d"
  },
  NotifyTRACEBody = {
    bg = "#e1e2e7",
    fg = "#3760bf"
  },
  NotifyTRACEBorder = {
    bg = "#e1e2e7",
    fg = "#b9b3cd"
  },
  NotifyTRACEIcon = {
    fg = "#7847bd"
  },
  NotifyTRACETitle = {
    fg = "#7847bd"
  },
  NotifyWARNBody = {
    bg = "#e1e2e7",
    fg = "#3760bf"
  },
  NotifyWARNBorder = {
    bg = "#e1e2e7",
    fg = "#c0a388"
  },
  NotifyWARNIcon = {
    fg = "#8c6c3e"
  },
  NotifyWARNTitle = {
    fg = "#8c6c3e"
  },
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#2e7de9"
  },
  NvimTreeGitDeleted = {
    fg = "#c47981"
  },
  NvimTreeGitDirty = {
    fg = "#506d9c"
  },
  NvimTreeGitNew = {
    fg = "#4197a4"
  },
  NvimTreeImageFile = {
    fg = "#6172b0"
  },
  NvimTreeIndentMarker = {
    fg = "#a8aecb"
  },
  NvimTreeNormal = {
    bg = "#e9e9ec",
    fg = "#6172b0"
  },
  NvimTreeNormalNC = {
    bg = "#e9e9ec",
    fg = "#6172b0"
  },
  NvimTreeOpenedFile = {
    bg = "#c4c8da"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#2e7de9"
  },
  NvimTreeSpecialFile = {
    fg = "#7847bd",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#2e7de9"
  },
  NvimTreeWinSeparator = {
    bg = "#e9e9ec",
    fg = "#e9e9ec"
  },
  Operator = {
    fg = "#006a83"
  },
  Pmenu = {
    bg = "#e9e9ec",
    fg = "#3760bf"
  },
  PmenuSbar = {
    bg = "#d8d8dc"
  },
  PmenuSel = {
    bg = "#b3b8d1"
  },
  PmenuThumb = {
    bg = "#a8aecb"
  },
  PreProc = {
    fg = "#007197"
  },
  Question = {
    fg = "#2e7de9"
  },
  QuickFixLine = {
    bg = "#b6bfe2",
    bold = true
  },
  RainbowDelimiterBlue = {
    fg = "#2e7de9"
  },
  RainbowDelimiterCyan = {
    fg = "#007197"
  },
  RainbowDelimiterGreen = {
    fg = "#587539"
  },
  RainbowDelimiterOrange = {
    fg = "#b15c00"
  },
  RainbowDelimiterRed = {
    fg = "#f52a65"
  },
  RainbowDelimiterViolet = {
    fg = "#7847bd"
  },
  RainbowDelimiterYellow = {
    fg = "#8c6c3e"
  },
  ReferencesCount = {
    fg = "#7847bd"
  },
  ReferencesIcon = {
    fg = "#2e7de9"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#c64343"
  },
  ScrollbarErrorHandle = {
    bg = "#c4c8da",
    fg = "#c64343"
  },
  ScrollbarHandle = {
    bg = "#c4c8da",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#118c74"
  },
  ScrollbarHintHandle = {
    bg = "#c4c8da",
    fg = "#118c74"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#07879d"
  },
  ScrollbarInfoHandle = {
    bg = "#c4c8da",
    fg = "#07879d"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#7847bd"
  },
  ScrollbarMiscHandle = {
    bg = "#c4c8da",
    fg = "#7847bd"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#b15c00"
  },
  ScrollbarSearchHandle = {
    bg = "#c4c8da",
    fg = "#b15c00"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#8c6c3e"
  },
  ScrollbarWarnHandle = {
    bg = "#c4c8da",
    fg = "#8c6c3e"
  },
  Search = {
    bg = "#7890dd",
    fg = "#3760bf"
  },
  SignColumn = {
    bg = "#e1e2e7",
    fg = "#a8aecb"
  },
  SignColumnSB = {
    bg = "#e9e9ec",
    fg = "#a8aecb"
  },
  Sneak = {
    bg = "#9854f1",
    fg = "#c4c8da"
  },
  SneakScope = {
    bg = "#b6bfe2"
  },
  Special = {
    fg = "#188092"
  },
  SpecialKey = {
    fg = "#8990b3"
  },
  SpellBad = {
    sp = "#c64343",
    undercurl = true
  },
  SpellCap = {
    sp = "#8c6c3e",
    undercurl = true
  },
  SpellLocal = {
    sp = "#07879d",
    undercurl = true
  },
  SpellRare = {
    sp = "#118c74",
    undercurl = true
  },
  Statement = {
    fg = "#9854f1"
  },
  StatusLine = {
    bg = "#e9e9ec",
    fg = "#6172b0"
  },
  StatusLineNC = {
    bg = "#e9e9ec",
    fg = "#a8aecb"
  },
  String = {
    fg = "#587539"
  },
  Substitute = {
    bg = "#f52a65",
    fg = "#e9e9ed"
  },
  TSNodeKey = {
    bold = true,
    fg = "#d20065"
  },
  TSNodeUnmatched = {
    fg = "#8990b3"
  },
  TSRainbowBlue = {
    fg = "#2e7de9"
  },
  TSRainbowCyan = {
    fg = "#007197"
  },
  TSRainbowGreen = {
    fg = "#587539"
  },
  TSRainbowOrange = {
    fg = "#b15c00"
  },
  TSRainbowRed = {
    fg = "#f52a65"
  },
  TSRainbowViolet = {
    fg = "#7847bd"
  },
  TSRainbowYellow = {
    fg = "#8c6c3e"
  },
  TabLine = {
    bg = "#e9e9ec",
    fg = "#a8aecb"
  },
  TabLineFill = {
    bg = "#e9e9ed"
  },
  TabLineSel = {
    bg = "#2e7de9",
    fg = "#e9e9ed"
  },
  TargetWord = {
    fg = "#007197"
  },
  TelescopeBorder = {
    bg = "#e9e9ec",
    fg = "#2496ac"
  },
  TelescopeNormal = {
    bg = "#e9e9ec",
    fg = "#3760bf"
  },
  Title = {
    bold = true,
    fg = "#2e7de9"
  },
  Todo = {
    bg = "#8c6c3e",
    fg = "#e1e2e7"
  },
  TreesitterContext = {
    bg = "#b3b8d1"
  },
  TroubleCount = {
    bg = "#a8aecb",
    fg = "#9854f1"
  },
  TroubleNormal = {
    bg = "#e9e9ec",
    fg = "#6172b0"
  },
  TroubleText = {
    fg = "#6172b0"
  },
  Type = {
    fg = "#188092"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    fg = "#e9e9ed"
  },
  Visual = {
    bg = "#b6bfe2"
  },
  VisualNOS = {
    bg = "#b6bfe2"
  },
  WarningMsg = {
    fg = "#8c6c3e"
  },
  WhichKey = {
    fg = "#007197"
  },
  WhichKeyDesc = {
    fg = "#9854f1"
  },
  WhichKeyFloat = {
    bg = "#e9e9ec"
  },
  WhichKeyGroup = {
    fg = "#2e7de9"
  },
  WhichKeySeparator = {
    fg = "#848cb5"
  },
  WhichKeySeperator = {
    fg = "#848cb5"
  },
  WhichKeyValue = {
    fg = "#68709a"
  },
  Whitespace = {
    fg = "#a8aecb"
  },
  WildMenu = {
    bg = "#b6bfe2"
  },
  WinSeparator = {
    bold = true,
    fg = "#e9e9ed"
  },
  YankyPut = {
    link = "IncSearch"
  },
  YankyYanked = {
    link = "IncSearch"
  },
  debugBreakpoint = {
    bg = "#b7d3ed",
    fg = "#07879d"
  },
  debugPC = {
    bg = "#e9e9ec"
  },
  diffAdded = {
    fg = "#4197a4"
  },
  diffChanged = {
    fg = "#506d9c"
  },
  diffFile = {
    fg = "#2e7de9"
  },
  diffIndexLine = {
    fg = "#9854f1"
  },
  diffLine = {
    fg = "#848cb5"
  },
  diffNewFile = {
    fg = "#b15c00"
  },
  diffOldFile = {
    fg = "#8c6c3e"
  },
  diffRemoved = {
    fg = "#c47981"
  },
  dosIniLabel = {
    link = "@property"
  },
  healthError = {
    fg = "#c64343"
  },
  healthSuccess = {
    fg = "#387068"
  },
  healthWarning = {
    fg = "#8c6c3e"
  },
  helpCommand = {
    bg = "#a1a6c5",
    fg = "#2e7de9"
  },
  htmlH1 = {
    bold = true,
    fg = "#9854f1"
  },
  htmlH2 = {
    bold = true,
    fg = "#2e7de9"
  },
  illuminatedCurWord = {
    bg = "#a8aecb"
  },
  illuminatedWord = {
    bg = "#a8aecb"
  },
  lCursor = {
    bg = "#3760bf",
    fg = "#e1e2e7"
  },
  markdownCode = {
    fg = "#118c74"
  },
  markdownCodeBlock = {
    fg = "#118c74"
  },
  markdownH1 = {
    bold = true,
    fg = "#9854f1"
  },
  markdownH2 = {
    bold = true,
    fg = "#2e7de9"
  },
  markdownHeadingDelimiter = {
    bold = true,
    fg = "#b15c00"
  },
  markdownLinkText = {
    fg = "#2e7de9",
    underline = true
  },
  mkdCodeDelimiter = {
    bg = "#a1a6c5",
    fg = "#3760bf"
  },
  mkdCodeEnd = {
    bold = true,
    fg = "#118c74"
  },
  mkdCodeStart = {
    bold = true,
    fg = "#118c74"
  },
  qfFileName = {
    fg = "#2e7de9"
  },
  qfLineNr = {
    fg = "#68709a"
  },
  rainbowcol1 = {
    fg = "#f52a65"
  },
  rainbowcol2 = {
    fg = "#8c6c3e"
  },
  rainbowcol3 = {
    fg = "#587539"
  },
  rainbowcol4 = {
    fg = "#118c74"
  },
  rainbowcol5 = {
    fg = "#2e7de9"
  },
  rainbowcol6 = {
    fg = "#9854f1"
  },
  rainbowcol7 = {
    fg = "#7847bd"
  }
}
