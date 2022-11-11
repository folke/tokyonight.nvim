local colors = {
  bg = "#1a1b26",
  bg_dark = "#16161e",
  bg_float = "#16161e",
  bg_highlight = "#292e42",
  bg_popup = "#16161e",
  bg_search = "#3d59a1",
  bg_sidebar = "#16161e",
  bg_statusline = "#16161e",
  bg_visual = "#33467c",
  black = "#15161e",
  blue = "#7aa2f7",
  blue0 = "#3d59a1",
  blue1 = "#2ac3de",
  blue2 = "#0db9d7",
  blue5 = "#89ddff",
  blue6 = "#b4f9f8",
  blue7 = "#394b70",
  border = "#15161e",
  border_highlight = "#27a1b9",
  comment = "#565f89",
  cyan = "#7dcfff",
  dark3 = "#545c7e",
  dark5 = "#737aa2",
  diff = {
    add = "#20303b",
    change = "#1f2231",
    delete = "#37222c",
    text = "#394b70"
  },
  error = "#db4b4b",
  fg = "#c0caf5",
  fg_dark = "#a9b1d6",
  fg_float = "#a9b1d6",
  fg_gutter = "#3b4261",
  fg_sidebar = "#a9b1d6",
  git = {
    add = "#4097a3",
    change = "#506d9b",
    delete = "#c47981",
    ignore = "#545c7e"
  },
  gitSigns = {
    add = "#399a96",
    change = "#6382bd",
    delete = "#c25d64"
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
  red = "#f7768e",
  red1 = "#db4b4b",
  teal = "#1abc9c",
  terminal_black = "#414868",
  warning = "#e0af68",
  yellow = "#e0af68"
}

local highlights = {
  ["@constructor"] = {
    fg = "#bb9af7"
  },
  ["@field"] = {
    fg = "#73daca"
  },
  ["@keyword"] = {
    fg = "#9d7cd8",
    style = {
      italic = true
    }
  },
  ["@keyword.function"] = {
    fg = "#bb9af7",
    style = {}
  },
  ["@label"] = {
    fg = "#7aa2f7"
  },
  ["@operator"] = {
    fg = "#89ddff"
  },
  ["@parameter"] = {
    fg = "#e0af68"
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
    bold = true,
    fg = "#ff9e64"
  },
  ["@string.escape"] = {
    fg = "#bb9af7"
  },
  ["@string.regex"] = {
    fg = "#b4f9f8"
  },
  ["@text.danger"] = {
    bg = "#db4b4b",
    fg = "#1a1b26"
  },
  ["@text.literal.markdown_inline"] = {
    bg = "#414868",
    fg = "#7aa2f7"
  },
  ["@text.reference"] = {
    fg = "#1abc9c"
  },
  ["@text.warning"] = {
    bg = "#e0af68",
    fg = "#1a1b26"
  },
  ["@variable"] = {
    style = {}
  },
  ["@variable.builtin"] = {
    fg = "#f7768e"
  },
  ALEErrorSign = {
    fg = "#db4b4b"
  },
  ALEWarningSign = {
    fg = "#e0af68"
  },
  AlphaButtons = {
    fg = "#bb9af7"
  },
  AlphaFooter = {
    fg = "#e0af68",
    italic = true
  },
  AlphaHeader = {
    fg = "#7aa2f7"
  },
  AlphaHeaderLabel = {
    fg = "#ff9e64"
  },
  AlphaShortcut = {
    fg = "#7dcfff"
  },
  Bold = {
    bold = true
  },
  BufferCurrent = {
    bg = "#3b4261",
    fg = "#c0caf5"
  },
  BufferCurrentIndex = {
    bg = "#3b4261",
    fg = "#0db9d7"
  },
  BufferCurrentMod = {
    bg = "#3b4261",
    fg = "#e0af68"
  },
  BufferCurrentSign = {
    bg = "#3b4261",
    fg = "#0db9d7"
  },
  BufferCurrentTarget = {
    bg = "#3b4261",
    fg = "#f7768e"
  },
  BufferInactive = {
    bg = "#16161e",
    fg = "#737aa2"
  },
  BufferInactiveIndex = {
    bg = "#16161e",
    fg = "#737aa2"
  },
  BufferInactiveMod = {
    bg = "#16161e",
    fg = "#a58354"
  },
  BufferInactiveSign = {
    bg = "#16161e",
    fg = "#27a1b9"
  },
  BufferInactiveTarget = {
    bg = "#16161e",
    fg = "#f7768e"
  },
  BufferLineIndicatorSelected = {
    fg = "#506d9b"
  },
  BufferTabpage = {
    bg = "#16161e",
    fg = "#27a1b9"
  },
  BufferTabpages = {
    bg = "#16161e",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#16161e",
    fg = "#c0caf5"
  },
  BufferVisibleIndex = {
    bg = "#16161e",
    fg = "#0db9d7"
  },
  BufferVisibleMod = {
    bg = "#16161e",
    fg = "#e0af68"
  },
  BufferVisibleSign = {
    bg = "#16161e",
    fg = "#0db9d7"
  },
  BufferVisibleTarget = {
    bg = "#16161e",
    fg = "#f7768e"
  },
  Character = {
    fg = "#9ece6a"
  },
  CmpDocumentation = {
    bg = "#16161e",
    fg = "#c0caf5"
  },
  CmpDocumentationBorder = {
    bg = "#16161e",
    fg = "#27a1b9"
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
  CmpItemKindClass = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  CmpItemKindConstant = {
    bg = "NONE",
    fg = "#bb9af7"
  },
  CmpItemKindConstructor = {
    bg = "NONE",
    fg = "#7aa2f7"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#a9b1d6"
  },
  CmpItemKindEnum = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  CmpItemKindEnumMember = {
    bg = "NONE",
    fg = "#73daca"
  },
  CmpItemKindEvent = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  CmpItemKindField = {
    bg = "NONE",
    fg = "#73daca"
  },
  CmpItemKindFunction = {
    bg = "NONE",
    fg = "#7aa2f7"
  },
  CmpItemKindInterface = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  CmpItemKindKeyword = {
    bg = "NONE",
    fg = "#7dcfff"
  },
  CmpItemKindMethod = {
    bg = "NONE",
    fg = "#7aa2f7"
  },
  CmpItemKindModule = {
    bg = "NONE",
    fg = "#e0af68"
  },
  CmpItemKindOperator = {
    bg = "NONE",
    fg = "#73daca"
  },
  CmpItemKindProperty = {
    bg = "NONE",
    fg = "#73daca"
  },
  CmpItemKindReference = {
    bg = "NONE",
    fg = "#bb9af7"
  },
  CmpItemKindSnippet = {
    bg = "NONE",
    fg = "#737aa2"
  },
  CmpItemKindStruct = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  CmpItemKindTypeParameter = {
    bg = "NONE",
    fg = "#73daca"
  },
  CmpItemKindUnit = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  CmpItemKindValue = {
    bg = "NONE",
    fg = "#bb9af7"
  },
  CmpItemKindVariable = {
    bg = "NONE",
    fg = "#bb9af7"
  },
  CmpItemMenu = {
    bg = "NONE",
    fg = "#565f89"
  },
  ColorColumn = {
    bg = "#15161e"
  },
  Comment = {
    fg = "#565f89",
    style = {
      italic = true
    }
  },
  Conceal = {
    fg = "#737aa2"
  },
  Constant = {
    fg = "#ff9e64"
  },
  CurSearch = {
    link = "IncSearch"
  },
  Cursor = {
    bg = "#c0caf5",
    fg = "#1a1b26"
  },
  CursorColumn = {
    bg = "#292e42"
  },
  CursorIM = {
    bg = "#c0caf5",
    fg = "#1a1b26"
  },
  CursorLine = {
    bg = "#292e42"
  },
  CursorLineNr = {
    fg = "#737aa2"
  },
  DashboardCenter = {
    fg = "#bb9af7"
  },
  DashboardFooter = {
    fg = "#e0af68",
    italic = true
  },
  DashboardHeader = {
    fg = "#7aa2f7"
  },
  DashboardShortCut = {
    fg = "#7dcfff"
  },
  DefinitionCount = {
    fg = "#9d7cd8"
  },
  DefinitionIcon = {
    fg = "#7aa2f7"
  },
  DiagnosticError = {
    fg = "#db4b4b"
  },
  DiagnosticHint = {
    fg = "#1abc9c"
  },
  DiagnosticInfo = {
    fg = "#0db9d7"
  },
  DiagnosticInformation = {
    link = "DiagnosticInfo"
  },
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
  DiagnosticVirtualTextError = {
    bg = "#2d202a",
    fg = "#db4b4b"
  },
  DiagnosticVirtualTextHint = {
    bg = "#1a2b32",
    fg = "#1abc9c"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#192b38",
    fg = "#0db9d7"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#2e2a2d",
    fg = "#e0af68"
  },
  DiagnosticWarn = {
    fg = "#e0af68"
  },
  DiagnosticWarning = {
    link = "DiagnosticWarn"
  },
  DiffAdd = {
    bg = "#20303b"
  },
  DiffChange = {
    bg = "#1f2231"
  },
  DiffDelete = {
    bg = "#37222c"
  },
  DiffText = {
    bg = "#394b70"
  },
  Directory = {
    fg = "#7aa2f7"
  },
  EndOfBuffer = {
    fg = "#1a1b26"
  },
  Error = {
    fg = "#db4b4b"
  },
  ErrorMsg = {
    fg = "#db4b4b"
  },
  FernBranchText = {
    fg = "#7aa2f7"
  },
  FloatBorder = {
    bg = "#16161e",
    fg = "#27a1b9"
  },
  FoldColumn = {
    bg = "#1a1b26",
    fg = "#565f89"
  },
  Folded = {
    bg = "#3b4261",
    fg = "#7aa2f7"
  },
  Foo = {
    bg = "#ff007c",
    fg = "#ff007c"
  },
  Function = {
    fg = "#7aa2f7",
    style = {}
  },
  GitGutterAdd = {
    fg = "#399a96"
  },
  GitGutterChange = {
    fg = "#6382bd"
  },
  GitGutterDelete = {
    fg = "#c25d64"
  },
  GitSignsAdd = {
    fg = "#399a96"
  },
  GitSignsChange = {
    fg = "#6382bd"
  },
  GitSignsDelete = {
    fg = "#c25d64"
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
  HopNextKey = {
    bold = true,
    fg = "#ff007c"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#0db9d7"
  },
  HopNextKey2 = {
    fg = "#127a90"
  },
  HopUnmatched = {
    fg = "#545c7e"
  },
  Identifier = {
    fg = "#bb9af7",
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
    bg = "#ff9e64",
    fg = "#15161e"
  },
  IndentBlanklineChar = {
    fg = "#3b4261",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#9d7cd8",
    nocombine = true
  },
  Italic = {
    italic = true
  },
  Keyword = {
    fg = "#7dcfff",
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
    fg = "#73daca"
  },
  LeapMatch = {
    bg = "#ff007c",
    bold = true,
    fg = "#c0caf5"
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
    fg = "#73daca",
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
    fg = "#ff9e64"
  },
  LightspeedOneCharMatch = {
    bg = "#ff007c",
    bold = true,
    fg = "#c0caf5"
  },
  LightspeedPendingOpArea = {
    bg = "#ff007c",
    fg = "#c0caf5"
  },
  LightspeedShortcut = {
    bg = "#ff007c",
    bold = true,
    fg = "#c0caf5",
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
    fg = "#565f89"
  },
  LspFloatWinBorder = {
    fg = "#27a1b9"
  },
  LspFloatWinNormal = {
    bg = "#16161e"
  },
  LspInfoBorder = {
    bg = "#16161e",
    fg = "#27a1b9"
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
    fg = "#33467c"
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
    bg = "#242c48",
    bold = true
  },
  MatchParen = {
    bold = true,
    fg = "#ff9e64"
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
    fg = "#2ac3de"
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
    fg = "#e0af68",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#7aa2f7"
  },
  MiniStarterInactive = {
    fg = "#565f89",
    style = {
      italic = true
    }
  },
  MiniStarterItem = {
    bg = "#1a1b26",
    fg = "#c0caf5"
  },
  MiniStarterItemBullet = {
    fg = "#27a1b9"
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
    bg = "#292e42",
    fg = "#a9b1d6"
  },
  MiniStatuslineFileinfo = {
    bg = "#292e42",
    fg = "#a9b1d6"
  },
  MiniStatuslineFilename = {
    bg = "#3b4261",
    fg = "#a9b1d6"
  },
  MiniStatuslineInactive = {
    bg = "#16161e",
    fg = "#7aa2f7"
  },
  MiniStatuslineModeCommand = {
    bg = "#e0af68",
    bold = true,
    fg = "#15161e"
  },
  MiniStatuslineModeInsert = {
    bg = "#9ece6a",
    bold = true,
    fg = "#15161e"
  },
  MiniStatuslineModeNormal = {
    bg = "#7aa2f7",
    bold = true,
    fg = "#15161e"
  },
  MiniStatuslineModeOther = {
    bg = "#1abc9c",
    bold = true,
    fg = "#15161e"
  },
  MiniStatuslineModeReplace = {
    bg = "#f7768e",
    bold = true,
    fg = "#15161e"
  },
  MiniStatuslineModeVisual = {
    bg = "#bb9af7",
    bold = true,
    fg = "#15161e"
  },
  MiniSurround = {
    bg = "#ff9e64",
    fg = "#15161e"
  },
  MiniTablineCurrent = {
    bg = "#3b4261",
    fg = "#c0caf5"
  },
  MiniTablineFill = {
    bg = "#15161e"
  },
  MiniTablineHidden = {
    bg = "#16161e",
    fg = "#737aa2"
  },
  MiniTablineModifiedCurrent = {
    bg = "#3b4261",
    fg = "#e0af68"
  },
  MiniTablineModifiedHidden = {
    bg = "#16161e",
    fg = "#a58354"
  },
  MiniTablineModifiedVisible = {
    bg = "#16161e",
    fg = "#e0af68"
  },
  MiniTablineTabpagesection = {
    bg = "#16161e",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#16161e",
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
  NavicIconsArray = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NavicIconsBoolean = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NavicIconsClass = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NavicIconsConstant = {
    bg = "NONE",
    fg = "#bb9af7"
  },
  NavicIconsConstructor = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NavicIconsEnum = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NavicIconsEnumMember = {
    bg = "NONE",
    fg = "#73daca"
  },
  NavicIconsEvent = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NavicIconsField = {
    bg = "NONE",
    fg = "#73daca"
  },
  NavicIconsFile = {
    bg = "NONE",
    fg = "#c0caf5"
  },
  NavicIconsFunction = {
    bg = "NONE",
    fg = "#7aa2f7"
  },
  NavicIconsInterface = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NavicIconsKey = {
    bg = "NONE",
    fg = "#9d7cd8"
  },
  NavicIconsKeyword = {
    bg = "NONE",
    fg = "#9d7cd8"
  },
  NavicIconsMethod = {
    bg = "NONE",
    fg = "#7aa2f7"
  },
  NavicIconsModule = {
    bg = "NONE",
    fg = "#e0af68"
  },
  NavicIconsNamespace = {
    bg = "NONE",
    fg = "#c0caf5"
  },
  NavicIconsNull = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NavicIconsNumber = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NavicIconsObject = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NavicIconsOperator = {
    bg = "NONE",
    fg = "#c0caf5"
  },
  NavicIconsPackage = {
    bg = "NONE",
    fg = "#c0caf5"
  },
  NavicIconsProperty = {
    bg = "NONE",
    fg = "#73daca"
  },
  NavicIconsString = {
    bg = "NONE",
    fg = "#9ece6a"
  },
  NavicIconsStruct = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NavicIconsTypeParameter = {
    bg = "NONE",
    fg = "#73daca"
  },
  NavicIconsVariable = {
    bg = "NONE",
    fg = "#bb9af7"
  },
  NavicSeparator = {
    bg = "NONE",
    fg = "#c0caf5"
  },
  NavicText = {
    bg = "NONE",
    fg = "#c0caf5"
  },
  NeoTreeNormal = {
    bg = "#16161e",
    fg = "#a9b1d6"
  },
  NeoTreeNormalNC = {
    bg = "#16161e",
    fg = "#a9b1d6"
  },
  NeogitBranch = {
    fg = "#bb9af7"
  },
  NeogitDiffAddHighlight = {
    bg = "#20303b",
    fg = "#4097a3"
  },
  NeogitDiffContextHighlight = {
    bg = "#2b2f44",
    fg = "#a9b1d6"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#37222c",
    fg = "#c47981"
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
  NoiceCompletionItemKindClass = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NoiceCompletionItemKindConstant = {
    bg = "NONE",
    fg = "#bb9af7"
  },
  NoiceCompletionItemKindConstructor = {
    bg = "NONE",
    fg = "#7aa2f7"
  },
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#a9b1d6"
  },
  NoiceCompletionItemKindEnum = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NoiceCompletionItemKindEnumMember = {
    bg = "NONE",
    fg = "#73daca"
  },
  NoiceCompletionItemKindEvent = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NoiceCompletionItemKindField = {
    bg = "NONE",
    fg = "#73daca"
  },
  NoiceCompletionItemKindFunction = {
    bg = "NONE",
    fg = "#7aa2f7"
  },
  NoiceCompletionItemKindInterface = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NoiceCompletionItemKindKeyword = {
    bg = "NONE",
    fg = "#7dcfff"
  },
  NoiceCompletionItemKindMethod = {
    bg = "NONE",
    fg = "#7aa2f7"
  },
  NoiceCompletionItemKindModule = {
    bg = "NONE",
    fg = "#e0af68"
  },
  NoiceCompletionItemKindOperator = {
    bg = "NONE",
    fg = "#73daca"
  },
  NoiceCompletionItemKindProperty = {
    bg = "NONE",
    fg = "#73daca"
  },
  NoiceCompletionItemKindReference = {
    bg = "NONE",
    fg = "#bb9af7"
  },
  NoiceCompletionItemKindSnippet = {
    bg = "NONE",
    fg = "#737aa2"
  },
  NoiceCompletionItemKindStruct = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NoiceCompletionItemKindTypeParameter = {
    bg = "NONE",
    fg = "#73daca"
  },
  NoiceCompletionItemKindUnit = {
    bg = "NONE",
    fg = "#ff9e64"
  },
  NoiceCompletionItemKindValue = {
    bg = "NONE",
    fg = "#bb9af7"
  },
  NoiceCompletionItemKindVariable = {
    bg = "NONE",
    fg = "#bb9af7"
  },
  NonText = {
    fg = "#545c7e"
  },
  Normal = {
    bg = "#1a1b26",
    fg = "#c0caf5"
  },
  NormalFloat = {
    bg = "#16161e",
    fg = "#a9b1d6"
  },
  NormalNC = {
    bg = "#1a1b26",
    fg = "#c0caf5"
  },
  NormalSB = {
    bg = "#16161e",
    fg = "#a9b1d6"
  },
  NotifyDEBUGBody = {
    bg = "#1a1b26",
    fg = "#c0caf5"
  },
  NotifyDEBUGBorder = {
    bg = "#1a1b26",
    fg = "#2c2f44"
  },
  NotifyDEBUGIcon = {
    fg = "#565f89"
  },
  NotifyDEBUGTitle = {
    fg = "#565f89"
  },
  NotifyERRORBody = {
    bg = "#1a1b26",
    fg = "#c0caf5"
  },
  NotifyERRORBorder = {
    bg = "#1a1b26",
    fg = "#542931"
  },
  NotifyERRORIcon = {
    fg = "#db4b4b"
  },
  NotifyERRORTitle = {
    fg = "#db4b4b"
  },
  NotifyINFOBody = {
    bg = "#1a1b26",
    fg = "#c0caf5"
  },
  NotifyINFOBorder = {
    bg = "#1a1b26",
    fg = "#164a5b"
  },
  NotifyINFOIcon = {
    fg = "#0db9d7"
  },
  NotifyINFOTitle = {
    fg = "#0db9d7"
  },
  NotifyTRACEBody = {
    bg = "#1a1b26",
    fg = "#c0caf5"
  },
  NotifyTRACEBorder = {
    bg = "#1a1b26",
    fg = "#41385b"
  },
  NotifyTRACEIcon = {
    fg = "#9d7cd8"
  },
  NotifyTRACETitle = {
    fg = "#9d7cd8"
  },
  NotifyWARNBody = {
    bg = "#1a1b26",
    fg = "#c0caf5"
  },
  NotifyWARNBorder = {
    bg = "#1a1b26",
    fg = "#55473a"
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
    fg = "#c47981"
  },
  NvimTreeGitDirty = {
    fg = "#506d9b"
  },
  NvimTreeGitNew = {
    fg = "#4097a3"
  },
  NvimTreeImageFile = {
    fg = "#a9b1d6"
  },
  NvimTreeIndentMarker = {
    fg = "#3b4261"
  },
  NvimTreeNormal = {
    bg = "#16161e",
    fg = "#a9b1d6"
  },
  NvimTreeNormalNC = {
    bg = "#16161e",
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
    bg = "#16161e",
    fg = "#16161e"
  },
  Operator = {
    fg = "#89ddff"
  },
  Pmenu = {
    bg = "#16161e",
    fg = "#c0caf5"
  },
  PmenuSbar = {
    bg = "#222229"
  },
  PmenuSel = {
    bg = "#343a55"
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
    bg = "#33467c",
    bold = true
  },
  ReferencesCount = {
    fg = "#9d7cd8"
  },
  ReferencesIcon = {
    fg = "#7aa2f7"
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
  SignColumn = {
    bg = "#1a1b26",
    fg = "#3b4261"
  },
  SignColumnSB = {
    bg = "#16161e",
    fg = "#3b4261"
  },
  Sneak = {
    bg = "#bb9af7",
    fg = "#292e42"
  },
  SneakScope = {
    bg = "#33467c"
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
    bg = "#16161e",
    fg = "#a9b1d6"
  },
  StatusLineNC = {
    bg = "#16161e",
    fg = "#3b4261"
  },
  String = {
    fg = "#9ece6a"
  },
  Substitute = {
    bg = "#f7768e",
    fg = "#15161e"
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
    fg = "#1a1b26"
  },
  TabLine = {
    bg = "#16161e",
    fg = "#3b4261"
  },
  TabLineFill = {
    bg = "#15161e"
  },
  TabLineSel = {
    bg = "#7aa2f7",
    fg = "#15161e"
  },
  TargetWord = {
    fg = "#7dcfff"
  },
  TelescopeBorder = {
    bg = "#16161e",
    fg = "#27a1b9"
  },
  TelescopeNormal = {
    bg = "#16161e",
    fg = "#c0caf5"
  },
  Title = {
    bold = true,
    fg = "#7aa2f7"
  },
  Todo = {
    bg = "#e0af68",
    fg = "#1a1b26"
  },
  TroubleCount = {
    bg = "#3b4261",
    fg = "#bb9af7"
  },
  TroubleNormal = {
    bg = "#16161e",
    fg = "#a9b1d6"
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
    fg = "#15161e"
  },
  Visual = {
    bg = "#33467c"
  },
  VisualNOS = {
    bg = "#33467c"
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
  WhichKeyFloat = {
    bg = "#16161e"
  },
  WhichKeyGroup = {
    fg = "#7aa2f7"
  },
  WhichKeySeparator = {
    fg = "#565f89"
  },
  WhichKeySeperator = {
    fg = "#565f89"
  },
  WhichKeyValue = {
    fg = "#737aa2"
  },
  Whitespace = {
    fg = "#3b4261"
  },
  WildMenu = {
    bg = "#33467c"
  },
  WinSeparator = {
    bold = true,
    fg = "#15161e"
  },
  YankyPut = {
    link = "IncSearch"
  },
  YankyYanked = {
    link = "IncSearch"
  },
  debugBreakpoint = {
    bg = "#192b38",
    fg = "#0db9d7"
  },
  debugPC = {
    bg = "#16161e"
  },
  diffAdded = {
    fg = "#4097a3"
  },
  diffChanged = {
    fg = "#506d9b"
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
    fg = "#ff9e64"
  },
  diffOldFile = {
    fg = "#e0af68"
  },
  diffRemoved = {
    fg = "#c47981"
  },
  healthError = {
    fg = "#db4b4b"
  },
  healthSuccess = {
    fg = "#73daca"
  },
  healthWarning = {
    fg = "#e0af68"
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
    fg = "#1a1b26"
  },
  markdownCode = {
    fg = "#1abc9c"
  },
  markdownCodeBlock = {
    fg = "#1abc9c"
  },
  markdownH1 = {
    bold = true,
    fg = "#bb9af7"
  },
  markdownH2 = {
    bold = true,
    fg = "#7aa2f7"
  },
  markdownHeadingDelimiter = {
    bold = true,
    fg = "#ff9e64"
  },
  markdownLinkText = {
    fg = "#7aa2f7",
    underline = true
  },
  mkdCodeDelimiter = {
    bg = "#414868",
    fg = "#c0caf5"
  },
  mkdCodeEnd = {
    bold = true,
    fg = "#1abc9c"
  },
  mkdCodeStart = {
    bold = true,
    fg = "#1abc9c"
  },
  qfFileName = {
    fg = "#7aa2f7"
  },
  qfLineNr = {
    fg = "#737aa2"
  },
  rainbowcol1 = {
    fg = "#f7768e"
  },
  rainbowcol2 = {
    fg = "#e0af68"
  },
  rainbowcol3 = {
    fg = "#9ece6a"
  },
  rainbowcol4 = {
    fg = "#1abc9c"
  },
  rainbowcol5 = {
    fg = "#7aa2f7"
  },
  rainbowcol6 = {
    fg = "#bb9af7"
  },
  rainbowcol7 = {
    fg = "#9d7cd8"
  }
}
