local util = require("tokyonight.util")
local c = require("tokyonight.colors")

---@class Theme
local theme = {}
theme.colors = c

theme.base = {
  Comment = { fg = c.dark4, style = "italic" }, -- any comment
  -- ColorColumn = { }, -- used for the columns set with 'colorcolumn'
  -- Conceal     = { }, -- placeholder characters substituted for concealed text (see 'conceallevel')
  -- Cursor      = { }, -- character under the cursor
  -- lCursor     = { }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
  -- CursorIM    = { }, -- like Cursor, but used when in IME mode |CursorIM|
  -- CursorColumn= { }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
  CursorLine = { bg = c.dark1 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
  -- Directory   = { }, -- directory names (and other special names in listings)
  DiffAdd = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
  DiffChange = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
  DiffDelete = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
  DiffText = { bg = c.red4 }, -- diff mode: Changed text within a changed line |diff.txt|
  EndOfBuffer = { fg = c.dark2 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
  -- TermCursor  = { }, -- cursor in a focused terminal
  -- TermCursorNC= { }, -- cursor in an unfocused terminal
  ErrorMsg = { fg = c.red1 }, -- error messages on the command line
  VertSplit = { fg = c.black }, -- the column separating vertically split windows
  -- Folded      = { }, -- line used for closed folds
  -- FoldColumn  = { }, -- 'foldcolumn'
  SignColumn = { bg = c.bg }, -- column where |signs| are displayed
  IncSearch = { bg = util.darken(c.blue0, 34) }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
  -- Substitute  = { }, -- |:substitute| replacement text highlighting
  LineNr = { fg = c.dark2 }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
  CursorLineNr = { fg = c.dark5 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
  -- MatchParen  = { }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
  -- ModeMsg     = { }, -- 'showmode' message (e.g., "-- INSERT -- ")
  -- MsgArea     = { }, -- Area for messages and cmdline
  -- MsgSeparator= { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
  -- MoreMsg     = { }, -- |more-prompt|
  NonText = { fg = c.dark3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
  Normal = { fg = c.light0, bg = c.bg }, -- normal text
  NormalFloat = { fg = c.fg_float }, -- Normal text in floating windows.
  -- NormalNC    = { }, -- normal text in non-current windows
  Pmenu = { bg = c.dark1, fg = c.fg }, -- Popup menu: normal item.
  PmenuSel = { bg = util.darken(c.dark2, 20) }, -- Popup menu: selected item.
  PmenuSbar = { bg = util.lighten(c.dark1, 5) }, -- Popup menu: scrollbar.
  PmenuThumb = { bg = c.dark2 }, -- Popup menu: Thumb of the scrollbar.
  -- Question    = { }, -- |hit-enter| prompt and yes/no questions
  -- QuickFixLine= { }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
  Search = { bg = util.darken(c.blue0, 34) }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
  -- SpecialKey  = { }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
  SpellBad = { sp = c.red1 }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
  -- SpellCap    = { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
  -- SpellLocal  = { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
  -- SpellRare   = { }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
  StatusLine = { fg = c.black }, -- status line of current window
  StatusLineNC = { fg = c.black }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
  -- TabLine     = { }, -- tab pages line, not active tab page label
  -- TabLineFill = { }, -- tab pages line, where there are no labels
  -- TabLineSel  = { }, -- tab pages line, active tab page label
  Title = { bg = c.dark1, fg = c.dark4 }, -- titles for output from ":set all", ":autocmd" etc.
  Visual = { bg = util.darken(c.blue0, 34) }, -- Visual mode selection
  VisualNOS = { bg = util.darken(c.blue0, 34) }, -- Visual mode selection when vim is "Not Owning the Selection".
  WarningMsg = { fg = c.orange }, -- warning messages
  Whitespace = { fg = c.dark2 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
  -- WildMenu    = { }, -- current match in 'wildmenu' completion

  -- These groups are not listed as default vim groups,
  -- but they are defacto standard group names for syntax highlighting.
  -- commented out groups should chain up to their "preferred" group by
  -- default,
  -- Uncomment and edit if you want more specific syntax highlighting.

  Constant = { fg = c.orange }, -- (preferred) any constant
  String = { fg = c.green3 }, --   a string constant: "this is a string"
  Character = { fg = c.green3 }, --  a character constant: 'c', '\n'
  -- Number        = { }, --   a number constant: 234, 0xff
  -- Boolean       = { }, --  a boolean constant: TRUE, false
  -- Float         = { }, --    a floating point constant: 2.3e10

  Identifier = { fg = c.magenta }, -- (preferred) any variable name
  Function = { fg = c.blue }, -- function name (also: methods for classes)

  Statement = { fg = c.magenta }, -- (preferred) any statement
  -- Conditional   = { }, --  if, then, else, endif, switch, etc.
  -- Repeat        = { }, --   for, do, while, etc.
  -- Label         = { }, --    case, default, etc.
  Operator = { fg = c.blue5 }, -- "sizeof", "+", "*", etc.
  Keyword = { fg = c.cyan }, --  any other keyword
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
  -- Ignore        = { }, -- (preferred) left blank, hidden  |hl-Ignore|

  Error = { bg = c.red }, -- (preferred) any erroneous construct

  Todo = { bg = c.teal }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

  -- These groups are for the native LSP client. Some other LSP clients may
  -- use these groups, or use their own. Consult your LSP client's
  -- documentation.
}

theme.plugins = {
  LspReferenceText = { bg = c.dark2 }, -- used for highlighting "text" references
  LspReferenceRead = { bg = c.dark2 }, -- used for highlighting "read" references
  LspReferenceWrite = { bg = c.dark2 }, -- used for highlighting "write" references

  LspDiagnosticsDefaultError = { fg = c.red1 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  LspDiagnosticsDefaultWarning = { fg = c.yellow }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  LspDiagnosticsDefaultInformation = { fg = c.blue6 }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
  LspDiagnosticsDefaultHint = {}, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

  -- LspDiagnosticsVirtualTextError      = { }, -- Used for "Error" diagnostic virtual text
  -- LspDiagnosticsVirtualTextWarning    = { }, -- Used for "Warning" diagnostic virtual text
  -- LspDiagnosticsVirtualTextInformation= { }, -- Used for "Information" diagnostic virtual text
  -- LspDiagnosticsVirtualTextHint       = { }, -- Used for "Hint" diagnostic virtual text

  LspDiagnosticsUnderlineError = { style = "undercurl", sp = c.red1 }, -- Used to underline "Error" diagnostics
  LspDiagnosticsUnderlineWarning = { style = "undercurl", sp = c.yellow }, -- Used to underline "Warning" diagnostics
  LspDiagnosticsUnderlineInformation = { style = "undercurl", sp = c.blue6 }, -- Used to underline "Information" diagnostics
  LspDiagnosticsUnderlineHint = { style = "undercurl" }, -- Used to underline "Hint" diagnostics

  -- LspDiagnosticsFloatingError         = { }, -- Used to color "Error" diagnostic messages in diagnostics float
  -- LspDiagnosticsFloatingWarning       = { }, -- Used to color "Warning" diagnostic messages in diagnostics float
  -- LspDiagnosticsFloatingInformation   = { }, -- Used to color "Information" diagnostic messages in diagnostics float
  -- LspDiagnosticsFloatingHint          = { }, -- Used to color "Hint" diagnostic messages in diagnostics float

  -- LspDiagnosticsSignError             = { }, -- Used for "Error" signs in sign column
  -- LspDiagnosticsSignWarning           = { }, -- Used for "Warning" signs in sign column
  -- LspDiagnosticsSignInformation       = { }, -- Used for "Information" signs in sign column
  -- LspDiagnosticsSignHint              = { }, -- Used for "Hint" signs in sign column

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
  TSConstructor = { fg = c.magenta }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
  -- TSConditional       = { };    -- For keywords related to conditionnals.
  -- TSConstant          = { };    -- For constants
  -- TSConstBuiltin      = { };    -- For constant that are built in the language: `nil` in Lua.
  -- TSConstMacro        = { };    -- For constants that are defined by macros: `NULL` in C.
  -- TSError             = { };    -- For syntax/parser errors.
  -- TSException         = { };    -- For exception related keywords.
  TSField = { fg = c.green }, -- For fields.
  -- TSFloat             = { };    -- For floats.
  -- TSFunction          = { };    -- For function (calls and definitions).
  -- TSFuncBuiltin       = { };    -- For builtin functions: `table.insert` in Lua.
  -- TSFuncMacro         = { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
  -- TSInclude           = { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
  -- TSKeyword           = { };    -- For keywords that don't fall in previous categories.
  -- TSKeywordFunction   = { };    -- For keywords used to define a fuction.
  -- TSLabel             = { };    -- For labels: `label:` in C and `:label:` in Lua.
  -- TSMethod            = { };    -- For method calls and definitions.
  -- TSNamespace         = { };    -- For identifiers referring to modules and namespaces.
  -- TSNone              = { };    -- TODO: docs
  -- TSNumber            = { };    -- For all numbers
  TSOperator = { fg = c.blue5 }, -- For any operator: `+`, but also `->` and `*` in C.
  TSParameter = { fg = c.yellow }, -- For parameters of a function.
  -- TSParameterReference= { };    -- For references to parameters of a function.
  TSProperty = { fg = c.green }, -- Same as `TSField`.
  -- TSPunctDelimiter    = { };    -- For delimiters ie: `.`
  -- TSPunctBracket      = { };    -- For brackets and parens.
  -- TSPunctSpecial      = { };    -- For special punctutation that does not fall in the catagories before.
  -- TSRepeat            = { };    -- For keywords related to loops.
  -- TSString            = { };    -- For strings.
  -- TSStringRegex       = { };    -- For regexes.
  -- TSStringEscape      = { };    -- For escape characters within a string.
  -- TSSymbol            = { };    -- For identifiers referring to symbols or atoms.
  -- TSType              = { };    -- For types.
  -- TSTypeBuiltin       = { };    -- For builtin types.
  -- TSVariable          = { };    -- Any variable name that does not have another highlight.
  TSVariableBuiltin = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.

  -- TSTag               = { };    -- Tags like html tag names.
  -- TSTagDelimiter      = { };    -- Tag delimiter like `<` `>` `/`
  -- TSText              = { };    -- For strings considered text in a markup language.
  -- TSEmphasis          = { };    -- For text to be represented with emphasis.
  -- TSUnderline         = { };    -- For text to be represented with an underline.
  -- TSStrike            = { };    -- For strikethrough text.
  -- TSTitle             = { };    -- Text that is part of a title.
  -- TSLiteral           = { };    -- Literal text.
  -- TSURI               = { };    -- Any URI like a link or email.

  -- GitGutter, GitSigns
  GitGutterAdd = { fg = c.diff.add }, -- diff mode: Added line |diff.txt|
  GitGutterChange = { fg = c.diff.change }, -- diff mode: Changed line |diff.txt|
  GitGutterDelete = { fg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|

  GitSignsAdd = { fg = c.diff.add }, -- diff mode: Added line |diff.txt|
  GitSignsChange = { fg = c.diff.change }, -- diff mode: Changed line |diff.txt|
  GitSignsDelete = { fg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|

  -- Telescope
  TelescopeBorder = { fg = c.blue0 },

  -- NvimTree
  NvimTreeNormal = { fg = c.sidebar_fg, bg = c.sidebar_bg },
  -- NvimTreeFolderName= { fg = c.fg_float },
  NvimTreeFolderIcon = { fg = c.cyan },
  NvimTreeRootFolder = { fg = c.magenta },
}

return theme

-- vi:nowrap
