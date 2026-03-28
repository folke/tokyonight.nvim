local function color_string(hex, alpha)
  alpha = alpha or 1.0
  hex = hex:gsub("#", "")
  local rgb = {
    r = tonumber("0x" .. hex:sub(1, 2)) / 255,
    g = tonumber("0x" .. hex:sub(3, 4)) / 255,
    b = tonumber("0x" .. hex:sub(5, 6)) / 255,
  }
  return string.format("%.6f %.6f %.6f %.6f", rgb.r, rgb.g, rgb.b, alpha)
end

local M = {}

-- Default font configuration
-- You can modify these to customize the fonts used in Xcode
M.config = {
  fonts = {
    regular = "SFMono-Regular",
    bold = "SFMono-Bold",
    italic = "SFMono-Italic",
    bold_italic = "SFMono-BoldItalic",
    system_ui = ".AppleSystemUIFont",
    system_ui_italic = ".AppleSystemUIFontItalic",
    system_ui_bold = ".AppleSystemUIFontBold",
  },
  sizes = {
    editor = 11.0,
    console = 11.0,
    markup_code = 11.0,
    markup_text = 11.0,
    markup_heading_primary = 24.0,
    markup_heading_secondary = 18.0,
    markup_heading_other = 14.0,
  },
}

function M.generate(colors, _, opts)
  local config = M.config

  -- Allow overriding font configuration through opts
  if opts and opts.xcode then
    if opts.xcode.fonts then
      config.fonts = vim.tbl_deep_extend("force", config.fonts, opts.xcode.fonts)
    end
    if opts.xcode.sizes then
      config.sizes = vim.tbl_deep_extend("force", config.sizes, opts.xcode.sizes)
    end
  end

  -- Helper function to format font string
  local function font(family, size)
    return string.format("%s - %.1f", family, size)
  end

  local xcode_theme = string.format(
    [[<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>DVTConsoleDebuggerInputTextColor</key>
	<string>%s</string>
	<key>DVTConsoleDebuggerInputTextFont</key>
	<string>%s</string>
	<key>DVTConsoleDebuggerOutputTextColor</key>
	<string>%s</string>
	<key>DVTConsoleDebuggerOutputTextFont</key>
	<string>%s</string>
	<key>DVTConsoleDebuggerPromptTextColor</key>
	<string>%s</string>
	<key>DVTConsoleDebuggerPromptTextFont</key>
	<string>%s</string>
	<key>DVTConsoleExectuableInputTextColor</key>
	<string>%s</string>
	<key>DVTConsoleExectuableInputTextFont</key>
	<string>%s</string>
	<key>DVTConsoleExectuableOutputTextColor</key>
	<string>%s</string>
	<key>DVTConsoleExectuableOutputTextFont</key>
	<string>%s</string>
	<key>DVTConsoleTextBackgroundColor</key>
	<string>%s</string>
	<key>DVTConsoleTextInsertionPointColor</key>
	<string>%s</string>
	<key>DVTConsoleTextSelectionColor</key>
	<string>%s</string>
	<key>DVTDebuggerInstructionPointerColor</key>
	<string>%s</string>
	<key>DVTFontAndColorVersion</key>
	<integer>1</integer>
	<key>DVTLineSpacing</key>
	<real>1.1000000238418579</real>
	<key>DVTMarkupTextBackgroundColor</key>
	<string>%s</string>
	<key>DVTMarkupTextBorderColor</key>
	<string>%s</string>
	<key>DVTMarkupTextCodeFont</key>
	<string>%s</string>
	<key>DVTMarkupTextEmphasisColor</key>
	<string>%s</string>
	<key>DVTMarkupTextEmphasisFont</key>
	<string>%s</string>
	<key>DVTMarkupTextInlineCodeColor</key>
	<string>%s</string>
	<key>DVTMarkupTextLinkColor</key>
	<string>%s</string>
	<key>DVTMarkupTextLinkFont</key>
	<string>%s</string>
	<key>DVTMarkupTextNormalColor</key>
	<string>%s</string>
	<key>DVTMarkupTextNormalFont</key>
	<string>%s</string>
	<key>DVTMarkupTextOtherHeadingColor</key>
	<string>%s</string>
	<key>DVTMarkupTextOtherHeadingFont</key>
	<string>%s</string>
	<key>DVTMarkupTextPrimaryHeadingColor</key>
	<string>%s</string>
	<key>DVTMarkupTextPrimaryHeadingFont</key>
	<string>%s</string>
	<key>DVTMarkupTextSecondaryHeadingColor</key>
	<string>%s</string>
	<key>DVTMarkupTextSecondaryHeadingFont</key>
	<string>%s</string>
	<key>DVTMarkupTextStrongColor</key>
	<string>%s</string>
	<key>DVTMarkupTextStrongFont</key>
	<string>%s</string>
	<key>DVTScrollbarMarkerAnalyzerColor</key>
	<string>%s</string>
	<key>DVTScrollbarMarkerBreakpointColor</key>
	<string>%s</string>
	<key>DVTScrollbarMarkerDiffColor</key>
	<string>%s</string>
	<key>DVTScrollbarMarkerDiffConflictColor</key>
	<string>%s</string>
	<key>DVTScrollbarMarkerErrorColor</key>
	<string>%s</string>
	<key>DVTScrollbarMarkerRuntimeIssueColor</key>
	<string>%s</string>
	<key>DVTScrollbarMarkerWarningColor</key>
	<string>%s</string>
	<key>DVTSourceTextBackground</key>
	<string>%s</string>
	<key>DVTSourceTextBlockDimBackgroundColor</key>
	<string>%s</string>
	<key>DVTSourceTextCurrentLineHighlightColor</key>
	<string>%s</string>
	<key>DVTSourceTextInsertionPointColor</key>
	<string>%s</string>
	<key>DVTSourceTextInvisiblesColor</key>
	<string>%s</string>
	<key>DVTSourceTextSelectionColor</key>
	<string>%s</string>
	<key>DVTSourceTextSyntaxColors</key>
	<dict>
		<key>xcode.syntax.attribute</key>
		<string>%s</string>
		<key>xcode.syntax.character</key>
		<string>%s</string>
		<key>xcode.syntax.comment</key>
		<string>%s</string>
		<key>xcode.syntax.comment.doc</key>
		<string>%s</string>
		<key>xcode.syntax.comment.doc.keyword</key>
		<string>%s</string>
		<key>xcode.syntax.declaration.other</key>
		<string>%s</string>
		<key>xcode.syntax.declaration.type</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.class</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.class.system</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.constant</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.constant.system</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.function</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.function.system</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.macro</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.macro.system</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.type</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.type.system</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.variable</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.variable.system</key>
		<string>%s</string>
		<key>xcode.syntax.keyword</key>
		<string>%s</string>
		<key>xcode.syntax.mark</key>
		<string>%s</string>
		<key>xcode.syntax.markup.code</key>
		<string>%s</string>
		<key>xcode.syntax.number</key>
		<string>%s</string>
		<key>xcode.syntax.plain</key>
		<string>%s</string>
		<key>xcode.syntax.preprocessor</key>
		<string>%s</string>
		<key>xcode.syntax.string</key>
		<string>%s</string>
		<key>xcode.syntax.url</key>
		<string>%s</string>
	</dict>
	<key>DVTSourceTextSyntaxFonts</key>
	<dict>
		<key>xcode.syntax.attribute</key>
		<string>%s</string>
		<key>xcode.syntax.character</key>
		<string>%s</string>
		<key>xcode.syntax.comment</key>
		<string>%s</string>
		<key>xcode.syntax.comment.doc</key>
		<string>%s</string>
		<key>xcode.syntax.comment.doc.keyword</key>
		<string>%s</string>
		<key>xcode.syntax.declaration.other</key>
		<string>%s</string>
		<key>xcode.syntax.declaration.type</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.class</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.class.system</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.constant</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.constant.system</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.function</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.function.system</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.macro</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.macro.system</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.type</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.type.system</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.variable</key>
		<string>%s</string>
		<key>xcode.syntax.identifier.variable.system</key>
		<string>%s</string>
		<key>xcode.syntax.keyword</key>
		<string>%s</string>
		<key>xcode.syntax.mark</key>
		<string>%s</string>
		<key>xcode.syntax.markup.code</key>
		<string>%s</string>
		<key>xcode.syntax.number</key>
		<string>%s</string>
		<key>xcode.syntax.plain</key>
		<string>%s</string>
		<key>xcode.syntax.preprocessor</key>
		<string>%s</string>
		<key>xcode.syntax.string</key>
		<string>%s</string>
		<key>xcode.syntax.url</key>
		<string>%s</string>
	</dict>
</dict>
</plist>]],
    -- Console colors
    color_string(colors.fg), -- DVTConsoleDebuggerInputTextColor
    font(config.fonts.bold, config.sizes.console), -- DVTConsoleDebuggerInputTextFont
    color_string(colors.fg), -- DVTConsoleDebuggerOutputTextColor
    font(config.fonts.regular, config.sizes.console), -- DVTConsoleDebuggerOutputTextFont
    color_string(colors.green), -- DVTConsoleDebuggerPromptTextColor
    font(config.fonts.bold, config.sizes.console), -- DVTConsoleDebuggerPromptTextFont
    color_string(colors.fg), -- DVTConsoleExectuableInputTextColor
    font(config.fonts.regular, config.sizes.console), -- DVTConsoleExectuableInputTextFont
    color_string(colors.fg), -- DVTConsoleExectuableOutputTextColor
    font(config.fonts.bold, config.sizes.console), -- DVTConsoleExectuableOutputTextFont
    color_string(colors.bg), -- DVTConsoleTextBackgroundColor
    color_string(colors.fg), -- DVTConsoleTextInsertionPointColor
    color_string(colors.bg_visual), -- DVTConsoleTextSelectionColor
    color_string(colors.yellow), -- DVTDebuggerInstructionPointerColor
    -- Markup colors
    color_string(colors.bg_dark), -- DVTMarkupTextBackgroundColor
    color_string(colors.border), -- DVTMarkupTextBorderColor
    font(config.fonts.regular, config.sizes.markup_code), -- DVTMarkupTextCodeFont
    color_string(colors.fg), -- DVTMarkupTextEmphasisColor
    font(config.fonts.system_ui_italic, config.sizes.markup_text), -- DVTMarkupTextEmphasisFont
    color_string(colors.fg, 0.7), -- DVTMarkupTextInlineCodeColor
    color_string(colors.blue), -- DVTMarkupTextLinkColor
    font(config.fonts.system_ui, config.sizes.markup_text), -- DVTMarkupTextLinkFont
    color_string(colors.fg), -- DVTMarkupTextNormalColor
    font(config.fonts.system_ui, config.sizes.markup_text), -- DVTMarkupTextNormalFont
    color_string(colors.blue), -- DVTMarkupTextOtherHeadingColor
    font(config.fonts.system_ui, config.sizes.markup_heading_other), -- DVTMarkupTextOtherHeadingFont
    color_string(colors.blue), -- DVTMarkupTextPrimaryHeadingColor
    font(config.fonts.system_ui, config.sizes.markup_heading_primary), -- DVTMarkupTextPrimaryHeadingFont
    color_string(colors.blue), -- DVTMarkupTextSecondaryHeadingColor
    font(config.fonts.system_ui, config.sizes.markup_heading_secondary), -- DVTMarkupTextSecondaryHeadingFont
    color_string(colors.fg), -- DVTMarkupTextStrongColor
    font(config.fonts.system_ui_bold, config.sizes.markup_text), -- DVTMarkupTextStrongFont
    -- Scrollbar markers
    color_string(colors.purple), -- DVTScrollbarMarkerAnalyzerColor
    color_string(colors.blue), -- DVTScrollbarMarkerBreakpointColor
    color_string(colors.git.change), -- DVTScrollbarMarkerDiffColor
    color_string(colors.red), -- DVTScrollbarMarkerDiffConflictColor
    color_string(colors.error), -- DVTScrollbarMarkerErrorColor
    color_string(colors.magenta), -- DVTScrollbarMarkerRuntimeIssueColor
    color_string(colors.warning), -- DVTScrollbarMarkerWarningColor
    -- Source editor colors
    color_string(colors.bg), -- DVTSourceTextBackground
    color_string(colors.bg_dark), -- DVTSourceTextBlockDimBackgroundColor
    color_string(colors.bg_highlight), -- DVTSourceTextCurrentLineHighlightColor
    color_string(colors.fg), -- DVTSourceTextInsertionPointColor
    color_string(colors.dark3), -- DVTSourceTextInvisiblesColor
    color_string(colors.bg_visual), -- DVTSourceTextSelectionColor
    -- Syntax colors
    color_string(colors.blue1), -- xcode.syntax.attribute
    color_string(colors.green), -- xcode.syntax.character
    color_string(colors.comment), -- xcode.syntax.comment
    color_string(colors.comment), -- xcode.syntax.comment.doc
    color_string(colors.purple), -- xcode.syntax.comment.doc.keyword
    color_string(colors.purple), -- xcode.syntax.declaration.other
    color_string(colors.cyan), -- xcode.syntax.declaration.type
    color_string(colors.yellow), -- xcode.syntax.identifier.class
    color_string(colors.cyan), -- xcode.syntax.identifier.class.system
    color_string(colors.orange), -- xcode.syntax.identifier.constant
    color_string(colors.magenta), -- xcode.syntax.identifier.constant.system
    color_string(colors.blue), -- xcode.syntax.identifier.function
    color_string(colors.blue1), -- xcode.syntax.identifier.function.system
    color_string(colors.red), -- xcode.syntax.identifier.macro
    color_string(colors.red), -- xcode.syntax.identifier.macro.system
    color_string(colors.cyan), -- xcode.syntax.identifier.type
    color_string(colors.cyan), -- xcode.syntax.identifier.type.system
    color_string(colors.fg), -- xcode.syntax.identifier.variable
    color_string(colors.blue2), -- xcode.syntax.identifier.variable.system
    color_string(colors.purple), -- xcode.syntax.keyword
    color_string(colors.purple), -- xcode.syntax.mark
    color_string(colors.orange), -- xcode.syntax.markup.code
    color_string(colors.orange), -- xcode.syntax.number
    color_string(colors.fg), -- xcode.syntax.plain
    color_string(colors.red), -- xcode.syntax.preprocessor
    color_string(colors.green), -- xcode.syntax.string
    color_string(colors.blue1), -- xcode.syntax.url
    -- Syntax fonts (all using editor font)
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.attribute
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.character
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.comment
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.comment.doc
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.comment.doc.keyword
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.declaration.other
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.declaration.type
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.identifier.class
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.identifier.class.system
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.identifier.constant
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.identifier.constant.system
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.identifier.function
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.identifier.function.system
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.identifier.macro
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.identifier.macro.system
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.identifier.type
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.identifier.type.system
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.identifier.variable
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.identifier.variable.system
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.keyword
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.mark
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.markup.code
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.number
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.plain
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.preprocessor
    font(config.fonts.regular, config.sizes.editor), -- xcode.syntax.string
    font(config.fonts.regular, config.sizes.editor) -- xcode.syntax.url
  )
  return xcode_theme
end

return M
