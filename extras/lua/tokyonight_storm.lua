local colors = {
  bg = "#24283b",
  bg_dark = "#1f2335",
  bg_float = "#1f2335",
  bg_highlight = "#292e42",
  bg_popup = "#1f2335",
  bg_search = "#3d59a1",
  bg_sidebar = "#1f2335",
  bg_statusline = "#1f2335",
  bg_visual = "#364a82",
  black = "#1d202f",
  blue = "#7aa2f7",
  blue0 = "#3d59a1",
  blue1 = "#2ac3de",
  blue2 = "#0db9d7",
  blue5 = "#89ddff",
  blue6 = "#b4f9f8",
  blue7 = "#394b70",
  border = "#1d202f",
  border_highlight = "#3d59a1",
  comment = "#565f89",
  cyan = "#7dcfff",
  dark3 = "#545c7e",
  dark5 = "#737aa2",
  diff = {
    add = "#283b4d",
    change = "#272d43",
    delete = "#3f2d3d",
    text = "#394b70"
  },
  error = "#db4b4b",
  fg = "#c0caf5",
  fg_dark = "#a9b1d6",
  fg_gutter = "#3b4261",
  fg_sidebar = "#a9b1d6",
  git = {
    add = "#2c6c75",
    change = "#6183b9",
    delete = "#914c54",
    ignore = "#545c7e"
  },
  gitSigns = {
    add = "#266d6a",
    change = "#526c9e",
    delete = "#b2555b"
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
  ["@punctuation.special.markdown"] = {
    bold = true,
    fg = "#ff9e64"
  },
  ["@text.literal.markdown_inline"] = {
    bg = "#414868",
    fg = "#7aa2f7"
  },
  ALEErrorSign = {
    fg = "#db4b4b"
  },
  ALEWarningSign = {
    fg = "#e0af68"
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
    bg = "#1f2335",
    fg = "#737aa2"
  },
  BufferInactiveIndex = {
    bg = "#1f2335",
    fg = "#737aa2"
  },
  BufferInactiveMod = {
    bg = "#1f2335",
    fg = "#a8875b"
  },
  BufferInactiveSign = {
    bg = "#1f2335",
    fg = "#3d59a1"
  },
  BufferInactiveTarget = {
    bg = "#1f2335",
    fg = "#f7768e"
  },
  BufferLineIndicatorSelected = {
    fg = "#6183b9"
  },
  BufferTabpage = {
    bg = "#1f2335",
    fg = "#3d59a1"
  },
  BufferTabpages = {
    bg = "#1f2335",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#1f2335",
    fg = "#c0caf5"
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
  Character = {
    fg = "#9ece6a"
  },
  CmpDocumentation = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  CmpDocumentationBorder = {
    bg = "#1f2335",
    fg = "#3d59a1"
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
    bg = "#1d202f"
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
  DiagnosticWarning = {
    link = "DiagnosticWarn"
  },
  DiffAdd = {
    bg = "#283b4d"
  },
  DiffChange = {
    bg = "#272d43"
  },
  DiffDelete = {
    bg = "#3f2d3d"
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
  FernBranchText = {
    fg = "#7aa2f7"
  },
  FloatBorder = {
    bg = "#1f2335",
    fg = "#3d59a1"
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
    fg = "#ff007c"
  },
  Function = {
    fg = "#7aa2f7",
    style = {}
  },
  GitGutterAdd = {
    fg = "#266d6a"
  },
  GitGutterChange = {
    fg = "#526c9e"
  },
  GitGutterDelete = {
    fg = "#b2555b"
  },
  GitSignsAdd = {
    fg = "#266d6a"
  },
  GitSignsChange = {
    fg = "#526c9e"
  },
  GitSignsDelete = {
    fg = "#b2555b"
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
    fg = "#1d546a"
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
    fg = "#1d202f"
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
    fg = "#3d59a1"
  },
  LspFloatWinNormal = {
    bg = "#1f2335"
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
    fg = "#364a82"
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
    fg = "#ff9e64"
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
    bg = "#bb9af7",
    fg = "#292e42"
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
    bg = "#24283b",
    fg = "#c0caf5"
  },
  MiniStarterItemBullet = {
    fg = "#3d59a1"
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
    bg = "#1f2335",
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
    bg = "#1f2335",
    fg = "#a9b1d6"
  },
  NeoTreeNormalNC = {
    bg = "#1f2335",
    fg = "#a9b1d6"
  },
  NeogitBranch = {
    fg = "#bb9af7"
  },
  NeogitDiffAddHighlight = {
    bg = "#283b4d",
    fg = "#2c6c75"
  },
  NeogitDiffContextHighlight = {
    bg = "#30354e",
    fg = "#a9b1d6"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#3f2d3d",
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
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#e0af68"
  },
  NvimTreeGitDeleted = {
    fg = "#914c54"
  },
  NvimTreeGitDirty = {
    fg = "#6183b9"
  },
  NvimTreeGitNew = {
    fg = "#2c6c75"
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
  Operator = {
    fg = "#89ddff"
  },
  Pmenu = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  PmenuSbar = {
    bg = "#2a2e3f"
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
    bg = "#364a82",
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
    bg = "#24283b",
    fg = "#3b4261"
  },
  SignColumnSB = {
    bg = "#1f2335",
    fg = "#3b4261"
  },
  Sneak = {
    bg = "#bb9af7",
    fg = "#292e42"
  },
  SneakScope = {
    bg = "#364a82"
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
  TSConstructor = {
    fg = "#bb9af7"
  },
  TSDanger = {
    bg = "#db4b4b",
    fg = "#24283b"
  },
  TSField = {
    fg = "#73daca"
  },
  TSKeyword = {
    fg = "#9d7cd8",
    style = {
      italic = true
    }
  },
  TSKeywordFunction = {
    fg = "#bb9af7",
    style = {}
  },
  TSLabel = {
    fg = "#7aa2f7"
  },
  TSNote = {
    bg = "#0db9d7",
    fg = "#24283b"
  },
  TSOperator = {
    fg = "#89ddff"
  },
  TSParameter = {
    fg = "#e0af68"
  },
  TSProperty = {
    fg = "#73daca"
  },
  TSPunctBracket = {
    fg = "#a9b1d6"
  },
  TSPunctDelimiter = {
    fg = "#89ddff"
  },
  TSPunctSpecial = {
    fg = "#89ddff"
  },
  TSStringEscape = {
    fg = "#bb9af7"
  },
  TSStringRegex = {
    fg = "#b4f9f8"
  },
  TSTextReference = {
    fg = "#1abc9c"
  },
  TSVariable = {
    style = {}
  },
  TSVariableBuiltin = {
    fg = "#f7768e"
  },
  TSWarning = {
    bg = "#e0af68",
    fg = "#24283b"
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
    fg = "#3d59a1"
  },
  TelescopeNormal = {
    bg = "#1f2335",
    fg = "#c0caf5"
  },
  Title = {
    bold = true,
    fg = "#7aa2f7"
  },
  Todo = {
    bg = "#e0af68",
    fg = "#24283b"
  },
  TroubleCount = {
    bg = "#3b4261",
    fg = "#bb9af7"
  },
  TroubleNormal = {
    bg = "#1f2335",
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
    fg = "#1d202f"
  },
  Visual = {
    bg = "#364a82"
  },
  VisualNOS = {
    bg = "#364a82"
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
    bg = "#1f2335"
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
    bg = "#364a82"
  },
  WinSeparator = {
    bold = true,
    fg = "#1d202f"
  },
  debugBreakpoint = {
    bg = "#22374b",
    fg = "#0db9d7"
  },
  debugPC = {
    bg = "#1f2335"
  },
  diffAdded = {
    fg = "#2c6c75"
  },
  diffChanged = {
    fg = "#6183b9"
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
    fg = "#914c54"
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
    fg = "#24283b"
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
    fg = "#545c7e"
  },
  rainbowcol2 = {
    fg = "#e0af68"
  },
  rainbowcol3 = {
    fg = "#0db9d7"
  },
  rainbowcol4 = {
    fg = "#ff9e64"
  },
  rainbowcol5 = {
    fg = "#9d7cd8"
  },
  rainbowcol6 = {
    fg = "#73daca"
  },
  rainbowcol7 = {
    fg = "#f7768e"
  }
}
