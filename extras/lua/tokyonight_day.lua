local colors = {
  bg = "#e1e2e7",
  bg_dark = "#e9e9ec",
  bg_float = "#e9e9ec",
  bg_highlight = "#c4c8da",
  bg_popup = "#e9e9ec",
  bg_search = "#7890dd",
  bg_sidebar = "#e9e9ec",
  bg_statusline = "#e9e9ec",
  bg_visual = "#99a7df",
  black = "#e9e9ed",
  blue = "#2e7de9",
  blue0 = "#7890dd",
  blue1 = "#188092",
  blue2 = "#07879d",
  blue5 = "#006a83",
  blue6 = "#2e5857",
  blue7 = "#92a6d5",
  border = "#e9e9ed",
  border_highlight = "#7890dd",
  comment = "#848cb5",
  cyan = "#007197",
  dark3 = "#8990b3",
  dark5 = "#68709a",
  error = "#c64343",
  fg = "#3760bf",
  fg_dark = "#6172b0",
  fg_gutter = "#a8aecb",
  fg_sidebar = "#6172b0",
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
  ["@punctuation.special.markdown"] = {
    bold = true,
    fg = "#b15c00"
  },
  ["@text.literal.markdown_inline"] = {
    bg = "#a1a6c5",
    fg = "#2e7de9"
  },
  ALEErrorSign = {
    fg = "#c64343"
  },
  ALEWarningSign = {
    fg = "#8c6c3e"
  },
  Bold = {
    bold = true
  },
  BufferCurrent = {
    bg = "#a8aecb",
    fg = "#3760bf"
  },
  BufferCurrentIndex = {
    bg = "#a8aecb",
    fg = "#07879d"
  },
  BufferCurrentMod = {
    bg = "#a8aecb",
    fg = "#8c6c3e"
  },
  BufferCurrentSign = {
    bg = "#a8aecb",
    fg = "#07879d"
  },
  BufferCurrentTarget = {
    bg = "#a8aecb",
    fg = "#f52a65"
  },
  BufferInactive = {
    bg = "#e9e9ec",
    fg = "#68709a"
  },
  BufferInactiveIndex = {
    bg = "#e9e9ec",
    fg = "#68709a"
  },
  BufferInactiveMod = {
    bg = "#e9e9ec",
    fg = "#7b613d"
  },
  BufferInactiveSign = {
    bg = "#e9e9ec",
    fg = "#7890dd"
  },
  BufferInactiveTarget = {
    bg = "#e9e9ec",
    fg = "#f52a65"
  },
  BufferLineIndicatorSelected = {
    fg = "#6183b9"
  },
  BufferTabpage = {
    bg = "#e9e9ec",
    fg = "#7890dd"
  },
  BufferTabpages = {
    bg = "#e9e9ec",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#e9e9ec",
    fg = "#3760bf"
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
  Character = {
    fg = "#587539"
  },
  CmpDocumentation = {
    bg = "#e9e9ec",
    fg = "#3760bf"
  },
  CmpDocumentationBorder = {
    bg = "#e9e9ec",
    fg = "#7890dd"
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
  CmpItemKindClass = {
    bg = "NONE",
    fg = "#b15c00"
  },
  CmpItemKindConstant = {
    bg = "NONE",
    fg = "#9854f1"
  },
  CmpItemKindConstructor = {
    bg = "NONE",
    fg = "#2e7de9"
  },
  CmpItemKindDefault = {
    bg = "NONE",
    fg = "#6172b0"
  },
  CmpItemKindEnum = {
    bg = "NONE",
    fg = "#b15c00"
  },
  CmpItemKindEnumMember = {
    bg = "NONE",
    fg = "#387068"
  },
  CmpItemKindEvent = {
    bg = "NONE",
    fg = "#b15c00"
  },
  CmpItemKindField = {
    bg = "NONE",
    fg = "#387068"
  },
  CmpItemKindFunction = {
    bg = "NONE",
    fg = "#2e7de9"
  },
  CmpItemKindInterface = {
    bg = "NONE",
    fg = "#b15c00"
  },
  CmpItemKindKeyword = {
    bg = "NONE",
    fg = "#007197"
  },
  CmpItemKindMethod = {
    bg = "NONE",
    fg = "#2e7de9"
  },
  CmpItemKindModule = {
    bg = "NONE",
    fg = "#8c6c3e"
  },
  CmpItemKindOperator = {
    bg = "NONE",
    fg = "#387068"
  },
  CmpItemKindProperty = {
    bg = "NONE",
    fg = "#387068"
  },
  CmpItemKindReference = {
    bg = "NONE",
    fg = "#9854f1"
  },
  CmpItemKindSnippet = {
    bg = "NONE",
    fg = "#68709a"
  },
  CmpItemKindStruct = {
    bg = "NONE",
    fg = "#b15c00"
  },
  CmpItemKindTypeParameter = {
    bg = "NONE",
    fg = "#387068"
  },
  CmpItemKindUnit = {
    bg = "NONE",
    fg = "#b15c00"
  },
  CmpItemKindValue = {
    bg = "NONE",
    fg = "#9854f1"
  },
  CmpItemKindVariable = {
    bg = "NONE",
    fg = "#9854f1"
  },
  CmpItemMenu = {
    bg = "NONE",
    fg = "#848cb5"
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
  DashboardCenter = {
    fg = "#9854f1"
  },
  DashboardFooter = {
    fg = "#8c6c3e",
    italic = true
  },
  DashboardHeader = {
    fg = "#2e7de9"
  },
  DashboardShortCut = {
    fg = "#007197"
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
  FloatBorder = {
    bg = "#e9e9ec",
    fg = "#7890dd"
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
    fg = "#d20065"
  },
  Function = {
    fg = "#2e7de9",
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
  HopNextKey = {
    bold = true,
    fg = "#d20065"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#07879d"
  },
  HopNextKey2 = {
    fg = "#44bbe2"
  },
  HopUnmatched = {
    fg = "#8990b3"
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
    fg = "#7890dd"
  },
  LspFloatWinNormal = {
    bg = "#e9e9ec"
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
    fg = "#99a7df"
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
    fg = "#b15c00"
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
    fg = "#188092"
  },
  MiniJump = {
    bg = "#9854f1",
    fg = "#c4c8da"
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
    fg = "#7890dd"
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
    bg = "NONE",
    fg = "#b15c00"
  },
  NavicIconsBoolean = {
    bg = "NONE",
    fg = "#b15c00"
  },
  NavicIconsClass = {
    bg = "NONE",
    fg = "#b15c00"
  },
  NavicIconsConstant = {
    bg = "NONE",
    fg = "#9854f1"
  },
  NavicIconsConstructor = {
    bg = "NONE",
    fg = "#b15c00"
  },
  NavicIconsEnum = {
    bg = "NONE",
    fg = "#b15c00"
  },
  NavicIconsEnumMember = {
    bg = "NONE",
    fg = "#387068"
  },
  NavicIconsEvent = {
    bg = "NONE",
    fg = "#b15c00"
  },
  NavicIconsField = {
    bg = "NONE",
    fg = "#387068"
  },
  NavicIconsFile = {
    bg = "NONE",
    fg = "#3760bf"
  },
  NavicIconsFunction = {
    bg = "NONE",
    fg = "#2e7de9"
  },
  NavicIconsInterface = {
    bg = "NONE",
    fg = "#b15c00"
  },
  NavicIconsKey = {
    bg = "NONE",
    fg = "#7847bd"
  },
  NavicIconsKeyword = {
    bg = "NONE",
    fg = "#7847bd"
  },
  NavicIconsMethod = {
    bg = "NONE",
    fg = "#2e7de9"
  },
  NavicIconsModule = {
    bg = "NONE",
    fg = "#8c6c3e"
  },
  NavicIconsNamespace = {
    bg = "NONE",
    fg = "#3760bf"
  },
  NavicIconsNull = {
    bg = "NONE",
    fg = "#b15c00"
  },
  NavicIconsNumber = {
    bg = "NONE",
    fg = "#b15c00"
  },
  NavicIconsObject = {
    bg = "NONE",
    fg = "#b15c00"
  },
  NavicIconsOperator = {
    bg = "NONE",
    fg = "#3760bf"
  },
  NavicIconsPackage = {
    bg = "NONE",
    fg = "#3760bf"
  },
  NavicIconsProperty = {
    bg = "NONE",
    fg = "#387068"
  },
  NavicIconsString = {
    bg = "NONE",
    fg = "#587539"
  },
  NavicIconsStruct = {
    bg = "NONE",
    fg = "#b15c00"
  },
  NavicIconsTypeParameter = {
    bg = "NONE",
    fg = "#387068"
  },
  NavicIconsVariable = {
    bg = "NONE",
    fg = "#9854f1"
  },
  NavicSeparator = {
    bg = "NONE",
    fg = "#3760bf"
  },
  NavicText = {
    bg = "NONE",
    fg = "#3760bf"
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
    fg = "#2c6c75"
  },
  NeogitDiffContextHighlight = {
    bg = "#c3c6d8",
    fg = "#6172b0"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#dfccd4",
    fg = "#914c54"
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
  NvimTreeFolderIcon = {
    bg = "NONE",
    fg = "#8c6c3e"
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
    bg = "#99a7df",
    bold = true
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
    bg = "#99a7df"
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
  TSConstructor = {
    fg = "#9854f1"
  },
  TSDanger = {
    bg = "#c64343",
    fg = "#e1e2e7"
  },
  TSField = {
    fg = "#387068"
  },
  TSKeyword = {
    fg = "#7847bd",
    style = {
      italic = true
    }
  },
  TSKeywordFunction = {
    fg = "#9854f1",
    style = {}
  },
  TSLabel = {
    fg = "#2e7de9"
  },
  TSNote = {
    bg = "#07879d",
    fg = "#e1e2e7"
  },
  TSOperator = {
    fg = "#006a83"
  },
  TSParameter = {
    fg = "#8c6c3e"
  },
  TSProperty = {
    fg = "#387068"
  },
  TSPunctBracket = {
    fg = "#6172b0"
  },
  TSPunctDelimiter = {
    fg = "#006a83"
  },
  TSPunctSpecial = {
    fg = "#006a83"
  },
  TSStringEscape = {
    fg = "#9854f1"
  },
  TSStringRegex = {
    fg = "#2e5857"
  },
  TSTextReference = {
    fg = "#118c74"
  },
  TSVariable = {
    style = {}
  },
  TSVariableBuiltin = {
    fg = "#f52a65"
  },
  TSWarning = {
    bg = "#8c6c3e",
    fg = "#e1e2e7"
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
    fg = "#7890dd"
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
    bg = "#99a7df"
  },
  VisualNOS = {
    bg = "#99a7df"
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
    bg = "#99a7df"
  },
  WinSeparator = {
    bold = true,
    fg = "#e9e9ed"
  },
  debugBreakpoint = {
    bg = "#b7d3ed",
    fg = "#07879d"
  },
  debugPC = {
    bg = "#e9e9ec"
  },
  diffAdded = {
    fg = "#2c6c75"
  },
  diffChanged = {
    fg = "#6183b9"
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
    fg = "#914c54"
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
    fg = "#8990b3"
  },
  rainbowcol2 = {
    fg = "#8c6c3e"
  },
  rainbowcol3 = {
    fg = "#07879d"
  },
  rainbowcol4 = {
    fg = "#b15c00"
  },
  rainbowcol5 = {
    fg = "#7847bd"
  },
  rainbowcol6 = {
    fg = "#387068"
  },
  rainbowcol7 = {
    fg = "#f52a65"
  }
}
