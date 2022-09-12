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
  border_highlight = "#3d59a1",
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
  fg_gutter = "#3b4261",
  fg_sidebar = "#a9b1d6",
  git = {
    add = "#449dab",
    change = "#6183bb",
    delete = "#914c54",
    ignore = "#545c7e"
  },
  gitSigns = {
    add = "#266d6a",
    change = "#536c9e",
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
    fg = "#3d59a1"
  },
  BufferInactiveTarget = {
    bg = "#16161e",
    fg = "#f7768e"
  },
  BufferLineIndicatorSelected = {
    fg = "#6183bb"
  },
  BufferTabpage = {
    bg = "#16161e",
    fg = "#3d59a1"
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
    fg = "#3d59a1"
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
    fg = "#266d6a"
  },
  GitGutterChange = {
    fg = "#536c9e"
  },
  GitGutterDelete = {
    fg = "#b2555b"
  },
  GitSignsAdd = {
    fg = "#266d6a"
  },
  GitSignsChange = {
    fg = "#536c9e"
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
    fg = "#164a5b"
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
    fg = "#3b4261"
  },
  IndentBlanklineContextChar = {
    fg = "#9d7cd8"
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
    bg = "#16161e"
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
    bg = "#1a1b26",
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
    bg = "#16161e",
    fg = "#a9b1d6"
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
    fg = "#449dab"
  },
  NeogitDiffContextHighlight = {
    bg = "#2b2f44",
    fg = "#a9b1d6"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#37222c",
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
    bg = "#1a1b26",
    fg = "#c0caf5"
  },
  NormalFloat = {
    bg = "#16161e",
    fg = "#c0caf5"
  },
  NormalNC = {
    bg = "#1a1b26",
    fg = "#c0caf5"
  },
  NormalSB = {
    bg = "#16161e",
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
  TSConstructor = {
    fg = "#bb9af7"
  },
  TSDanger = {
    bg = "#db4b4b",
    fg = "#1a1b26"
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
    fg = "#1a1b26"
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
    fg = "#3d59a1"
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
  debugBreakpoint = {
    bg = "#192b38",
    fg = "#0db9d7"
  },
  debugPC = {
    bg = "#16161e"
  },
  diffAdded = {
    fg = "#449dab"
  },
  diffChanged = {
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
