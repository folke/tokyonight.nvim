local colors = {
  bg = "#222436",
  bg_dark = "#1e2030",
  bg_float = "#1e2030",
  bg_highlight = "#2f334d",
  bg_popup = "#1e2030",
  bg_search = "#3e68d7",
  bg_sidebar = "#1e2030",
  bg_statusline = "#1e2030",
  bg_visual = "#3654a7",
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
  comment = "#7a88cf",
  cyan = "#86e1fc",
  dark3 = "#545c7e",
  dark5 = "#737aa2",
  diff = {
    add = "#273849",
    change = "#252a3f",
    delete = "#3a273a",
    text = "#394b70"
  },
  error = "#c53b53",
  fg = "#c8d3f5",
  fg_dark = "#828bb8",
  fg_float = "#828bb8",
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
  ["@operator"] = {
    fg = "#89ddff"
  },
  ["@parameter"] = {
    fg = "#ffc777"
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
  ["@string.escape"] = {
    fg = "#c099ff"
  },
  ["@string.regex"] = {
    fg = "#b4f9f8"
  },
  ["@text.danger"] = {
    bg = "#c53b53",
    fg = "#222436"
  },
  ["@text.literal.markdown_inline"] = {
    bg = "#444a73",
    fg = "#82aaff"
  },
  ["@text.reference"] = {
    fg = "#4fd6be"
  },
  ["@text.warning"] = {
    bg = "#ffc777",
    fg = "#222436"
  },
  ["@variable"] = {
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
  AlphaButtons = {
    fg = "#c099ff"
  },
  AlphaFooter = {
    fg = "#ffc777",
    italic = true
  },
  AlphaHeader = {
    fg = "#82aaff"
  },
  AlphaHeaderLabel = {
    fg = "#ff966c"
  },
  AlphaShortcut = {
    fg = "#86e1fc"
  },
  Bold = {
    bold = true
  },
  BufferCurrent = {
    bg = "#3b4261",
    fg = "#c8d3f5"
  },
  BufferCurrentIndex = {
    bg = "#3b4261",
    fg = "#0db9d7"
  },
  BufferCurrentMod = {
    bg = "#3b4261",
    fg = "#ffc777"
  },
  BufferCurrentSign = {
    bg = "#3b4261",
    fg = "#0db9d7"
  },
  BufferCurrentTarget = {
    bg = "#3b4261",
    fg = "#ff757f"
  },
  BufferInactive = {
    bg = "#1e2030",
    fg = "#737aa2"
  },
  BufferInactiveIndex = {
    bg = "#1e2030",
    fg = "#737aa2"
  },
  BufferInactiveMod = {
    bg = "#1e2030",
    fg = "#bd9664"
  },
  BufferInactiveSign = {
    bg = "#1e2030",
    fg = "#589ed7"
  },
  BufferInactiveTarget = {
    bg = "#1e2030",
    fg = "#ff757f"
  },
  BufferLineIndicatorSelected = {
    fg = "#7ca1f2"
  },
  BufferTabpage = {
    bg = "#1e2030",
    fg = "#589ed7"
  },
  BufferTabpages = {
    bg = "#1e2030",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#1e2030",
    fg = "#c8d3f5"
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
  CmpItemKindClass = {
    bg = "NONE",
    fg = "#ff966c"
  },
  CmpItemKindConstant = {
    bg = "NONE",
    fg = "#c099ff"
  },
  CmpItemKindConstructor = {
    bg = "NONE",
    fg = "#82aaff"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#828bb8"
  },
  CmpItemKindEnum = {
    bg = "NONE",
    fg = "#ff966c"
  },
  CmpItemKindEnumMember = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  CmpItemKindEvent = {
    bg = "NONE",
    fg = "#ff966c"
  },
  CmpItemKindField = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  CmpItemKindFunction = {
    bg = "NONE",
    fg = "#82aaff"
  },
  CmpItemKindInterface = {
    bg = "NONE",
    fg = "#ff966c"
  },
  CmpItemKindKeyword = {
    bg = "NONE",
    fg = "#86e1fc"
  },
  CmpItemKindMethod = {
    bg = "NONE",
    fg = "#82aaff"
  },
  CmpItemKindModule = {
    bg = "NONE",
    fg = "#ffc777"
  },
  CmpItemKindOperator = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  CmpItemKindProperty = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  CmpItemKindReference = {
    bg = "NONE",
    fg = "#c099ff"
  },
  CmpItemKindSnippet = {
    bg = "NONE",
    fg = "#737aa2"
  },
  CmpItemKindStruct = {
    bg = "NONE",
    fg = "#ff966c"
  },
  CmpItemKindTypeParameter = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  CmpItemKindUnit = {
    bg = "NONE",
    fg = "#ff966c"
  },
  CmpItemKindValue = {
    bg = "NONE",
    fg = "#c099ff"
  },
  CmpItemKindVariable = {
    bg = "NONE",
    fg = "#c099ff"
  },
  CmpItemMenu = {
    bg = "NONE",
    fg = "#7a88cf"
  },
  ColorColumn = {
    bg = "#1b1d2b"
  },
  Comment = {
    fg = "#7a88cf",
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
  DashboardCenter = {
    fg = "#c099ff"
  },
  DashboardFooter = {
    fg = "#ffc777",
    italic = true
  },
  DashboardHeader = {
    fg = "#82aaff"
  },
  DashboardShortCut = {
    fg = "#86e1fc"
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
  FloatBorder = {
    bg = "#1e2030",
    fg = "#589ed7"
  },
  FoldColumn = {
    bg = "#222436",
    fg = "#7a88cf"
  },
  Folded = {
    bg = "#3b4261",
    fg = "#82aaff"
  },
  Foo = {
    bg = "#ff007c",
    fg = "#ff007c"
  },
  Function = {
    fg = "#82aaff",
    style = {}
  },
  GitGutterAdd = {
    fg = "#627259"
  },
  GitGutterChange = {
    fg = "#485a86"
  },
  GitGutterDelete = {
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
    fg = "#7a88cf"
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
    fg = "#3654a7"
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
    bg = "#2a3763",
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
    fg = "#65bcff"
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
    fg = "#7a88cf",
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
    bg = "NONE",
    fg = "#ff966c"
  },
  NavicIconsBoolean = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NavicIconsClass = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NavicIconsConstant = {
    bg = "NONE",
    fg = "#c099ff"
  },
  NavicIconsConstructor = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NavicIconsEnum = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NavicIconsEnumMember = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  NavicIconsEvent = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NavicIconsField = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  NavicIconsFile = {
    bg = "NONE",
    fg = "#c8d3f5"
  },
  NavicIconsFunction = {
    bg = "NONE",
    fg = "#82aaff"
  },
  NavicIconsInterface = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NavicIconsKey = {
    bg = "NONE",
    fg = "#fca7ea"
  },
  NavicIconsKeyword = {
    bg = "NONE",
    fg = "#fca7ea"
  },
  NavicIconsMethod = {
    bg = "NONE",
    fg = "#82aaff"
  },
  NavicIconsModule = {
    bg = "NONE",
    fg = "#ffc777"
  },
  NavicIconsNamespace = {
    bg = "NONE",
    fg = "#c8d3f5"
  },
  NavicIconsNull = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NavicIconsNumber = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NavicIconsObject = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NavicIconsOperator = {
    bg = "NONE",
    fg = "#c8d3f5"
  },
  NavicIconsPackage = {
    bg = "NONE",
    fg = "#c8d3f5"
  },
  NavicIconsProperty = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  NavicIconsString = {
    bg = "NONE",
    fg = "#c3e88d"
  },
  NavicIconsStruct = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NavicIconsTypeParameter = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  NavicIconsVariable = {
    bg = "NONE",
    fg = "#c099ff"
  },
  NavicSeparator = {
    bg = "NONE",
    fg = "#c8d3f5"
  },
  NavicText = {
    bg = "NONE",
    fg = "#c8d3f5"
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
  NoiceCompletionItemKindClass = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NoiceCompletionItemKindConstant = {
    bg = "NONE",
    fg = "#c099ff"
  },
  NoiceCompletionItemKindConstructor = {
    bg = "NONE",
    fg = "#82aaff"
  },
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#828bb8"
  },
  NoiceCompletionItemKindEnum = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NoiceCompletionItemKindEnumMember = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  NoiceCompletionItemKindEvent = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NoiceCompletionItemKindField = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  NoiceCompletionItemKindFunction = {
    bg = "NONE",
    fg = "#82aaff"
  },
  NoiceCompletionItemKindInterface = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NoiceCompletionItemKindKeyword = {
    bg = "NONE",
    fg = "#86e1fc"
  },
  NoiceCompletionItemKindMethod = {
    bg = "NONE",
    fg = "#82aaff"
  },
  NoiceCompletionItemKindModule = {
    bg = "NONE",
    fg = "#ffc777"
  },
  NoiceCompletionItemKindOperator = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  NoiceCompletionItemKindProperty = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  NoiceCompletionItemKindReference = {
    bg = "NONE",
    fg = "#c099ff"
  },
  NoiceCompletionItemKindSnippet = {
    bg = "NONE",
    fg = "#737aa2"
  },
  NoiceCompletionItemKindStruct = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NoiceCompletionItemKindTypeParameter = {
    bg = "NONE",
    fg = "#4fd6be"
  },
  NoiceCompletionItemKindUnit = {
    bg = "NONE",
    fg = "#ff966c"
  },
  NoiceCompletionItemKindValue = {
    bg = "NONE",
    fg = "#c099ff"
  },
  NoiceCompletionItemKindVariable = {
    bg = "NONE",
    fg = "#c099ff"
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
    fg = "#828bb8"
  },
  NormalNC = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  NormalSB = {
    bg = "#1e2030",
    fg = "#828bb8"
  },
  NotifyDEBUGBody = {
    bg = "#222436",
    fg = "#c8d3f5"
  },
  NotifyDEBUGBorder = {
    bg = "#222436",
    fg = "#3c4264"
  },
  NotifyDEBUGIcon = {
    fg = "#7a88cf"
  },
  NotifyDEBUGTitle = {
    fg = "#7a88cf"
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
    bg = "#3654a7",
    bold = true
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
    bg = "#3654a7"
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
  TSNote = {
    bg = "#0db9d7",
    fg = "#222436"
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
    bg = "#3654a7"
  },
  VisualNOS = {
    bg = "#3654a7"
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
    fg = "#7a88cf"
  },
  WhichKeySeperator = {
    fg = "#7a88cf"
  },
  WhichKeyValue = {
    fg = "#737aa2"
  },
  Whitespace = {
    fg = "#3b4261"
  },
  WildMenu = {
    bg = "#3654a7"
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
    fg = "#7a88cf"
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
  healthError = {
    fg = "#c53b53"
  },
  healthSuccess = {
    fg = "#4fd6be"
  },
  healthWarning = {
    fg = "#ffc777"
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
