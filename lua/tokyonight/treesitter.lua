local M = {}

function M.get(group)
  if group:sub(1, 1) ~= "@" or not vim.treesitter.highlighter.hl_map then
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

  ["todo"] = "TSTodo",

  ["type"] = "TSType",
  ["type.builtin"] = "TSTypeBuiltin",
  ["type.qualifier"] = "TSTypeQualifier",
  ["type.definition"] = "TSTypeDefinition",

  ["variable"] = "TSVariable",
  ["variable.builtin"] = "TSVariableBuiltin",
}

return M
