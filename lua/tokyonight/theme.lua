local util = require("tokyonight.util")
local colors = require("tokyonight.colors")

local M = {}

---@param config Config
---@return Theme
function M.setup(config)
  config = config or require("tokyonight.config")

  ---@class Theme
  local theme = {}
  theme.config = config
  theme.colors = colors.setup(config)
  local c = theme.colors

  theme.base = {
    Comment = { fg = c.comment, style = config.commentStyle }, -- any comment
    ColorColumn = { bg = c.black }, -- used for the columns set with 'colorcolumn'
    Conceal = { fg = c.dark5 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor = { fg = c.bg, bg = c.fg }, -- character under the cursor
    lCursor = { fg = c.bg, bg = c.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn = { bg = c.bg_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine = { bg = c.bg_highlight }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory = { fg = c.blue }, -- directory names (and other special names in listings)
    DiffAdd = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer = { fg = c.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    -- TermCursor  = { }, -- cursor in a focused terminal
    -- TermCursorNC= { }, -- cursor in an unfocused terminal
    ErrorMsg = { fg = c.error }, -- error messages on the command line
    VertSplit = { fg = c.border }, -- the column separating vertically split windows
    Folded = { fg = c.blue, bg = c.fg_gutter }, -- line used for closed folds
    FoldColumn = { bg = c.bg, fg = c.comment }, -- 'foldcolumn'
    SignColumn = { bg = config.transparent and c.none or c.bg, fg = c.fg_gutter }, -- column where |signs| are displayed
    SignColumnSB = { bg = c.bg_sidebar, fg = c.fg_gutter }, -- column where |signs| are displayed
    Substitute = { bg = c.red, fg = c.black }, -- |:substitute| replacement text highlighting
    LineNr = { fg = c.fg_gutter }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr = { fg = c.dark5 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen = { fg = c.orange, style = "bold" }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg = { fg = c.fg_dark, style = "bold" }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea = { fg = c.fg_dark }, -- Area for messages and cmdline
    -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg = { fg = c.blue }, -- |more-prompt|
    NonText = { fg = c.dark3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal = { fg = c.fg, bg = config.transparent and c.none or c.bg }, -- normal text
    NormalNC = { fg = c.fg, bg = config.transparent and c.none or c.bg }, -- normal text in non-current windows
    NormalSB = { fg = c.fg_sidebar, bg = c.bg_sidebar }, -- normal text in non-current windows
    NormalFloat = { fg = c.fg, bg = c.bg_float }, -- Normal text in floating windows.
    FloatBorder = { fg = c.border_highlight, bg = c.bg_float },
    Pmenu = { bg = c.bg_popup, fg = c.fg }, -- Popup menu: normal item.
    PmenuSel = { bg = util.darken(c.fg_gutter, 0.8) }, -- Popup menu: selected item.
    PmenuSbar = { bg = util.lighten(c.bg_popup, 0.95) }, -- Popup menu: scrollbar.
    PmenuThumb = { bg = c.fg_gutter }, -- Popup menu: Thumb of the scrollbar.
    Question = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine = { bg = c.bg_visual, style = "bold" }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search = { bg = c.bg_search, fg = c.fg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch = { bg = c.orange, fg = c.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    SpecialKey = { fg = c.dark3 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad = { sp = c.error, style = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap = { sp = c.warning, style = "undercurl" }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal = { sp = c.info, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare = { sp = c.hint, style = "undercurl" }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine = { fg = c.fg_sidebar, bg = c.bg_statusline }, -- status line of current window
    StatusLineNC = { fg = c.fg_gutter, bg = c.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine = { bg = c.bg_statusline, fg = c.fg_gutter }, -- tab pages line, not active tab page label
    TabLineFill = { bg = c.black }, -- tab pages line, where there are no labels
    TabLineSel = { fg = c.black, bg = c.blue }, -- tab pages line, active tab page label
    Title = { fg = c.blue, style = "bold" }, -- titles for output from ":set all", ":autocmd" etc.
    Visual = { bg = c.bg_visual }, -- Visual mode selection
    VisualNOS = { bg = c.bg_visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg = { fg = c.warning }, -- warning messages
    Whitespace = { fg = c.fg_gutter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu = { bg = c.bg_visual }, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant = { fg = c.orange }, -- (preferred) any constant
    String = { fg = c.green }, --   a string constant: "this is a string"
    Character = { fg = c.green }, --  a character constant: 'c', '\n'
    -- Number        = { }, --   a number constant: 234, 0xff
    -- Boolean       = { }, --  a boolean constant: TRUE, false
    -- Float         = { }, --    a floating point constant: 2.3e10

    Identifier = { fg = c.magenta, style = config.variableStyle }, -- (preferred) any variable name
    Function = { fg = c.blue, style = config.functionStyle }, -- function name (also: methods for classes)

    Statement = { fg = c.magenta }, -- (preferred) any statement
    -- Conditional   = { }, --  if, then, else, endif, switch, etc.
    -- Repeat        = { }, --   for, do, while, etc.
    -- Label         = { }, --    case, default, etc.
    Operator = { fg = c.blue5 }, -- "sizeof", "+", "*", etc.
    Keyword = { fg = c.cyan, style = config.keywordStyle }, --  any other keyword
    -- Exception     = { }, --  try, catch, throw

    PreProc = { fg = c.cyan }, -- (preferred) generic Preprocessor
    -- Include       = { }, --  preprocessor #include
    -- Define        = { }, --   preprocessor #define
    -- Macro         = { }, --    same as Define
    -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

    Type = { fg = c.blue1 }, -- (preferred) int, long, char, etc.
    -- StorageClass  = { }, -- static, register, volatile, etc.
    -- Structure     = { }, --  struct, union, enum, etc.
    -- Typedef       = { }, --  A typedef

    Special = { fg = c.blue1 }, -- (preferred) any special symbol
    -- SpecialChar   = { }, --  special character in a constant
    -- Tag           = { }, --    you can use CTRL-] on this
    -- Delimiter     = { }, --  character that needs attention
    -- SpecialComment= { }, -- special things inside a comment
    -- Debug         = { }, --    debugging statements

    Underlined = { style = "underline" }, -- (preferred) text that stands out, HTML links
    Bold = { style = "bold" },
    Italic = { style = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = c.error }, -- (preferred) any erroneous construct
    Todo = { bg = c.yellow, fg = c.bg }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    qfLineNr = { fg = c.dark5 },
    qfFileName = { fg = c.blue },

    htmlH1 = { fg = c.magenta, style = "bold" },
    htmlH2 = { fg = c.blue, style = "bold" },

    -- mkdHeading = { fg = c.orange, style = "bold" },
    -- mkdCode = { bg = c.terminal_black, fg = c.fg },
    mkdCodeDelimiter = { bg = c.terminal_black, fg = c.fg },
    mkdCodeStart = { fg = c.teal, style = "bold" },
    mkdCodeEnd = { fg = c.teal, style = "bold" },
    -- mkdLink = { fg = c.blue, style = "underline" },

    markdownHeadingDelimiter = { fg = c.orange, style = "bold" },
    markdownCode = { fg = c.teal },
    markdownCodeBlock = { fg = c.teal },
    markdownH1 = { fg = c.magenta, style = "bold" },
    markdownH2 = { fg = c.blue, style = "bold" },
    markdownLinkText = { fg = c.blue, style = "underline" },

    debugPC = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { bg = util.darken(c.info, 0.1), fg = c.info }, -- used for breakpoint colors in terminal-debug

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.
    LspReferenceText = { bg = c.fg_gutter }, -- used for highlighting "text" references
    LspReferenceRead = { bg = c.fg_gutter }, -- used for highlighting "read" references
    LspReferenceWrite = { bg = c.fg_gutter }, -- used for highlighting "write" references

    DiagnosticError = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

    DiagnosticVirtualTextError = { bg = util.darken(c.error, 0.1), fg = c.error }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn = { bg = util.darken(c.warning, 0.1), fg = c.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo = { bg = util.darken(c.info, 0.1), fg = c.info }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint = { bg = util.darken(c.hint, 0.1), fg = c.hint }, -- Used for "Hint" diagnostic virtual text

    DiagnosticUnderlineError = { style = "undercurl", sp = c.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { style = "undercurl", sp = c.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { style = "undercurl", sp = c.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { style = "undercurl", sp = c.hint }, -- Used to underline "Hint" diagnostics

    LspSignatureActiveParameter = { fg = c.orange },
    LspCodeLens = { fg = c.comment },

    ALEErrorSign = { fg = c.error },
    ALEWarningSign = { fg = c.warning },
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
        theme.base["LspDiagnostics" .. type .. sold] = {
          link = "Diagnostic" .. (type == "Default" and "" or type) .. snew,
        }
      end
    end
  end

  theme.plugins = {

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation        = { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute         = { };    -- (unstable) TODO: docs
    -- TSBoolean           = { };    -- For booleans.
    -- TSCharacter         = { };    -- For characters.
    -- TSComment           = { };    -- For comment blocks.
    TSNote = { fg = c.bg, bg = c.info },
    TSWarning = { fg = c.bg, bg = c.warning },
    TSDanger = { fg = c.bg, bg = c.error },
    TSConstructor = { fg = c.magenta }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    -- TSConditional       = { };    -- For keywords related to conditionnals.
    -- TSConstant          = { };    -- For constants
    -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError             = { };    -- For syntax/parser errors.
    -- TSException         = { };    -- For exception related keywords.
    TSField = { fg = c.green1 }, -- For fields.
    -- TSFloat             = { };    -- For floats.
    -- TSFunction          = { };    -- For function (calls and definitions).
    -- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword = { fg = c.purple, style = config.keywordStyle }, -- For keywords that don't fall in previous categories.
    TSKeywordFunction = { fg = c.magenta, style = config.functionStyle }, -- For keywords used to define a fuction.
    TSLabel = { fg = c.blue }, -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod            = { };    -- For method calls and definitions.
    -- TSNamespace         = { };    -- For identifiers referring to modules and namespaces.
    -- TSNone              = { };    -- TODO: docs
    -- TSNumber            = { };    -- For all numbers
    TSOperator = { fg = c.blue5 }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter = { fg = c.yellow }, -- For parameters of a function.
    -- TSParameterReference= { };    -- For references to parameters of a function.
    TSProperty = { fg = c.green1 }, -- Same as `TSField`.
    TSPunctDelimiter = { fg = c.blue5 }, -- For delimiters ie: `.`
    TSPunctBracket = { fg = c.fg_dark }, -- For brackets and parens.
    TSPunctSpecial = { fg = c.blue5 }, -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat            = { };    -- For keywords related to loops.
    -- TSString            = { };    -- For strings.
    TSStringRegex = { fg = c.blue6 }, -- For regexes.
    TSStringEscape = { fg = c.magenta }, -- For escape characters within a string.
    -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
    -- TSType              = { };    -- For types.
    -- TSTypeBuiltin       = { };    -- For builtin types.
    TSVariable = { style = config.variableStyle }, -- Any variable name that does not have another highlight.
    TSVariableBuiltin = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag               = { };    -- Tags like html tag names.
    -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
    -- TSText              = { };    -- For strings considered text in a markup language.
    TSTextReference = { fg = c.teal },
    -- TSEmphasis          = { };    -- For text to be represented with emphasis.
    -- TSUnderline         = { };    -- For text to be represented with an underline.
    -- TSStrike            = { };    -- For strikethrough text.
    -- TSTitle             = { };    -- Text that is part of a title.
    -- TSLiteral           = { };    -- Literal text.
    -- TSURI               = { };    -- Any URI like a link or email.

    -- Lua
    -- luaTSProperty = { fg = c.red }, -- Same as `TSField`.

    -- LspTrouble
    LspTroubleText = { fg = c.fg_dark },
    LspTroubleCount = { fg = c.magenta, bg = c.fg_gutter },
    LspTroubleNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },

    -- Illuminate
    illuminatedWord = { bg = c.fg_gutter },
    illuminatedCurWord = { bg = c.fg_gutter },

    -- diff
    diffAdded = { fg = c.git.add },
    diffRemoved = { fg = c.git.delete },
    diffChanged = { fg = c.git.change },
    diffOldFile = { fg = c.yellow },
    diffNewFile = { fg = c.orange },
    diffFile = { fg = c.blue },
    diffLine = { fg = c.comment },
    diffIndexLine = { fg = c.magenta },

    -- Neogit
    NeogitBranch = { fg = c.magenta },
    NeogitRemote = { fg = c.purple },
    NeogitHunkHeader = { bg = c.bg_highlight, fg = c.fg },
    NeogitHunkHeaderHighlight = { bg = c.fg_gutter, fg = c.blue },
    NeogitDiffContextHighlight = { bg = util.darken(c.fg_gutter, 0.5), fg = c.fg_dark },
    NeogitDiffDeleteHighlight = { fg = c.git.delete, bg = c.diff.delete },
    NeogitDiffAddHighlight = { fg = c.git.add, bg = c.diff.add },

    -- GitGutter
    GitGutterAdd = { fg = c.gitSigns.add }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = c.gitSigns.change }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = c.gitSigns.delete }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd = { fg = c.gitSigns.add }, -- diff mode: Added line |diff.txt|
    GitSignsChange = { fg = c.gitSigns.change }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete = { fg = c.gitSigns.delete }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopeBorder = { fg = c.border_highlight, bg = c.bg_float },
    TelescopeNormal = { fg = c.fg, bg = c.bg_float },

    -- NvimTree
    NvimTreeNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeNormalNC = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeRootFolder = { fg = c.blue, style = "bold" },
    NvimTreeGitDirty = { fg = c.git.change },
    NvimTreeGitNew = { fg = c.git.add },
    NvimTreeGitDeleted = { fg = c.git.delete },
    NvimTreeSpecialFile = { fg = c.purple, style = "underline" },
    NvimTreeIndentMarker = { fg = c.fg_gutter },
    NvimTreeImageFile = { fg = c.fg_sidebar },
    NvimTreeSymlink = { fg = c.blue },
    -- NvimTreeFolderName= { fg = c.fg_float },

    -- Fern
    FernBranchText = { fg = c.blue },

    -- glyph palette
    GlyphPalette1 = { fg = c.red1 },
    GlyphPalette2 = { fg = c.green },
    GlyphPalette3 = { fg = c.yellow },
    GlyphPalette4 = { fg = c.blue },
    GlyphPalette6 = { fg = c.green1 },
    GlyphPalette7 = { fg = c.fg },
    GlyphPalette9 = { fg = c.red },

    -- Dashboard
    DashboardShortCut = { fg = c.cyan },
    DashboardHeader = { fg = c.blue },
    DashboardCenter = { fg = c.magenta },
    DashboardFooter = { fg = c.yellow, style = "italic" },

    -- WhichKey
    WhichKey = { fg = c.cyan },
    WhichKeyGroup = { fg = c.blue },
    WhichKeyDesc = { fg = c.magenta },
    WhichKeySeperator = { fg = c.comment },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyFloat = { bg = c.bg_sidebar },
    WhichKeyValue = { fg = c.dark5 },

    -- LspSaga
    DiagnosticWarning = { link = "DiagnosticWarn" },
    DiagnosticInformation = { link = "DiagnosticInfo" },

    LspFloatWinNormal = { bg = c.bg_float },
    LspFloatWinBorder = { fg = c.border_highlight },
    LspSagaBorderTitle = { fg = c.cyan },
    LspSagaHoverBorder = { fg = c.blue },
    LspSagaRenameBorder = { fg = c.green },
    LspSagaDefPreviewBorder = { fg = c.green },
    LspSagaCodeActionBorder = { fg = c.blue },
    LspSagaFinderSelection = { fg = c.bg_visual },
    LspSagaCodeActionTitle = { fg = c.blue1 },
    LspSagaCodeActionContent = { fg = c.purple },
    LspSagaSignatureHelpBorder = { fg = c.red },
    ReferencesCount = { fg = c.purple },
    DefinitionCount = { fg = c.purple },
    DefinitionIcon = { fg = c.blue },
    ReferencesIcon = { fg = c.blue },
    TargetWord = { fg = c.cyan },

    -- NeoVim
    healthError = { fg = c.error },
    healthSuccess = { fg = c.green1 },
    healthWarning = { fg = c.warning },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = c.git.change },
    BufferLineFill = { bg = c.black },

    -- Barbar
    BufferCurrent = { bg = c.fg_gutter, fg = c.fg },
    BufferCurrentIndex = { bg = c.fg_gutter, fg = c.info },
    BufferCurrentMod = { bg = c.fg_gutter, fg = c.warning },
    BufferCurrentSign = { bg = c.fg_gutter, fg = c.info },
    BufferCurrentTarget = { bg = c.fg_gutter, fg = c.red },
    BufferVisible = { bg = c.bg_statusline, fg = c.fg },
    BufferVisibleIndex = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleMod = { bg = c.bg_statusline, fg = c.warning },
    BufferVisibleSign = { bg = c.bg_statusline, fg = c.info },
    BufferVisibleTarget = { bg = c.bg_statusline, fg = c.red },
    BufferInactive = { bg = c.bg_statusline, fg = c.dark5 },
    BufferInactiveIndex = { bg = c.bg_statusline, fg = c.dark5 },
    BufferInactiveMod = { bg = c.bg_statusline, fg = util.darken(c.warning, 0.7) },
    BufferInactiveSign = { bg = c.bg_statusline, fg = c.border_highlight },
    BufferInactiveTarget = { bg = c.bg_statusline, fg = c.red },
    BufferTabpages = { bg = c.bg_statusline, fg = c.none },
    BufferTabpage = { bg = c.bg_statusline, fg = c.border_highlight },

    -- Sneak
    Sneak = { fg = c.bg_highlight, bg = c.magenta },
    SneakScope = { bg = c.bg_visual },

    -- Hop
    HopNextKey = { fg = c.magenta2, style = "bold" },
    HopNextKey1 = { fg = c.blue2, style = "bold" },
    HopNextKey2 = { fg = util.darken(c.blue2, 0.3) },
    HopUnmatched = { fg = c.dark3 },

    LightspeedGreyWash = { fg = c.dark3 },
    -- LightspeedCursor = { link = "Cursor" },
    LightspeedLabel = { fg = c.magenta2, style = "bold,underline" },
    LightspeedLabelDistant = { fg = c.green1, style = "bold,underline" },
    LightspeedLabelDistantOverlapped = { fg = c.green2, style = "underline" },
    LightspeedLabelOverlapped = { fg = c.magenta2, style = "underline" },
    LightspeedMaskedChar = { fg = c.orange },
    LightspeedOneCharMatch = { bg = c.magenta2, fg = c.fg, style = "bold" },
    LightspeedPendingOpArea = { bg = c.magenta2, fg = c.fg },
    LightspeedShortcut = { bg = c.magenta2, fg = c.fg, style = "bold,underline" },
    -- LightspeedShortcutOverlapped = { link = "LightspeedShortcut" },
    -- LightspeedUniqueChar = { link = "LightspeedUnlabeledMatch" },
    LightspeedUnlabeledMatch = { fg = c.blue2, style = "bold" },

    -- Cmp
    CmpDocumentation = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },

    CmpItemAbbr = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated = { fg = c.fg_gutter, bg = c.none, style = "strikethrough" },
    CmpItemAbbrMatch = { fg = c.blue1, bg = c.none },
    CmpItemAbbrMatchFuzzy = { fg = c.blue1, bg = c.none },

    CmpItemKindDefault = { fg = c.fg_dark, bg = c.none },
    CmpItemMenu = { fg = c.comment, bg = c.none },

    CmpItemKindKeyword = { fg = c.cyan, bg = c.none },

    CmpItemKindVariable = { fg = c.magenta, bg = c.none },
    CmpItemKindConstant = { fg = c.magenta, bg = c.none },
    CmpItemKindReference = { fg = c.magenta, bg = c.none },
    CmpItemKindValue = { fg = c.magenta, bg = c.none },

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

    CmpItemKindProperty = { fg = c.green1, bg = c.none },
    CmpItemKindField = { fg = c.green1, bg = c.none },
    CmpItemKindTypeParameter = { fg = c.green1, bg = c.none },
    CmpItemKindEnumMember = { fg = c.green1, bg = c.none },
    CmpItemKindOperator = { fg = c.green1, bg = c.none },
    CmpItemKindSnippet = { fg = c.dark5, bg = c.none },
  }

  theme.defer = {}

  if config.hideInactiveStatusline then
    local inactive = { style = "underline", bg = c.bg, fg = c.bg, sp = c.border }

    -- StatusLineNC
    theme.base.StatusLineNC = inactive

    -- LuaLine
    for _, section in ipairs({ "a", "b", "c" }) do
      theme.defer["lualine_" .. section .. "_inactive"] = inactive
    end
  end

  return theme
end

return M
