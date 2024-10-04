local Util = require("tokyonight.util")

local M = {}

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    Foo                         = { bg = c.magenta2, fg = c.fg },

    Comment                     = { fg = c.comment, style = opts.styles.comments }, -- any comment
    ColorColumn                 = { bg = c.black }, -- used for the columns set with 'colorcolumn'
    Conceal                     = { fg = c.dark5 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor                      = { fg = c.bg, bg = c.fg }, -- character under the cursor
    lCursor                     = { fg = c.bg, bg = c.fg }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM                    = { fg = c.bg, bg = c.fg }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn                = { bg = c.bg_highlight }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine                  = { bg = c.bg_highlight }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory                   = { fg = c.blue }, -- directory names (and other special names in listings)
    DiffAdd                     = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange                  = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete                  = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText                    = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer                 = { fg = c.bg }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg                    = { fg = c.error }, -- error messages on the command line
    VertSplit                   = { fg = c.border }, -- the column separating vertically split windows
    WinSeparator                = { fg = c.border, bold = true }, -- the column separating vertically split windows
    Folded                      = { fg = c.blue, bg = c.fg_gutter }, -- line used for closed folds
    FoldColumn                  = { bg = opts.transparent and c.none or c.bg, fg = c.comment }, -- 'foldcolumn'
    SignColumn                  = { bg = opts.transparent and c.none or c.bg, fg = c.fg_gutter }, -- column where |signs| are displayed
    SignColumnSB                = { bg = c.bg_sidebar, fg = c.fg_gutter }, -- column where |signs| are displayed
    Substitute                  = { bg = c.red, fg = c.black }, -- |:substitute| replacement text highlighting
    LineNr                      = { fg = c.fg_gutter }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr                = { fg = c.orange, bold = true }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    LineNrAbove                 = { fg = c.fg_gutter },
    LineNrBelow                 = { fg = c.fg_gutter },
    MatchParen                  = { fg = c.orange, bold = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg                     = { fg = c.fg_dark, bold = true }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea                     = { fg = c.fg_dark }, -- Area for messages and cmdline
    MoreMsg                     = { fg = c.blue }, -- |more-prompt|
    NonText                     = { fg = c.dark3 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal                      = { fg = c.fg, bg = opts.transparent and c.none or c.bg }, -- normal text
    NormalNC                    = { fg = c.fg, bg = opts.transparent and c.none or opts.dim_inactive and c.bg_dark or c.bg }, -- normal text in non-current windows
    NormalSB                    = { fg = c.fg_sidebar, bg = c.bg_sidebar }, -- normal text in sidebar
    NormalFloat                 = { fg = c.fg_float, bg = c.bg_float }, -- Normal text in floating windows.
    FloatBorder                 = { fg = c.border_highlight, bg = c.bg_float },
    FloatTitle                  = { fg = c.border_highlight, bg = c.bg_float },
    Pmenu                       = { bg = c.bg_popup, fg = c.fg }, -- Popup menu: normal item.
    PmenuMatch                  = { bg = c.bg_popup, fg = c.blue1 }, -- Popup menu: Matched text in normal item.
    PmenuSel                    = { bg = Util.blend_bg(c.fg_gutter, 0.8) }, -- Popup menu: selected item.
    PmenuMatchSel               = { bg = Util.blend_bg(c.fg_gutter, 0.8), fg = c.blue1 }, -- Popup menu: Matched text in selected item.
    PmenuSbar                   = { bg = Util.blend_fg(c.bg_popup, 0.95) }, -- Popup menu: scrollbar.
    PmenuThumb                  = { bg = c.fg_gutter }, -- Popup menu: Thumb of the scrollbar.
    Question                    = { fg = c.blue }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine                = { bg = c.bg_visual, bold = true }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search                      = { bg = c.bg_search, fg = c.fg }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch                   = { bg = c.orange, fg = c.black }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch                   =  "IncSearch",
    SpecialKey                  = { fg = c.dark3 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad                    = { sp = c.error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap                    = { sp = c.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal                  = { sp = c.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare                   = { sp = c.hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine                  = { fg = c.fg_sidebar, bg = c.bg_statusline }, -- status line of current window
    StatusLineNC                = { fg = c.fg_gutter, bg = c.bg_statusline }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine                     = { bg = c.bg_statusline, fg = c.fg_gutter }, -- tab pages line, not active tab page label
    TabLineFill                 = { bg = c.black }, -- tab pages line, where there are no labels
    TabLineSel                  = { fg = c.black, bg = c.blue }, -- tab pages line, active tab page label
    Title                       = { fg = c.blue, bold = true }, -- titles for output from ":set all", ":autocmd" etc.
    Visual                      = { bg = c.bg_visual }, -- Visual mode selection
    VisualNOS                   = { bg = c.bg_visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg                  = { fg = c.warning }, -- warning messages
    Whitespace                  = { fg = c.fg_gutter }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu                    = { bg = c.bg_visual }, -- current match in 'wildmenu' completion
    WinBar                      = "StatusLine" , -- window bar
    WinBarNC                    = "StatusLineNC", -- window bar in inactive windows

    Bold                        = { bold = true, fg = c.fg }, -- (preferred) any bold text
    Character                   = { fg = c.green }, --  a character constant: 'c', '\n'
    Constant                    = { fg = c.orange }, -- (preferred) any constant
    Debug                       = { fg = c.orange }, --    debugging statements
    Delimiter                   =  "Special", --  character that needs attention
    Error                       = { fg = c.error }, -- (preferred) any erroneous construct
    Function                    = { fg = c.blue, style = opts.styles.functions }, -- function name (also: methods for classes)
    Identifier                  = { fg = c.magenta, style = opts.styles.variables }, -- (preferred) any variable name
    Italic                      = { italic = true, fg = c.fg }, -- (preferred) any italic text
    Keyword                     = { fg = c.cyan, style = opts.styles.keywords }, --  any other keyword
    Operator                    = { fg = c.blue5 }, -- "sizeof", "+", "*", etc.
    PreProc                     = { fg = c.cyan }, -- (preferred) generic Preprocessor
    Special                     = { fg = c.blue1 }, -- (preferred) any special symbol
    Statement                   = { fg = c.magenta }, -- (preferred) any statement
    String                      = { fg = c.green }, --   a string constant: "this is a string"
    Todo                        = { bg = c.yellow, fg = c.bg }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Type                        = { fg = c.blue1 }, -- (preferred) int, long, char, etc.
    Underlined                  = { underline = true }, -- (preferred) text that stands out, HTML links
    debugBreakpoint             = { bg = Util.blend_bg(c.info, 0.1), fg = c.info }, -- used for breakpoint colors in terminal-debug
    debugPC                     = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
    dosIniLabel                 = "@property",
    helpCommand                 = { bg = c.terminal_black, fg = c.blue },
    htmlH1                      = { fg = c.magenta, bold = true },
    htmlH2                      = { fg = c.blue, bold = true },
    qfFileName                  = { fg = c.blue },
    qfLineNr                    = { fg = c.dark5 },

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own.
    LspReferenceText            = { bg = c.fg_gutter }, -- used for highlighting "text" references
    LspReferenceRead            = { bg = c.fg_gutter }, -- used for highlighting "read" references
    LspReferenceWrite           = { bg = c.fg_gutter }, -- used for highlighting "write" references
    LspSignatureActiveParameter = { bg = Util.blend_bg(c.bg_visual, 0.4), bold = true },
    LspCodeLens                 = { fg = c.comment },
    LspInlayHint                = { bg = Util.blend_bg(c.blue7, 0.1), fg = c.dark3 },
    LspInfoBorder               = { fg = c.border_highlight, bg = c.bg_float },

    -- diagnostics
    DiagnosticError             = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn              = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo              = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint              = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticUnnecessary       = { fg = c.terminal_black }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticVirtualTextError  = { bg = Util.blend_bg(c.error, 0.1), fg = c.error }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn   = { bg = Util.blend_bg(c.warning, 0.1), fg = c.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo   = { bg = Util.blend_bg(c.info, 0.1), fg = c.info }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint   = { bg = Util.blend_bg(c.hint, 0.1), fg = c.hint }, -- Used for "Hint" diagnostic virtual text
    DiagnosticUnderlineError    = { undercurl = true, sp = c.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn     = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo     = { undercurl = true, sp = c.info }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint     = { undercurl = true, sp = c.hint }, -- Used to underline "Hint" diagnostics

    -- Health
    healthError                 = { fg = c.error },
    healthSuccess               = { fg = c.green1 },
    healthWarning               = { fg = c.warning },

    -- diff (not needed anymore?)
    diffAdded                   = { fg = c.git.add },
    diffRemoved                 = { fg = c.git.delete },
    diffChanged                 = { fg = c.git.change },
    diffOldFile                 = { fg = c.yellow },
    diffNewFile                 = { fg = c.orange },
    diffFile                    = { fg = c.blue },
    diffLine                    = { fg = c.comment },
    diffIndexLine               = { fg = c.magenta },
    helpExample                 = { fg = c.comment },
  }
end

return M
