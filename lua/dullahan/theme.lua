local util = require("solarized-osaka.util")
local colors = require("solarized-osaka.colors")

local M = {}
--
---@class Highlight
---@field fg string|nil
---@field bg string|nil
---@field sp string|nil
---@field style string|nil|Highlight

---@alias Highlights table<string,Highlight>

---@return Theme
function M.setup()
  local config = require("solarized-osaka.config")
  local options = config.options
  ---@class Theme
  ---@field highlights Highlights
  local theme = {
    config = options,
    colors = colors.setup(),
  }

  local c = theme.colors

  theme.highlights = {
    Comment = { fg = c.base01, style = options.styles.comments }, -- any comment
    ColorColumn = { bg = c.base02 }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = c.blue500 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = c.base03, bg = c.base0 }, -- character under the cursor
    lCursor = { fg = c.base03, bg = c.base00 }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = c.base03, bg = c.base0 }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { bg = c.base02 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = c.base03, sp = c.base1 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory = { fg = c.blue500 }, -- directory names (and other special names in listings)
    DiffAdd = { fg = c.green500, bg = c.base02, bold = true }, -- diff mode: Added line |diff.txt|
    DiffChange = { fg = c.yellow500, bg = c.base02, bold = true }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { fg = c.red500, bg = c.base02, bold = true }, -- diff mode: Deleted line |diff.txt|
    DiffText = { fg = c.blue500, bg = c.base02, bold = true }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer = { fg = c.base01 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor  = { }, -- cursor in a focused terminal
    -- TermCursorNC= { }, -- cursor in an unfocused terminal
    ErrorMsg = { fg = c.red500, reverse = true }, -- error messages on the command line
    VertSplit = { fg = c.base00 }, -- the column separating vertically split windows
    WinSeparator = { fg = c.base02, bold = true }, -- the column separating vertically split windows
    Folded = { fg = c.base0, bg = c.base02, bold = true }, -- line used for closed folds
    FoldColumn = { fg = c.base0 }, -- 'foldcolumn'
    SignColumn = { fg = c.base0 }, -- column where |signs| are displayed
    SignColumnSB = { fg = c.base0 }, -- column where |signs| are displayed
    Substitute = { fg = c.base04, bg = c.red500 }, -- |:substitute| replacement text highlighting
    LineNr = { fg = c.yellow700, bg = options.transparent and c.none or c.bg }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = c.orange500, sp = c.base1 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { fg = c.red100, bg = c.red500, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = c.blue500 }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = { fg = c.base01 }, -- Area for messages and cmdline
    -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = c.blue500 }, -- |more-prompt|
    NonText = { fg = c.base00, bold = true }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = c.base0, bg = options.transparent and c.none or c.bg }, -- normal text
    NormalNC = { fg = c.base00, bg = options.transparent and c.none or options.dim_inactive and c.base04 or c.bg }, -- normal text in non-current windows
    NormalSB = { fg = c.base01, bg = c.bg_sidebar }, -- normal text in sidebar
    NormalFloat = { fg = c.base0, bg = c.bg_float }, -- Normal text in floating windows.
    FloatBorder = { fg = c.yellow700, bg = c.bg_float },
    FloatTitle = { fg = c.base2, bg = c.bg_float },
    Pmenu = { fg = c.base0, bg = c.base02 }, -- Popup menu: normal item.
    PmenuSel = { fg = c.base01, bg = c.base2, reverse = true }, -- Popup menu: selected item.
    PmenuSbar = { fg = c.base02, reverse = true }, -- Popup menu: scrollbar.
    PmenuThumb = { fg = c.base0, reverse = true }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = c.cyan500, bold = true }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = c.blue700, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { fg = c.yellow500, reverse = true }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { fg = c.orange500, standout = true }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch = { link = "IncSearch" },
    SpecialKey = { fg = c.base00 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = c.red500, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.violet500, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.cyan500, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = c.yellow500, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = c.base1, bg = c.base03 }, -- status line of current window
    StatusLineNC = { fg = c.base0, bg = c.base04 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { fg = c.base0, bg = c.base02, sp = c.base0 }, -- tab pages line, not active tab page label
    TabLineFill = { fg = c.base0, bg = c.base02 }, -- tab pages line, where there are no labels
    TabLineSel = { fg = c.yellow500, bg = c.bg }, -- tab pages line, active tab page label
    Title = { fg = c.orange500, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = c.base03, reverse = true }, -- Visual mode selection
    VisualNOS = { bg = c.base03, reverse = true }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = c.orange500, bold = true }, -- warning messages
    Whitespace = { fg = c.base01 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { fg = c.base2, bg = c.base02, reverse = true }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant = { fg = c.cyan500 }, -- (preferred) any constant
    String = { fg = c.cyan500 }, --   a string constant: "this is a string"
    Character = { link = "Constant" }, --  a character constant: 'c', '\n'
    -- Number        = { }, --   a number constant: 234, 0xff
    -- Boolean       = { }, --  a boolean constant: TRUE, false
    -- Float         = { }, --    a floating point constant: 2.3e10

    Identifier = { fg = c.blue500, style = options.styles.variables }, -- (preferred) any variable name
    Function = { fg = c.blue500, style = options.styles.functions }, -- function name (also: methods for classes)

    Statement = { fg = c.green500 }, -- (preferred) any statement
    -- Conditional   = { }, --  if, then, else, endif, switch, etc.
    -- Repeat        = { }, --   for, do, while, etc.
    -- Label         = { }, --    case, default, etc.
    Operator = { fg = c.green500 }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = c.green500, style = options.styles.keywords }, --  any other keyword
    -- Exception     = { }, --  try, catch, throw

    PreProc = { fg = c.red500 }, -- (preferred) generic Preprocessor
    -- Include       = { }, --  preprocessor #include
    -- Define        = { }, --   preprocessor #define
    -- Macro         = { }, --    same as Define
    -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

    Type = { fg = c.yellow500 }, -- (preferred) int, long, char, etc.
    -- StorageClass  = { }, -- static, register, volatile, etc.
    -- Structure     = { }, --  struct, union, enum, etc.
    -- Typedef       = { }, --  A typedef

    Special = { fg = c.orange500 }, -- (preferred) any special symbol
    -- SpecialChar   = { }, --  special character in a constant
    -- Tag           = { }, --    you can use CTRL-] on this
    -- Delimiter     = { }, --  character that needs attention
    -- SpecialComment= { }, -- special things inside a comment
    Debug = { fg = c.orange500 }, --    debugging statements

    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links
    Bold = { bold = true },
    Italic = { italic = true },

    -- ("Ignore", below, may be invisible...)
    -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = c.red500 }, -- (preferred) any erroneous construct
    Todo = { fg = c.magenta500, bold = true }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    qfLineNr = { fg = c.base0 },
    qfFileName = { fg = c.violet500 },

    htmlH1 = { fg = c.magenta500, bold = true },
    htmlH2 = { fg = c.blue500, bold = true },

    -- mkdHeading = { fg = c.orange, bold = true },
    mkdCode = { bg = c.green900 },
    mkdCodeDelimiter = { fg = c.base0, bg = c.green700 },
    mkdCodeStart = { fg = c.orange500, bold = true },
    mkdCodeEnd = { fg = c.orange500, bold = true },
    -- mkdLink = { fg = c.blue, underline = true },

    markdownHeadingDelimiter = { fg = c.orange500, bold = true },
    markdownCode = { fg = c.yellow500, bg = c.green900 },
    markdownCodeBlock = { fg = c.yellow500, bg = c.green900 },
    markdownH1 = { fg = c.magenta500, bold = true },
    markdownH2 = { fg = c.violet500, bold = true },
    markdownLinkText = { fg = c.blue500, underline = true },

    ["helpCommand"] = { fg = c.blue500, bg = c.base01 },

    debugPC = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { fg = c.blue300, bg = c.blue700 }, -- used for breakpoint colors in terminal-debug

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText = { underline = true }, -- used for highlighting "text" references
    LspReferenceRead = { underline = true }, -- used for highlighting "read" references
    LspReferenceWrite = { underline = true }, -- used for highlighting "write" references

    DiagnosticError = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticUnnecessary = { fg = c.base00 }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

    DiagnosticVirtualTextError = { bg = c.red900, fg = c.red500 }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn = { bg = c.yellow900, fg = c.yellow500 }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo = { bg = c.blue900, fg = c.blue500 }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint = { bg = c.cyan900, fg = c.cyan500 }, -- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError = { undercurl = true, sp = c.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { undercurl = true, sp = c.hint }, -- Used to underline "Hint" diagnostics

    LspSignatureActiveParameter = { bg = c.base03, bold = true },
    LspCodeLens = { fg = c.base01 },
    LspInlayHint = { bg = c.blue500, fg = c.base01 },

    LspInfoBorder = { fg = c.base02, bg = c.bg_float },

    DapStoppedLine = { bg = c.yellow700 }, -- Used for "Warning" diagnostic virtual text

    -- These groups are for the Neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.

    --- Misc
    -- TODO:
    -- ["@comment.documentation"] = { },
    ["@operator"] = { fg = c.green500 }, -- For any operator: `+`, but also `->` and `*` in C.

    --- Punctuation
    ["@punctuation.delimiter"] = { fg = c.green500 }, -- For delimiters ie: `.`
    ["@punctuation.bracket"] = { fg = c.orange500 }, -- For brackets and parens.
    ["@punctuation.special"] = { fg = c.orange500 }, -- For special punctutation that does not fall in the catagories before.
    ["@punctuation.special.markdown"] = { fg = c.orange500, bold = true },

    --- Literals
    ["@string.documentation"] = { fg = c.cyan500 },
    ["@string.regex"] = { fg = c.cyan300 }, -- For regexes.
    ["@string.escape"] = { fg = c.orange700 }, -- For escape characters within a string.

    --- Functions
    ["@constructor"] = { fg = c.orange500 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["@parameter"] = { fg = c.orange500 }, -- For parameters of a function.
    -- TODO:
    -- ["@parameter.builtin"] = {}, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

    --- Keywords
    ["@keyword"] = { fg = c.green500, style = options.styles.keywords }, -- For keywords that don't fall in previous categories.
    -- TODO:
    -- ["@keyword.coroutine"] = { }, -- For keywords related to coroutines.
    ["@keyword.function"] = { fg = c.green500, style = options.styles.functions }, -- For keywords used to define a fuction.

    ["@label"] = { fg = c.green500 }, -- For labels: `label:` in C and `:label:` in Lua.

    --- Types
    ["@type.builtin"] = { link = "Type" },
    ["@field"] = { link = "Identifier" }, -- For fields.
    ["@property"] = { link = "Identifier" },

    --- Identifiers
    ["@variable"] = { fg = c.base0, style = options.styles.variables }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"] = { fg = c.orange500 }, -- Variable names that are defined by the languages, like `this` or `self`.

    --- Text
    ["@text.literal.markdown"] = { fg = c.red500 },
    ["@text.literal.markdown_inline"] = { fg = c.yellow500, bg = c.green900 },
    ["@text.reference"] = { fg = c.blue500, underline = true },

    ["@text.todo.unchecked"] = { fg = c.yellow500 }, -- For brackets and parens.
    ["@text.todo.checked"] = { fg = c.green500 }, -- For brackets and parens.
    ["@text.warning"] = { fg = c.yellow900, bg = c.yellow500 },
    ["@text.danger"] = { fg = c.red900, bg = c.red500 },

    ["@text.diff.add"] = { link = "DiffAdd" },
    ["@text.diff.delete"] = { link = "DiffDelete" },

    ["@namespace"] = { fg = c.blue500, style = options.styles.variables },

    -- tsx
    ["@tag.tsx"] = { fg = c.green500 },
    ["@constructor.tsx"] = { fg = c.blue500 },
    ["@tag.delimiter.tsx"] = { fg = c.orange500 },

    -- LSP Semantic Token Groups
    ["@lsp.type.boolean"] = { link = "@boolean" },
    ["@lsp.type.builtinType"] = { link = "@type.builtin" },
    ["@lsp.type.comment"] = { link = "@comment" },
    ["@lsp.type.enum"] = { link = "@type" },
    ["@lsp.type.enumMember"] = { link = "@constant" },
    ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
    ["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
    ["@lsp.type.interface"] = { fg = c.blue500 },
    ["@lsp.type.keyword"] = { link = "@keyword" },
    ["@lsp.type.namespace"] = { link = "@namespace" },
    ["@lsp.type.number"] = { link = "@number" },
    ["@lsp.type.operator"] = { link = "@operator" },
    ["@lsp.type.parameter"] = { link = "@parameter" },
    ["@lsp.type.property"] = { link = "@property" },
    ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
    ["@lsp.type.string.rust"] = { link = "@string" },
    ["@lsp.type.typeAlias"] = { link = "@type.definition" },
    ["@lsp.type.unresolvedReference"] = { undercurl = true, sp = c.error },
    ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
    ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
    ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
    ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
    ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
    ["@lsp.typemod.operator.injected"] = { link = "@operator" },
    ["@lsp.typemod.string.injected"] = { link = "@string" },
    ["@lsp.typemod.type.defaultLibrary"] = { fg = c.blue500 },
    ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
    ["@lsp.typemod.variable.injected"] = { link = "@variable" },
    -- NOTE: maybe add these with distinct highlights?
    -- ["@lsp.typemod.variable.globalScope"] (global variables)

    -- ts-rainbow
    rainbowcol1 = { fg = c.red500 },
    rainbowcol2 = { fg = c.orange500 },
    rainbowcol3 = { fg = c.yellow500 },
    rainbowcol4 = { fg = c.green500 },
    rainbowcol5 = { fg = c.cyan500 },
    rainbowcol6 = { fg = c.blue500 },
    rainbowcol7 = { fg = c.magenta500 },

    -- ts-rainbow2 (maintained fork)
    TSRainbowRed = { fg = c.red },
    TSRainbowOrange = { fg = c.orange },
    TSRainbowYellow = { fg = c.yellow },
    TSRainbowGreen = { fg = c.green },
    TSRainbowBlue = { fg = c.blue },
    TSRainbowViolet = { fg = c.violet500 },
    TSRainbowCyan = { fg = c.cyan },

    -- rainbow-delimiters
    RainbowDelimiterRed = { fg = c.red },
    RainbowDelimiterOrange = { fg = c.orange },
    RainbowDelimiterYellow = { fg = c.yellow },
    RainbowDelimiterGreen = { fg = c.green },
    RainbowDelimiterBlue = { fg = c.blue },
    RainbowDelimiterViolet = { fg = c.violet },
    RainbowDelimiterCyan = { fg = c.cyan },

    -- LspTrouble
    TroubleText = { fg = c.base0 },
    TroubleCount = { fg = c.magenta500, bg = c.base00 },
    TroubleNormal = { fg = c.base0, bg = c.base00 },

    -- Illuminate
    illuminatedWord = { bg = c.violet900 },
    illuminatedCurWord = { bg = c.violet900 },
    IlluminatedWordText = { bg = c.violet900 },
    IlluminatedWordRead = { bg = c.magenta900 },
    IlluminatedWordWrite = { bg = c.magenta900 },

    -- diff
    diffAdded = { fg = c.green500 },
    diffRemoved = { fg = c.red500 },
    diffChanged = { fg = c.yellow500 },
    diffOldFile = { fg = c.violet500 },
    diffNewFile = { fg = c.orange500 },
    diffFile = { fg = c.blue500 },
    diffLine = { fg = c.base01 },
    diffIndexLine = { fg = c.magenta500 },

    -- Neogit
    NeogitBranch = { fg = c.magenta500 },
    NeogitRemote = { fg = c.violet500 },
    NeogitHunkHeader = { fg = c.base0, bg = c.base02 },
    NeogitHunkHeaderHighlight = { fg = c.blue500, bg = c.base00 },
    NeogitDiffContextHighlight = { fg = c.base00, bg = c.base02 },
    NeogitDiffDeleteHighlight = { fg = c.red500, bg = c.red900 },
    NeogitDiffAddHighlight = { fg = c.green500, bg = c.green900 },

    -- Neotest
    NeotestPassed = { fg = c.green500 },
    NeotestRunning = { fg = c.yellow500 },
    NeotestFailed = { fg = c.red500 },
    NeotestSkipped = { fg = c.blue500 },
    NeotestTest = { fg = c.base00 },
    NeotestNamespace = { fg = c.cyan500 },
    NeotestFocused = { fg = c.yellow500 },
    NeotestFile = { fg = c.cyan500 },
    NeotestDir = { fg = c.blue500 },
    NeotestBorder = { fg = c.blue500 },
    NeotestIndent = { fg = c.base00 },
    NeotestExpandMarker = { fg = c.base0 },
    NeotestAdapterName = { fg = c.violet500, bold = true },
    NeotestWinSelect = { fg = c.blue500 },
    NeotestMarked = { fg = c.blue500 },
    NeotestTarget = { fg = c.blue500 },
    --[[ NeotestUnknown = {}, ]]

    -- GitGutter
    GitGutterAdd = { fg = c.green500 }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = c.yellow500 }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = c.red500 }, -- diff mode: Deleted line |diff.txt|
    GitGutterAddLineNr = { fg = c.green500 },
    GitGutterChangeLineNr = { fg = c.yellow500 },
    GitGutterDeleteLineNr = { fg = c.red500 },

    -- GitSigns
    GitSignsAdd = { fg = c.green500 }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.yellow500 }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.red500 }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeBorder = { fg = c.base02, bg = c.bg_float },
    TelescopeNormal = { fg = c.base0, bg = c.bg_float },

    -- NvimTree
    NvimTreeNormal = { fg = c.base00, bg = c.bg_sidebar },
    NvimTreeWinSeparator = {
      fg = options.styles.sidebars == "transparent" and c.border or c.bg_sidebar,
      bg = c.bg_sidebar,
    },
    NvimTreeNormalNC = { fg = c.base00, bg = c.bg_sidebar },
    NvimTreeRootFolder = { fg = c.blue, bold = true },
    NvimTreeGitDirty = { fg = c.yellow500 },
    NvimTreeGitNew = { fg = c.green500 },
    NvimTreeGitDeleted = { fg = c.red500 },
    NvimTreeOpenedFile = { bg = c.bg_highlight },
    NvimTreeSpecialFile = { fg = c.violet500, underline = true },
    NvimTreeIndentMarker = { fg = c.base02 },
    NvimTreeImageFile = { fg = c.base00 },
    NvimTreeSymlink = { fg = c.blue },
    NvimTreeFolderIcon = { bg = c.none, fg = c.blue },
    -- NvimTreeFolderName= { fg = c.fg_float },

    NeoTreeNormal = { fg = c.base00, bg = c.bg_sidebar },
    NeoTreeNormalNC = { fg = c.base00, bg = c.bg_sidebar },
    NeoTreeDimText = { fg = c.base01 },

    -- Fern
    FernBranchText = { fg = c.blue },

    -- glyph palette
    GlyphPalette1 = { fg = c.red500 },
    GlyphPalette2 = { fg = c.green },
    GlyphPalette3 = { fg = c.yellow },
    GlyphPalette4 = { fg = c.blue },
    GlyphPalette6 = { fg = c.cyan },
    GlyphPalette7 = { fg = c.fg },
    GlyphPalette9 = { fg = c.red },

    -- Dashboard
    DashboardShortCut = { fg = c.cyan },
    DashboardHeader = { fg = c.blue },
    DashboardCenter = { fg = c.magenta },
    DashboardFooter = { fg = c.yellow, italic = true },

    -- Alpha
    AlphaShortcut = { fg = c.orange },
    AlphaHeader = { fg = c.blue },
    AlphaHeaderLabel = { fg = c.orange },
    AlphaFooter = { fg = c.cyan },
    AlphaButtons = { fg = c.cyan },

    -- WhichKey
    WhichKey = { fg = c.cyan },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.magenta },
    WhichKeySeperator = { fg = c.base01 },
    WhichKeySeparator = { fg = c.base01 },
    WhichKeyFloat = { bg = c.bg_sidebar },
    WhichKeyValue = { fg = c.violet500 },

    -- LspSaga
    DiagnosticWarning = { link = "DiagnosticWarn" },
    DiagnosticInformation = { link = "DiagnosticInfo" },

    LspFloatWinNormal = { bg = c.bg_float },
    LspFloatWinBorder = { fg = c.base02 },
    LspSagaBorderTitle = { fg = c.cyan },
    LspSagaHoverBorder = { fg = c.blue },
    LspSagaRenameBorder = { fg = c.green },
    LspSagaDefPreviewBorder = { fg = c.green },
    LspSagaCodeActionBorder = { fg = c.blue },
    LspSagaFinderSelection = { fg = c.base03 },
    LspSagaCodeActionTitle = { fg = c.cyan },
    LspSagaCodeActionContent = { fg = c.violet500 },
    LspSagaSignatureHelpBorder = { fg = c.red },
    ReferencesCount = { fg = c.violet500 },
    DefinitionCount = { fg = c.violet500 },
    DefinitionIcon = { fg = c.blue },
    ReferencesIcon = { fg = c.blue },
    TargetWord = { fg = c.cyan500 },

    -- NeoVim
    healthError = { fg = c.error },
    healthSuccess = { fg = c.cyan },
    healthWarning = { fg = c.warning },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = c.yellow500 },

    -- Barbar
    BufferCurrent = { bg = c.bg, fg = c.fg },
    BufferCurrentERROR = { bg = c.bg, fg = c.error },
    BufferCurrentHINT = { bg = c.bg, fg = c.hint },
    -- BufferCurrentIcon = { bg = c.bg, fg = c.},
    BufferCurrentINFO = { bg = c.bg, fg = c.info },
    BufferCurrentWARN = { bg = c.bg, fg = c.warning },
    BufferCurrentIndex = { bg = c.bg, fg = c.info },
    BufferCurrentMod = { bg = c.bg, fg = c.warning },
    BufferCurrentSign = { bg = c.bg, fg = c.bg },
    BufferCurrentTarget = { bg = c.bg, fg = c.red },
    BufferAlternate = { bg = c.base01, fg = c.fg },
    BufferAlternateERROR = { bg = c.base01, fg = c.error },
    BufferAlternateHINT = { bg = c.base01, fg = c.hint },
    -- BufferAlternateIcon = { bg = c.base01, fg = c. },
    BufferAlternateIndex = { bg = c.base01, fg = c.info },
    BufferAlternateINFO = { bg = c.base01, fg = c.info },
    BufferAlternateMod = { bg = c.base01, fg = c.warning },
    BufferAlternateSign = { bg = c.base01, fg = c.info },
    BufferAlternateTarget = { bg = c.base01, fg = c.red },
    BufferAlternateWARN = { bg = c.base01, fg = c.warning },
    BufferVisible = { bg = c.bg_statusline, fg = c.fg },
    BufferVisibleERROR = { bg = c.bg_statusline, fg = c.error },
    BufferVisibleHINT = { bg = c.bg_statusline, fg = c.hint },
    -- BufferVisibleIcon = { bg = c.bg_statusline, fg = c. },
    BufferVisibleINFO = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleWARN = { bg = c.bg_statusline, fg = c.warning },
    BufferVisibleIndex = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleMod = { bg = c.bg_statusline, fg = c.warning },
    BufferVisibleSign = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleTarget = { bg = c.bg_statusline, fg = c.red },
    BufferInactive = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.violet500, 0.8) },
    BufferInactiveERROR = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.error, 0.8) },
    BufferInactiveHINT = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.hint, 0.8) },
    -- BufferInactiveIcon = { bg = c.bg_statusline, fg = util.darken(c., 0.1) },
    BufferInactiveINFO = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.info, 0.8) },
    BufferInactiveWARN = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.warning, 0.8) },
    BufferInactiveIndex = { bg = util.darken(c.bg_highlight, 0.4), fg = c.violet500 },
    BufferInactiveMod = { bg = util.darken(c.bg_highlight, 0.4), fg = util.darken(c.warning, 0.8) },
    BufferInactiveSign = { bg = util.darken(c.bg_highlight, 0.4), fg = c.bg },
    BufferInactiveTarget = { bg = util.darken(c.bg_highlight, 0.4), fg = c.red },
    BufferOffset = { bg = c.bg_statusline, fg = c.violet500 },
    BufferTabpageFill = { bg = util.darken(c.bg_highlight, 0.8), fg = c.violet500 },
    BufferTabpages = { bg = c.bg_statusline, fg = c.none },

    -- Sneak
    Sneak = { fg = c.bg_highlight, bg = c.magenta },
    SneakScope = { bg = c.base03 },

    -- Hop
    HopNextKey = { fg = c.magenta500, bold = true },
    HopNextKey1 = { fg = c.violet500, bold = true },
    HopNextKey2 = { fg = c.violet700 },
    HopUnmatched = { fg = c.base01 },

    TSNodeKey = { fg = c.magenta500, bold = true },
    TSNodeUnmatched = { fg = c.base01 },

    LeapMatch = { bg = c.magenta500, fg = c.fg, bold = true },
    LeapLabelPrimary = { fg = c.magenta500, bold = true },
    LeapLabelSecondary = { fg = c.cyan, bold = true },
    LeapBackdrop = { fg = c.base01 },

    FlashBackdrop = { fg = c.base01 },
    FlashLabel = { bg = c.magenta500, bold = true, fg = c.fg },

    LightspeedGreyWash = { fg = c.base01 },
    -- LightspeedCursor = { link = "Cursor" },
    LightspeedLabel = { fg = c.magenta500, bold = true, underline = true },
    LightspeedLabelDistant = { fg = c.cyan, bold = true, underline = true },
    LightspeedLabelDistantOverlapped = { fg = c.cyan500, underline = true },
    LightspeedLabelOverlapped = { fg = c.magenta500, underline = true },
    LightspeedMaskedChar = { fg = c.orange },
    LightspeedOneCharMatch = { bg = c.magenta500, fg = c.fg, bold = true },
    LightspeedPendingOpArea = { bg = c.magenta500, fg = c.fg },
    LightspeedShortcut = { bg = c.magenta500, fg = c.fg, bold = true, underline = true },
    -- LightspeedShortcutOverlapped = { link = "LightspeedShortcut" },
    -- LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
    LightspeedUnlabeledMatch = { fg = c.violet500, bold = true },

    -- Cmp
    CmpDocumentation = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.base02, bg = c.bg_float },
    CmpGhostText = { fg = c.base01 },

    CmpItemAbbr = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated = { fg = c.base01, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch = { fg = c.violet500, bg = c.none },
    CmpItemAbbrMatchFuzzy = { fg = c.violet500, bg = c.none },

    CmpItemMenu = { fg = c.base01, bg = c.none },

    CmpItemKindDefault = { fg = c.base01, bg = c.none },

    CmpItemKindKeyword = { fg = c.cyan, bg = c.none },

    CmpItemKindVariable = { fg = c.magenta, bg = c.none },
    CmpItemKindConstant = { fg = c.magenta, bg = c.none },
    CmpItemKindReference = { fg = c.magenta, bg = c.none },
    CmpItemKindValue = { fg = c.magenta, bg = c.none },
    CmpItemKindCopilot = { fg = c.cyan500, bg = c.none },

    CmpItemKindFunction = { fg = c.blue, bg = c.none },
    CmpItemKindMethod = { fg = c.blue, bg = c.none },
    CmpItemKindConstructor = { fg = c.blue, bg = c.none },

    CmpItemKindClass = { fg = c.orange, bg = c.none },
    CmpItemKindInterface = { fg = c.orange, bg = c.none },
    CmpItemKindStruct = { fg = c.orange, bg = c.none },
    CmpItemKindEvent = { fg = c.orange, bg = c.none },
    CmpItemKindEnum = { fg = c.orange, bg = c.none },
    CmpItemKindUnit = { fg = c.orange, bg = c.none },

    CmpItemKindModule = { fg = c.yellow, bg = c.none },

    CmpItemKindProperty = { fg = c.cyan, bg = c.none },
    CmpItemKindField = { fg = c.cyan, bg = c.none },
    CmpItemKindTypeParameter = { fg = c.cyan, bg = c.none },
    CmpItemKindEnumMember = { fg = c.cyan, bg = c.none },
    CmpItemKindOperator = { fg = c.cyan, bg = c.none },
    CmpItemKindSnippet = { fg = c.violet500, bg = c.none },

    -- navic
    NavicIconsFile = { fg = c.fg, bg = c.bg_statusline },
    NavicIconsModule = { fg = c.yellow, bg = c.bg_statusline },
    NavicIconsNamespace = { fg = c.fg, bg = c.bg_statusline },
    NavicIconsPackage = { fg = c.fg, bg = c.bg_statusline },
    NavicIconsClass = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsMethod = { fg = c.blue, bg = c.bg_statusline },
    NavicIconsProperty = { fg = c.cyan, bg = c.bg_statusline },
    NavicIconsField = { fg = c.cyan, bg = c.bg_statusline },
    NavicIconsConstructor = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsEnum = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsInterface = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsFunction = { fg = c.blue, bg = c.bg_statusline },
    NavicIconsVariable = { fg = c.magenta, bg = c.bg_statusline },
    NavicIconsConstant = { fg = c.magenta, bg = c.bg_statusline },
    NavicIconsString = { fg = c.green, bg = c.bg_statusline },
    NavicIconsNumber = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsBoolean = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsArray = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsObject = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsKey = { fg = c.violet500, bg = c.bg_statusline },
    NavicIconsKeyword = { fg = c.violet500, bg = c.bg_statusline },
    NavicIconsNull = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsEnumMember = { fg = c.cyan, bg = c.bg_statusline },
    NavicIconsStruct = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsEvent = { fg = c.orange, bg = c.bg_statusline },
    NavicIconsOperator = { fg = c.fg, bg = c.bg_statusline },
    NavicIconsTypeParameter = { fg = c.cyan, bg = c.bg_statusline },
    NavicText = { fg = c.fg, bg = c.bg_statusline },
    NavicSeparator = { fg = c.fg, bg = c.bg_statusline },

    IblIndent = { fg = c.base03, nocombine = true },
    IndentBlanklineChar = { fg = c.base03, nocombine = true },
    IndentBlanklineContextChar = { fg = c.orange500, nocombine = true },

    -- Scrollbar
    ScrollbarHandle = { fg = c.none, bg = c.bg_highlight },

    ScrollbarSearchHandle = { fg = c.orange, bg = c.bg_highlight },
    ScrollbarSearch = { fg = c.orange, bg = c.none },

    ScrollbarErrorHandle = { fg = c.error, bg = c.bg_highlight },
    ScrollbarError = { fg = c.error, bg = c.none },

    ScrollbarWarnHandle = { fg = c.warning, bg = c.bg_highlight },
    ScrollbarWarn = { fg = c.warning, bg = c.none },

    ScrollbarInfoHandle = { fg = c.info, bg = c.bg_highlight },
    ScrollbarInfo = { fg = c.info, bg = c.none },

    ScrollbarHintHandle = { fg = c.hint, bg = c.bg_highlight },
    ScrollbarHint = { fg = c.hint, bg = c.none },

    ScrollbarMiscHandle = { fg = c.violet500, bg = c.bg_highlight },
    ScrollbarMisc = { fg = c.violet500, bg = c.none },

    -- Yanky
    YankyPut = { link = "IncSearch" },
    YankyYanked = { link = "IncSearch" },

    -- Lazy
    LazyProgressDone = { bold = true, fg = c.magenta500 },
    LazyProgressTodo = { bold = true, fg = c.base01 },

    -- Notify
    NotifyBackground = { fg = c.fg, bg = c.bg },
    --- Border
    NotifyERRORBorder = { fg = util.darken(c.error, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyWARNBorder = { fg = util.darken(c.warning, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyINFOBorder = { fg = util.darken(c.info, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyDEBUGBorder = { fg = util.darken(c.base01, 0.3), bg = options.transparent and c.none or c.bg },
    NotifyTRACEBorder = { fg = util.darken(c.violet500, 0.3), bg = options.transparent and c.none or c.bg },
    --- Icons
    NotifyERRORIcon = { fg = c.error },
    NotifyWARNIcon = { fg = c.warning },
    NotifyINFOIcon = { fg = c.info },
    NotifyDEBUGIcon = { fg = c.base01 },
    NotifyTRACEIcon = { fg = c.violet500 },
    --- Title
    NotifyERRORTitle = { fg = c.error },
    NotifyWARNTitle = { fg = c.warning },
    NotifyINFOTitle = { fg = c.info },
    NotifyDEBUGTitle = { fg = c.base01 },
    NotifyTRACETitle = { fg = c.violet500 },
    --- Body
    NotifyERRORBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    NotifyWARNBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    NotifyINFOBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    NotifyDEBUGBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    NotifyTRACEBody = { fg = c.fg, bg = options.transparent and c.none or c.bg },

    -- Mini
    MiniCompletionActiveParameter = { underline = true },

    MiniCursorword = { bg = c.base01 },
    MiniCursorwordCurrent = { bg = c.base01 },

    MiniIndentscopeSymbol = { fg = c.violet700, nocombine = true },
    MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible

    MiniJump = { bg = c.magenta500, fg = c.base4 },

    MiniJump2dSpot = { fg = c.magenta500, bold = true, nocombine = true },

    MiniStarterCurrent = { nocombine = true },
    MiniStarterFooter = { fg = c.yellow, italic = true },
    MiniStarterHeader = { fg = c.blue },
    MiniStarterInactive = { fg = c.base01, style = options.styles.comments },
    MiniStarterItem = { fg = c.fg, bg = options.transparent and c.none or c.bg },
    MiniStarterItemBullet = { fg = c.base02 },
    MiniStarterItemPrefix = { fg = c.warning },
    MiniStarterSection = { fg = c.violet500 },
    MiniStarterQuery = { fg = c.info },

    MiniStatuslineDevinfo = { fg = c.base01, bg = c.bg_highlight },
    MiniStatuslineFileinfo = { fg = c.base01, bg = c.bg_highlight },
    MiniStatuslineFilename = { fg = c.base01, bg = c.base01 },
    MiniStatuslineInactive = { fg = c.blue, bg = c.bg_statusline },
    MiniStatuslineModeCommand = { fg = c.black, bg = c.yellow, bold = true },
    MiniStatuslineModeInsert = { fg = c.black, bg = c.green, bold = true },
    MiniStatuslineModeNormal = { fg = c.black, bg = c.blue, bold = true },
    MiniStatuslineModeOther = { fg = c.black, bg = c.cyan500, bold = true },
    MiniStatuslineModeReplace = { fg = c.black, bg = c.red, bold = true },
    MiniStatuslineModeVisual = { fg = c.black, bg = c.magenta, bold = true },

    MiniSurround = { bg = c.orange, fg = c.black },

    MiniTablineCurrent = { fg = c.fg, bg = c.base01 },
    MiniTablineFill = { bg = c.black },
    MiniTablineHidden = { fg = c.violet500, bg = c.bg_statusline },
    MiniTablineModifiedCurrent = { fg = c.warning, bg = c.base01 },
    MiniTablineModifiedHidden = { bg = c.bg_statusline, fg = util.darken(c.warning, 0.7) },
    MiniTablineModifiedVisible = { fg = c.warning, bg = c.bg_statusline },
    MiniTablineTabpagesection = { bg = c.bg_statusline, fg = c.none },
    MiniTablineVisible = { fg = c.fg, bg = c.bg_statusline },

    MiniTestEmphasis = { bold = true },
    MiniTestFail = { fg = c.red, bold = true },
    MiniTestPass = { fg = c.green, bold = true },

    MiniTrailspace = { bg = c.red },

    -- Noice

    NoiceCompletionItemKindDefault = { fg = c.base01, bg = c.none },

    NoiceCompletionItemKindKeyword = { fg = c.cyan, bg = c.none },

    NoiceCompletionItemKindVariable = { fg = c.magenta, bg = c.none },
    NoiceCompletionItemKindConstant = { fg = c.magenta, bg = c.none },
    NoiceCompletionItemKindReference = { fg = c.magenta, bg = c.none },
    NoiceCompletionItemKindValue = { fg = c.magenta, bg = c.none },

    NoiceCompletionItemKindFunction = { fg = c.blue, bg = c.none },
    NoiceCompletionItemKindMethod = { fg = c.blue, bg = c.none },
    NoiceCompletionItemKindConstructor = { fg = c.blue, bg = c.none },

    NoiceCompletionItemKindClass = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindInterface = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindStruct = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindEvent = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindEnum = { fg = c.orange, bg = c.none },
    NoiceCompletionItemKindUnit = { fg = c.orange, bg = c.none },

    NoiceCompletionItemKindModule = { fg = c.yellow, bg = c.none },

    NoiceCompletionItemKindProperty = { fg = c.cyan, bg = c.none },
    NoiceCompletionItemKindField = { fg = c.cyan, bg = c.none },
    NoiceCompletionItemKindTypeParameter = { fg = c.cyan, bg = c.none },
    NoiceCompletionItemKindEnumMember = { fg = c.cyan, bg = c.none },
    NoiceCompletionItemKindOperator = { fg = c.cyan, bg = c.none },
    NoiceCompletionItemKindSnippet = { fg = c.violet500, bg = c.none },

    TreesitterContext = { bg = c.violet900 },
    Hlargs = { fg = c.yellow },
  }

  if not vim.diagnostic then
    local severity_map = {
      Error = "Error",
      Warn = "Warning",
      Info = "Information",
      Hint = "Hint",
    }
    local types = { "Default", "VirtualText", "Underline" }
    for _, type in ipairs(types) do
      for snew, sold in pairs(severity_map) do
        theme.highlights["LspDiagnostics" .. type .. sold] = {
          link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
        }
      end
    end
  end

  ---@type table<string, table>
  theme.defer = {}

  if options.hide_inactive_statusline then
    local inactive = { underline = true, bg = c.none, fg = c.bg, sp = c.border }

    -- StatusLineNC
    theme.highlights.StatusLineNC = inactive

    -- LuaLine
    for _, section in ipairs({ "a", "b", "c" }) do
      theme.defer["lualine_" .. section .. "_inactive"] = inactive
    end

    -- mini.statusline
    theme.highlights.MiniStatuslineInactive = inactive
  end

  options.on_highlights(theme.highlights, theme.colors)

  if config.is_day() then
    util.invert_colors(theme.colors)
    util.invert_highlights(theme.highlights)
  end

  return theme
end

return M
