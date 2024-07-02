local colors = {
  _name = "tokyonight_day",
  bg = "#e1e2e7",
  bg_dark = "#d0d5e3",
  bg_float = "#d0d5e3",
  bg_highlight = "#c4c8da",
  bg_popup = "#d0d5e3",
  bg_search = "#7890dd",
  bg_sidebar = "#d0d5e3",
  bg_statusline = "#d0d5e3",
  bg_visual = "#b7c1e3",
  black = "#b4b5b9",
  blue = "#2e7de9",
  blue0 = "#7890dd",
  blue1 = "#188092",
  blue2 = "#07879d",
  blue5 = "#006a83",
  blue6 = "#2e5857",
  blue7 = "#92a6d5",
  border = "#b4b5b9",
  border_highlight = "#4094a3",
  comment = "#848cb5",
  cyan = "#007197",
  dark3 = "#8990b3",
  dark5 = "#68709a",
  diff = {
    add = "#c8d6dc",
    change = "#d5d9e4",
    delete = "#ddcace",
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
  rainbow = { "#2e7de9", "#8c6c3e", "#587539", "#118c74", "#9854f1", "#7847bd" },
  red = "#f52a65",
  red1 = "#c64343",
  teal = "#118c74",
  terminal_black = "#a1a6c5",
  todo = "#2e7de9",
  warning = "#8c6c3e",
  yellow = "#8c6c3e"
}

local highlights = {
  ["@annotation"] = {
    link = "PreProc"
  },
  ["@attribute"] = {
    link = "PreProc"
  },
  ["@boolean"] = {
    link = "Boolean"
  },
  ["@character"] = {
    link = "Character"
  },
  ["@character.printf"] = {
    link = "SpecialChar"
  },
  ["@character.special"] = {
    link = "SpecialChar"
  },
  ["@comment"] = {
    link = "Comment"
  },
  ["@comment.error"] = {
    fg = "#c64343"
  },
  ["@comment.hint"] = {
    fg = "#118c74"
  },
  ["@comment.info"] = {
    fg = "#07879d"
  },
  ["@comment.note"] = {
    fg = "#118c74"
  },
  ["@comment.todo"] = {
    fg = "#2e7de9"
  },
  ["@comment.warning"] = {
    fg = "#8c6c3e"
  },
  ["@constant"] = {
    link = "Constant"
  },
  ["@constant.builtin"] = {
    link = "Special"
  },
  ["@constant.macro"] = {
    link = "Define"
  },
  ["@constructor"] = {
    fg = "#9854f1"
  },
  ["@constructor.tsx"] = {
    fg = "#188092"
  },
  ["@diff.delta"] = {
    link = "DiffChange"
  },
  ["@diff.minus"] = {
    link = "DiffDelete"
  },
  ["@diff.plus"] = {
    link = "DiffAdd"
  },
  ["@function"] = {
    link = "Function"
  },
  ["@function.builtin"] = {
    link = "Special"
  },
  ["@function.call"] = {
    link = "@function"
  },
  ["@function.macro"] = {
    link = "Macro"
  },
  ["@function.method"] = {
    link = "Function"
  },
  ["@function.method.call"] = {
    link = "@function.method"
  },
  ["@keyword"] = {
    fg = "#7847bd",
    italic = true
  },
  ["@keyword.conditional"] = {
    link = "Conditional"
  },
  ["@keyword.coroutine"] = {
    link = "@keyword"
  },
  ["@keyword.debug"] = {
    link = "Debug"
  },
  ["@keyword.directive"] = {
    link = "PreProc"
  },
  ["@keyword.directive.define"] = {
    link = "Define"
  },
  ["@keyword.exception"] = {
    link = "Exception"
  },
  ["@keyword.function"] = {
    fg = "#9854f1"
  },
  ["@keyword.import"] = {
    link = "Include"
  },
  ["@keyword.operator"] = {
    link = "@operator"
  },
  ["@keyword.repeat"] = {
    link = "Repeat"
  },
  ["@keyword.return"] = {
    link = "@keyword"
  },
  ["@keyword.storage"] = {
    link = "StorageClass"
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
    link = "@markup.list"
  },
  ["@lsp.type.generic"] = {
    link = "@variable"
  },
  ["@lsp.type.interface"] = {
    fg = "#2176a0"
  },
  ["@lsp.type.keyword"] = {
    link = "@keyword"
  },
  ["@lsp.type.lifetime"] = {
    link = "@keyword.storage"
  },
  ["@lsp.type.namespace"] = {
    link = "@module"
  },
  ["@lsp.type.namespace.python"] = {
    link = "@variable"
  },
  ["@lsp.type.number"] = {
    link = "@number"
  },
  ["@lsp.type.operator"] = {
    link = "@operator"
  },
  ["@lsp.type.parameter"] = {
    link = "@variable.parameter"
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
    fg = "#4094a3"
  },
  ["@lsp.typemod.typeAlias.defaultLibrary"] = {
    fg = "#4094a3"
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
  ["@markup"] = {
    link = "@none"
  },
  ["@markup.emphasis"] = {
    italic = true
  },
  ["@markup.environment"] = {
    link = "Macro"
  },
  ["@markup.environment.name"] = {
    link = "Type"
  },
  ["@markup.heading"] = {
    link = "Title"
  },
  ["@markup.heading.1.markdown"] = {
    bold = true,
    fg = "#2e7de9"
  },
  ["@markup.heading.2.markdown"] = {
    bold = true,
    fg = "#8c6c3e"
  },
  ["@markup.heading.3.markdown"] = {
    bold = true,
    fg = "#587539"
  },
  ["@markup.heading.4.markdown"] = {
    bold = true,
    fg = "#118c74"
  },
  ["@markup.heading.5.markdown"] = {
    bold = true,
    fg = "#9854f1"
  },
  ["@markup.heading.6.markdown"] = {
    bold = true,
    fg = "#7847bd"
  },
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = {
    fg = "#118c74"
  },
  ["@markup.link.label"] = {
    link = "SpecialChar"
  },
  ["@markup.link.label.symbol"] = {
    link = "Identifier"
  },
  ["@markup.link.url"] = {
    link = "Underlined"
  },
  ["@markup.list"] = {
    fg = "#006a83"
  },
  ["@markup.list.checked"] = {
    fg = "#387068"
  },
  ["@markup.list.markdown"] = {
    bold = true,
    fg = "#b15c00"
  },
  ["@markup.list.unchecked"] = {
    fg = "#2e7de9"
  },
  ["@markup.math"] = {
    link = "Special"
  },
  ["@markup.raw"] = {
    link = "String"
  },
  ["@markup.raw.markdown_inline"] = {
    bg = "#a1a6c5",
    fg = "#2e7de9"
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
  ["@module"] = {
    link = "Include"
  },
  ["@module.builtin"] = {
    fg = "#f52a65"
  },
  ["@namespace.builtin"] = {
    link = "@variable.builtin"
  },
  ["@none"] = {},
  ["@number"] = {
    link = "Number"
  },
  ["@number.float"] = {
    link = "Float"
  },
  ["@operator"] = {
    fg = "#006a83"
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
  ["@string"] = {
    link = "String"
  },
  ["@string.documentation"] = {
    fg = "#8c6c3e"
  },
  ["@string.escape"] = {
    fg = "#9854f1"
  },
  ["@string.regexp"] = {
    fg = "#2e5857"
  },
  ["@tag"] = {
    link = "Label"
  },
  ["@tag.attribute"] = {
    link = "@property"
  },
  ["@tag.delimiter"] = {
    link = "Delimiter"
  },
  ["@tag.delimiter.tsx"] = {
    fg = "#649be8"
  },
  ["@tag.tsx"] = {
    fg = "#f52a65"
  },
  ["@type"] = {
    link = "Type"
  },
  ["@type.builtin"] = {
    fg = "#4094a3"
  },
  ["@type.definition"] = {
    link = "Typedef"
  },
  ["@type.qualifier"] = {
    link = "@keyword"
  },
  ["@variable"] = {
    fg = "#3760bf"
  },
  ["@variable.builtin"] = {
    fg = "#f52a65"
  },
  ["@variable.member"] = {
    fg = "#387068"
  },
  ["@variable.parameter"] = {
    fg = "#8c6c3e"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#7b6a58"
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
    bold = true,
    fg = "#3760bf"
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
    bg = "#d5d8e2",
    fg = "#8087a9"
  },
  BufferInactiveERROR = {
    bg = "#d5d8e2",
    fg = "#cb6364"
  },
  BufferInactiveHINT = {
    bg = "#d5d8e2",
    fg = "#3b9d8b"
  },
  BufferInactiveINFO = {
    bg = "#d5d8e2",
    fg = "#3399ac"
  },
  BufferInactiveIndex = {
    bg = "#d5d8e2",
    fg = "#68709a"
  },
  BufferInactiveMod = {
    bg = "#d5d8e2",
    fg = "#9d8460"
  },
  BufferInactiveSign = {
    bg = "#d5d8e2",
    fg = "#e1e2e7"
  },
  BufferInactiveTarget = {
    bg = "#d5d8e2",
    fg = "#f52a65"
  },
  BufferInactiveWARN = {
    bg = "#d5d8e2",
    fg = "#9d8460"
  },
  BufferLineIndicatorSelected = {
    fg = "#506d9c"
  },
  BufferOffset = {
    bg = "#d0d5e3",
    fg = "#68709a"
  },
  BufferTabpageFill = {
    bg = "#cacddd",
    fg = "#68709a"
  },
  BufferTabpages = {
    bg = "#d0d5e3",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#d0d5e3",
    fg = "#3760bf"
  },
  BufferVisibleERROR = {
    bg = "#d0d5e3",
    fg = "#c64343"
  },
  BufferVisibleHINT = {
    bg = "#d0d5e3",
    fg = "#118c74"
  },
  BufferVisibleINFO = {
    bg = "#d0d5e3",
    fg = "#07879d"
  },
  BufferVisibleIndex = {
    bg = "#d0d5e3",
    fg = "#07879d"
  },
  BufferVisibleMod = {
    bg = "#d0d5e3",
    fg = "#8c6c3e"
  },
  BufferVisibleSign = {
    bg = "#d0d5e3",
    fg = "#07879d"
  },
  BufferVisibleTarget = {
    bg = "#d0d5e3",
    fg = "#f52a65"
  },
  BufferVisibleWARN = {
    bg = "#d0d5e3",
    fg = "#8c6c3e"
  },
  Character = {
    fg = "#587539"
  },
  CmpDocumentation = {
    bg = "#d0d5e3",
    fg = "#3760bf"
  },
  CmpDocumentationBorder = {
    bg = "#d0d5e3",
    fg = "#4094a3"
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
    bg = "#d0d5e3"
  },
  ColorColumn = {
    bg = "#b4b5b9"
  },
  Comment = {
    fg = "#848cb5",
    italic = true
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
    bold = true,
    fg = "#b15c00"
  },
  DapStoppedLine = {
    bg = "#d9d6d6"
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
  Delimiter = {
    link = "Special"
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
    bg = "#ded2d7",
    fg = "#c64343"
  },
  DiagnosticVirtualTextHint = {
    bg = "#ccd9dc",
    fg = "#118c74"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#cbd9e0",
    fg = "#07879d"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#d9d6d6",
    fg = "#8c6c3e"
  },
  DiagnosticWarn = {
    fg = "#8c6c3e"
  },
  DiagnosticWarning = {
    link = "DiagnosticWarn"
  },
  DiffAdd = {
    bg = "#c8d6dc"
  },
  DiffChange = {
    bg = "#d5d9e4"
  },
  DiffDelete = {
    bg = "#ddcace"
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
  FlashBackdrop = {
    fg = "#8990b3"
  },
  FlashLabel = {
    bg = "#d20065",
    bold = true,
    fg = "#3760bf"
  },
  FloatBorder = {
    bg = "#d0d5e3",
    fg = "#4094a3"
  },
  FloatTitle = {
    bg = "#d0d5e3",
    fg = "#4094a3"
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
    fg = "#2e7de9"
  },
  FzfLuaBorder = {
    bg = "#d0d5e3",
    fg = "#4094a3"
  },
  FzfLuaCursor = {
    link = "IncSearch"
  },
  FzfLuaDirPart = {
    fg = "#6172b0"
  },
  FzfLuaFilePart = {
    link = "FzfLuaFzfNormal"
  },
  FzfLuaFzfCursorLine = {
    link = "Visual"
  },
  FzfLuaFzfNormal = {
    fg = "#3760bf"
  },
  FzfLuaFzfPointer = {
    fg = "#d20065"
  },
  FzfLuaFzfSeparator = {
    bg = "#d0d5e3",
    fg = "#b15c00"
  },
  FzfLuaHeaderBind = {
    link = "@punctuation.special"
  },
  FzfLuaHeaderText = {
    link = "Title"
  },
  FzfLuaNormal = {
    bg = "#d0d5e3",
    fg = "#3760bf"
  },
  FzfLuaPath = {
    link = "Directory"
  },
  FzfLuaPreviewTitle = {
    bg = "#d0d5e3",
    fg = "#4094a3"
  },
  FzfLuaTitle = {
    bg = "#d0d5e3",
    fg = "#b15c00"
  },
  GitGutterAdd = {
    fg = "#4197a4"
  },
  GitGutterAddLineNr = {
    fg = "#4197a4"
  },
  GitGutterChange = {
    fg = "#506d9c"
  },
  GitGutterChangeLineNr = {
    fg = "#506d9c"
  },
  GitGutterDelete = {
    fg = "#c47981"
  },
  GitGutterDeleteLineNr = {
    fg = "#c47981"
  },
  GitSignsAdd = {
    fg = "#4197a4"
  },
  GitSignsChange = {
    fg = "#506d9c"
  },
  GitSignsDelete = {
    fg = "#c47981"
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
    bg = "#d8dde7"
  },
  Headline2 = {
    bg = "#dddcdf"
  },
  Headline3 = {
    bg = "#daddde"
  },
  Headline4 = {
    bg = "#d7dee1"
  },
  Headline5 = {
    bg = "#dddbe8"
  },
  Headline6 = {
    bg = "#dcdae5"
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
    fg = "#5eabbb"
  },
  HopUnmatched = {
    fg = "#8990b3"
  },
  IblIndent = {
    fg = "#a8aecb",
    nocombine = true
  },
  IblScope = {
    fg = "#188092",
    nocombine = true
  },
  Identifier = {
    fg = "#9854f1"
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
    fg = "#b4b5b9"
  },
  IndentBlanklineChar = {
    fg = "#a8aecb",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#188092",
    nocombine = true
  },
  IndentLine = {
    fg = "#a8aecb",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#188092",
    nocombine = true
  },
  Italic = {
    fg = "#3760bf",
    italic = true
  },
  Keyword = {
    fg = "#007197",
    italic = true
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
  LineNr = {
    fg = "#a8aecb"
  },
  LineNrAbove = {
    fg = "#a8aecb"
  },
  LineNrBelow = {
    fg = "#a8aecb"
  },
  LspCodeLens = {
    fg = "#848cb5"
  },
  LspFloatWinBorder = {
    fg = "#4094a3"
  },
  LspFloatWinNormal = {
    bg = "#d0d5e3"
  },
  LspInfoBorder = {
    bg = "#d0d5e3",
    fg = "#4094a3"
  },
  LspInlayHint = {
    bg = "#d9dce5",
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
    link = "@variable.member"
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
    link = "@variable.member"
  },
  LspKindKeyword = {
    link = "@lsp.type.keyword"
  },
  LspKindMethod = {
    link = "@function.method"
  },
  LspKindModule = {
    link = "@module"
  },
  LspKindNamespace = {
    link = "@module"
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
    link = "@module"
  },
  LspKindProperty = {
    link = "@property"
  },
  LspKindReference = {
    link = "@markup.link"
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
    link = "@markup"
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
    fg = "#b7c1e3"
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
    bg = "#d0d5e5",
    bold = true
  },
  MatchParen = {
    bold = true,
    fg = "#b15c00"
  },
  MiniAnimateCursor = {
    nocombine = true,
    reverse = true
  },
  MiniAnimateNormalFloat = {
    link = "NormalFloat"
  },
  MiniClueBorder = {
    link = "FloatBorder"
  },
  MiniClueDescGroup = {
    link = "DiagnosticFloatingWarn"
  },
  MiniClueDescSingle = {
    link = "NormalFloat"
  },
  MiniClueNextKey = {
    link = "DiagnosticFloatingHint"
  },
  MiniClueNextKeyWithPostkeys = {
    link = "DiagnosticFloatingError"
  },
  MiniClueSeparator = {
    link = "DiagnosticFloatingInfo"
  },
  MiniClueTitle = {
    link = "FloatTitle"
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
  MiniDepsChangeAdded = {
    link = "diffAdded"
  },
  MiniDepsChangeRemoved = {
    link = "diffRemoved"
  },
  MiniDepsHint = {
    link = "DiagnosticHint"
  },
  MiniDepsInfo = {
    link = "DiagnosticInfo"
  },
  MiniDepsMsgBreaking = {
    link = "DiagnosticWarn"
  },
  MiniDepsPlaceholder = {
    link = "Comment"
  },
  MiniDepsTitle = {
    link = "Title"
  },
  MiniDepsTitleError = {
    bg = "#c47981",
    fg = "#b4b5b9"
  },
  MiniDepsTitleSame = {
    link = "Comment"
  },
  MiniDepsTitleUpdate = {
    bg = "#4197a4",
    fg = "#b4b5b9"
  },
  MiniDiffOverAdd = {
    link = "DiffAdd"
  },
  MiniDiffOverChange = {
    link = "DiffText"
  },
  MiniDiffOverContext = {
    link = "DiffChange"
  },
  MiniDiffOverDelete = {
    link = "DiffDelete"
  },
  MiniDiffSignAdd = {
    fg = "#4197a4"
  },
  MiniDiffSignChange = {
    fg = "#506d9c"
  },
  MiniDiffSignDelete = {
    fg = "#c47981"
  },
  MiniFilesBorder = {
    link = "FloatBorder"
  },
  MiniFilesBorderModified = {
    link = "DiagnosticFloatingWarn"
  },
  MiniFilesCursorLine = {
    link = "CursorLine"
  },
  MiniFilesDirectory = {
    link = "Directory"
  },
  MiniFilesFile = {
    fg = "#3760bf"
  },
  MiniFilesNormal = {
    link = "NormalFloat"
  },
  MiniFilesTitle = {
    link = "FloatTitle"
  },
  MiniFilesTitleFocused = {
    bg = "#d0d5e3",
    bold = true,
    fg = "#4094a3"
  },
  MiniHipatternsFixme = {
    bg = "#c64343",
    bold = true,
    fg = "#b4b5b9"
  },
  MiniHipatternsHack = {
    bg = "#8c6c3e",
    bold = true,
    fg = "#b4b5b9"
  },
  MiniHipatternsNote = {
    bg = "#118c74",
    bold = true,
    fg = "#b4b5b9"
  },
  MiniHipatternsTodo = {
    bg = "#07879d",
    bold = true,
    fg = "#b4b5b9"
  },
  MiniIconsAzure = {
    fg = "#07879d"
  },
  MiniIconsBlue = {
    fg = "#2e7de9"
  },
  MiniIconsCyan = {
    fg = "#118c74"
  },
  MiniIconsGreen = {
    fg = "#587539"
  },
  MiniIconsGrey = {
    fg = "#3760bf"
  },
  MiniIconsOrange = {
    fg = "#b15c00"
  },
  MiniIconsPurple = {
    fg = "#7847bd"
  },
  MiniIconsRed = {
    fg = "#f52a65"
  },
  MiniIconsYellow = {
    fg = "#8c6c3e"
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
    fg = "#ffffff"
  },
  MiniJump2dDim = {
    link = "Comment"
  },
  MiniJump2dSpot = {
    bold = true,
    fg = "#d20065",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#d0d5e3",
    fg = "#118c74",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#b15c00",
    nocombine = true
  },
  MiniMapNormal = {
    link = "NormalFloat"
  },
  MiniMapSymbolCount = {
    link = "Special"
  },
  MiniMapSymbolLine = {
    link = "Title"
  },
  MiniMapSymbolView = {
    link = "Delimiter"
  },
  MiniNotifyBorder = {
    link = "FloatBorder"
  },
  MiniNotifyNormal = {
    link = "NormalFloat"
  },
  MiniNotifyTitle = {
    link = "FloatTitle"
  },
  MiniOperatorsExchangeFrom = {
    link = "IncSearch"
  },
  MiniPickBorder = {
    link = "FloatBorder"
  },
  MiniPickBorderBusy = {
    link = "DiagnosticFloatingWarn"
  },
  MiniPickBorderText = {
    bg = "#d0d5e3",
    fg = "#118c74"
  },
  MiniPickHeader = {
    link = "DiagnosticFloatingHint"
  },
  MiniPickIconDirectory = {
    link = "Directory"
  },
  MiniPickIconFile = {
    link = "MiniPickNormal"
  },
  MiniPickMatchCurrent = {
    link = "CursorLine"
  },
  MiniPickMatchMarked = {
    link = "Visual"
  },
  MiniPickMatchRanges = {
    link = "DiagnosticFloatingHint"
  },
  MiniPickNormal = {
    link = "NormalFloat"
  },
  MiniPickPreviewLine = {
    link = "CursorLine"
  },
  MiniPickPreviewRegion = {
    link = "IncSearch"
  },
  MiniPickPrompt = {
    bg = "#d0d5e3",
    fg = "#07879d"
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
    italic = true
  },
  MiniStarterItem = {
    bg = "#e1e2e7",
    fg = "#3760bf"
  },
  MiniStarterItemBullet = {
    fg = "#4094a3"
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
    bg = "#d0d5e3",
    fg = "#2e7de9"
  },
  MiniStatuslineModeCommand = {
    bg = "#8c6c3e",
    bold = true,
    fg = "#b4b5b9"
  },
  MiniStatuslineModeInsert = {
    bg = "#587539",
    bold = true,
    fg = "#b4b5b9"
  },
  MiniStatuslineModeNormal = {
    bg = "#2e7de9",
    bold = true,
    fg = "#b4b5b9"
  },
  MiniStatuslineModeOther = {
    bg = "#118c74",
    bold = true,
    fg = "#b4b5b9"
  },
  MiniStatuslineModeReplace = {
    bg = "#f52a65",
    bold = true,
    fg = "#b4b5b9"
  },
  MiniStatuslineModeVisual = {
    bg = "#9854f1",
    bold = true,
    fg = "#b4b5b9"
  },
  MiniSurround = {
    bg = "#b15c00",
    fg = "#b4b5b9"
  },
  MiniTablineCurrent = {
    bg = "#a8aecb",
    fg = "#3760bf"
  },
  MiniTablineFill = {
    bg = "#b4b5b9"
  },
  MiniTablineHidden = {
    bg = "#d0d5e3",
    fg = "#68709a"
  },
  MiniTablineModifiedCurrent = {
    bg = "#a8aecb",
    fg = "#8c6c3e"
  },
  MiniTablineModifiedHidden = {
    bg = "#d0d5e3",
    fg = "#a68f71"
  },
  MiniTablineModifiedVisible = {
    bg = "#d0d5e3",
    fg = "#8c6c3e"
  },
  MiniTablineTabpagesection = {
    bg = "#d0d5e3",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#d0d5e3",
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
  NeoTreeFileName = {
    fg = "#6172b0"
  },
  NeoTreeGitModified = {
    fg = "#b15c00"
  },
  NeoTreeGitStaged = {
    fg = "#387068"
  },
  NeoTreeGitUntracked = {
    fg = "#9854f1"
  },
  NeoTreeNormal = {
    bg = "#d0d5e3",
    fg = "#6172b0"
  },
  NeoTreeNormalNC = {
    bg = "#d0d5e3",
    fg = "#6172b0"
  },
  NeogitBranch = {
    fg = "#9854f1"
  },
  NeogitDiffAddHighlight = {
    bg = "#c8d6dc",
    fg = "#4197a4"
  },
  NeogitDiffContextHighlight = {
    bg = "#c5c8d9",
    fg = "#6172b0"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#ddcace",
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
  NoiceCmdlineIconInput = {
    fg = "#8c6c3e"
  },
  NoiceCmdlineIconLua = {
    fg = "#188092"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#8c6c3e"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#188092"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#8c6c3e"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#188092"
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
    bg = "#d0d5e3",
    fg = "#3760bf"
  },
  NormalNC = {
    bg = "#e1e2e7",
    fg = "#3760bf"
  },
  NormalSB = {
    bg = "#d0d5e3",
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
    fg = "#c5c8d8"
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
    fg = "#d9b2b6"
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
    fg = "#a0c7d1"
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
    fg = "#c2b4da"
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
    fg = "#c8bfb4"
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
    bg = "#d0d5e3",
    fg = "#6172b0"
  },
  NvimTreeNormalNC = {
    bg = "#d0d5e3",
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
    bg = "#d0d5e3",
    fg = "#d0d5e3"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#188092"
  },
  OctoDetailsValue = {
    link = "@variable.member"
  },
  OctoDirty = {
    bold = true,
    fg = "#b15c00"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#7847bd"
  },
  OctoStateChangesRequested = {
    link = "DiagnosticVirtualTextWarn"
  },
  OctoStateClosed = {
    link = "DiagnosticVirtualTextError"
  },
  OctoStateMerged = {
    bg = "#dad4e8",
    fg = "#9854f1"
  },
  OctoStateOpen = {
    link = "DiagnosticVirtualTextHint"
  },
  OctoStatePending = {
    link = "DiagnosticVirtualTextWarn"
  },
  OctoStatusColumn = {
    fg = "#188092"
  },
  Operator = {
    fg = "#006a83"
  },
  Pmenu = {
    bg = "#d0d5e3",
    fg = "#3760bf"
  },
  PmenuSbar = {
    bg = "#c8cfe1"
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
    bg = "#b7c1e3",
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
    bg = "#d0d5e3",
    fg = "#a8aecb"
  },
  Sneak = {
    bg = "#9854f1",
    fg = "#c4c8da"
  },
  SneakScope = {
    bg = "#b7c1e3"
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
    bg = "#d0d5e3",
    fg = "#6172b0"
  },
  StatusLineNC = {
    bg = "#d0d5e3",
    fg = "#a8aecb"
  },
  String = {
    fg = "#587539"
  },
  Substitute = {
    bg = "#f52a65",
    fg = "#b4b5b9"
  },
  TabLine = {
    bg = "#d0d5e3",
    fg = "#a8aecb"
  },
  TabLineFill = {
    bg = "#b4b5b9"
  },
  TabLineSel = {
    bg = "#2e7de9",
    fg = "#b4b5b9"
  },
  TargetWord = {
    fg = "#007197"
  },
  TelescopeBorder = {
    bg = "#d0d5e3",
    fg = "#4094a3"
  },
  TelescopeNormal = {
    bg = "#d0d5e3",
    fg = "#3760bf"
  },
  TelescopePromptBorder = {
    bg = "#d0d5e3",
    fg = "#b15c00"
  },
  TelescopePromptTitle = {
    bg = "#d0d5e3",
    fg = "#b15c00"
  },
  TelescopeResultsComment = {
    fg = "#8990b3"
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
    bg = "#d0d5e3",
    fg = "#3760bf"
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
    fg = "#b4b5b9"
  },
  Visual = {
    bg = "#b7c1e3"
  },
  VisualNOS = {
    bg = "#b7c1e3"
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
    bg = "#d0d5e3"
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
    bg = "#b7c1e3"
  },
  WinBar = {
    link = "StatusLine"
  },
  WinBarNC = {
    link = "StatusLineNC"
  },
  WinSeparator = {
    bold = true,
    fg = "#b4b5b9"
  },
  debugBreakpoint = {
    bg = "#cbd9e0",
    fg = "#07879d"
  },
  debugPC = {
    bg = "#d0d5e3"
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
  qfFileName = {
    fg = "#2e7de9"
  },
  qfLineNr = {
    fg = "#68709a"
  }
}
