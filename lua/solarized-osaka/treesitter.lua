local M = {}

function M.new_style()
  ---@diagnostic disable-next-line: undefined-field
  return vim.treesitter.highlighter.hl_map == nil
end

function M.get(group)
  if group:sub(1, 1) ~= "@" or M.new_style() then
    return group
  end

  group = group:sub(2)

  local lang
  while group do
    if M.fallbacks[group] then
      return (lang or "") .. M.fallbacks[group]
    end
    group, lang = group:match("(.*)%.(.*)")
  end
end

-- taken from https://github.com/nvim-treesitter/nvim-treesitter/blob/master/lua/nvim-treesitter/highlight.lua
M.fallbacks = {
  ["annotation"] = "TSAnnotation",
  ["attribute"] = "TSAttribute",
  ["boolean"] = "TSBoolean",
  ["character"] = "TSCharacter",
  ["character.special"] = "TSCharacterSpecial",
  ["comment"] = "TSComment",
  ["conditional"] = "TSConditional",
  ["constant"] = "TSConstant",
  ["constant.builtin"] = "TSConstBuiltin",
  ["constant.macro"] = "TSConstMacro",
  ["constructor"] = "TSConstructor",
  ["debug"] = "TSDebug",
  ["define"] = "TSDefine",
  ["error"] = "TSError",
  ["exception"] = "TSException",
  ["field"] = "TSField",
  ["float"] = "TSFloat",
  ["function"] = "TSFunction",
  ["function.call"] = "TSFunctionCall",
  ["function.builtin"] = "TSFuncBuiltin",
  ["function.macro"] = "TSFuncMacro",
  ["include"] = "TSInclude",
  ["keyword"] = "TSKeyword",
  ["keyword.function"] = "TSKeywordFunction",
  ["keyword.operator"] = "TSKeywordOperator",
  ["keyword.return"] = "TSKeywordReturn",
  ["label"] = "TSLabel",
  ["method"] = "TSMethod",
  ["method.call"] = "TSMethodCall",
  ["namespace"] = "TSNamespace",
  ["none"] = "TSNone",
  ["number"] = "TSNumber",
  ["operator"] = "TSOperator",
  ["parameter"] = "TSParameter",
  ["parameter.reference"] = "TSParameterReference",
  ["preproc"] = "TSPreProc",
  ["property"] = "TSProperty",
  ["punctuation.delimiter"] = "TSPunctDelimiter",
  ["punctuation.bracket"] = "TSPunctBracket",
  ["punctuation.special"] = "TSPunctSpecial",
  ["repeat"] = "TSRepeat",
  ["storageclass"] = "TSStorageClass",
  ["string"] = "TSString",
  ["string.regex"] = "TSStringRegex",
  ["string.escape"] = "TSStringEscape",
  ["string.special"] = "TSStringSpecial",
  ["symbol"] = "TSSymbol",
  ["tag"] = "TSTag",
  ["tag.attribute"] = "TSTagAttribute",
  ["tag.delimiter"] = "TSTagDelimiter",
  ["text"] = "TSText",
  ["text.strong"] = "TSStrong",
  ["text.emphasis"] = "TSEmphasis",
  ["text.underline"] = "TSUnderline",
  ["text.strike"] = "TSStrike",
  ["text.title"] = "TSTitle",
  ["text.literal"] = "TSLiteral",
  ["text.uri"] = "TSURI",
  ["text.math"] = "TSMath",
  ["text.reference"] = "TSTextReference",
  ["text.environment"] = "TSEnvironment",
  ["text.environment.name"] = "TSEnvironmentName",
  ["text.note"] = "TSNote",
  ["text.warning"] = "TSWarning",
  ["text.danger"] = "TSDanger",
  ["text.todo"] = "TSTodo",
  ["type"] = "TSType",
  ["type.builtin"] = "TSTypeBuiltin",
  ["type.qualifier"] = "TSTypeQualifier",
  ["type.definition"] = "TSTypeDefinition",
  ["variable"] = "TSVariable",
  ["variable.builtin"] = "TSVariableBuiltin",
}

M.defaults = {
  ["@annotation"] = {
    default = true,
    link = "PreProc",
  },
  ["@attribute"] = {
    default = true,
    link = "PreProc",
  },
  ["@boolean"] = {
    default = true,
    link = "Boolean",
  },
  ["@character"] = {
    default = true,
    link = "Character",
  },
  ["@character.special"] = {
    default = true,
    link = "SpecialChar",
  },
  ["@comment"] = {
    default = true,
    link = "Comment",
  },
  ["@conditional"] = {
    default = true,
    link = "Conditional",
  },
  ["@constant"] = {
    default = true,
    link = "Constant",
  },
  ["@constant.builtin"] = {
    default = true,
    link = "Special",
  },
  ["@constant.macro"] = {
    default = true,
    link = "Define",
  },
  ["@constructor"] = {
    default = true,
    link = "Special",
  },
  ["@debug"] = {
    default = true,
    link = "Debug",
  },
  ["@define"] = {
    default = true,
    link = "Define",
  },
  ["@exception"] = {
    default = true,
    link = "Exception",
  },
  ["@field"] = {
    default = true,
    link = "Identifier",
  },
  ["@float"] = {
    default = true,
    link = "Float",
  },
  ["@function"] = {
    default = true,
    link = "Function",
  },
  ["@function.builtin"] = {
    default = true,
    link = "Special",
  },
  ["@function.call"] = {
    default = true,
    link = "@function",
  },
  ["@function.macro"] = {
    default = true,
    link = "Macro",
  },
  ["@include"] = {
    default = true,
    link = "Include",
  },
  ["@keyword"] = {
    default = true,
    link = "Keyword",
  },
  ["@keyword.coroutine"] = {
    default = true,
    link = "@keyword",
  },
  ["@keyword.function"] = {
    default = true,
    link = "Keyword",
  },
  ["@keyword.operator"] = {
    default = true,
    link = "@operator",
  },
  ["@keyword.return"] = {
    default = true,
    link = "@keyword",
  },
  ["@label"] = {
    default = true,
    link = "Label",
  },
  ["@method"] = {
    default = true,
    link = "Function",
  },
  ["@method.call"] = {
    default = true,
    link = "@method",
  },
  ["@namespace"] = {
    default = true,
    link = "Include",
  },
  ["@none"] = {
    default = true,
  },
  ["@number"] = {
    default = true,
    link = "Number",
  },
  ["@operator"] = {
    default = true,
    link = "Operator",
  },
  ["@parameter"] = {
    default = true,
    link = "Identifier",
  },
  ["@preproc"] = {
    default = true,
    link = "PreProc",
  },
  ["@property"] = {
    default = true,
    link = "Identifier",
  },
  ["@punctuation.bracket"] = {
    default = true,
    link = "Delimiter",
  },
  ["@punctuation.delimiter"] = {
    default = true,
    link = "Delimiter",
  },
  ["@punctuation.special"] = {
    default = true,
    link = "Delimiter",
  },
  ["@repeat"] = {
    default = true,
    link = "Repeat",
  },
  ["@storageclass"] = {
    default = true,
    link = "StorageClass",
  },
  ["@string"] = {
    default = true,
    link = "String",
  },
  ["@string.escape"] = {
    default = true,
    link = "SpecialChar",
  },
  ["@string.regex"] = {
    default = true,
    link = "String",
  },
  ["@string.special"] = {
    default = true,
    link = "SpecialChar",
  },
  ["@symbol"] = {
    default = true,
    link = "Identifier",
  },
  ["@tag"] = {
    default = true,
    link = "Label",
  },
  ["@tag.attribute"] = {
    default = true,
    link = "@property",
  },
  ["@tag.delimiter"] = {
    default = true,
    link = "Delimiter",
  },
  ["@text"] = {
    default = true,
    link = "@none",
  },
  ["@text.danger"] = {
    default = true,
    link = "WarningMsg",
  },
  ["@text.emphasis"] = {
    default = true,
    italic = true,
  },
  ["@text.environment"] = {
    default = true,
    link = "Macro",
  },
  ["@text.environment.name"] = {
    default = true,
    link = "Type",
  },
  ["@text.literal"] = {
    default = true,
    link = "String",
  },
  ["@text.math"] = {
    default = true,
    link = "Special",
  },
  ["@text.note"] = {
    default = true,
    link = "SpecialComment",
  },
  ["@text.reference"] = {
    default = true,
    link = "Constant",
  },
  ["@text.strike"] = {
    strikethrough = true,
  },
  ["@text.strong"] = {
    bold = true,
    default = true,
  },
  ["@text.title"] = {
    default = true,
    link = "Title",
  },
  ["@text.underline"] = {
    underline = true,
  },
  ["@text.uri"] = {
    default = true,
    link = "Underlined",
  },
  ["@text.warning"] = {
    default = true,
    link = "Todo",
  },
  ["@text.todo"] = {
    default = true,
    link = "Todo",
  },
  ["@type"] = {
    default = true,
    link = "Type",
  },
  ["@type.builtin"] = {
    default = true,
    link = "Type",
  },
  ["@type.definition"] = {
    default = true,
    link = "Typedef",
  },
  ["@type.qualifier"] = {
    default = true,
    link = "@keyword",
  },
  ["@variable.builtin"] = {
    default = true,
    link = "Special",
  },
}

return M
