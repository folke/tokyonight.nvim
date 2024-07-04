local M = {}

-- lsp symbol kind and completion kind highlights
local kinds = {
  Array = "@punctuation.bracket",
  Boolean = "@boolean",
  Class = "@type",
  Color = "Special",
  Constant = "@constant",
  Constructor = "@constructor",
  Enum = "@lsp.type.enum",
  EnumMember = "@lsp.type.enumMember",
  Event = "Special",
  Field = "@variable.member",
  File = "Normal",
  Folder = "Directory",
  Function = "@function",
  Interface = "@lsp.type.interface",
  Key = "@variable.member",
  Keyword = "@lsp.type.keyword",
  Method = "@function.method",
  Module = "@module",
  Namespace = "@module",
  Null = "@constant.builtin",
  Number = "@number",
  Object = "@constant",
  Operator = "@operator",
  Package = "@module",
  Property = "@property",
  Reference = "@markup.link",
  Snippet = "Conceal",
  String = "@string",
  Struct = "@lsp.type.struct",
  Unit = "@lsp.type.struct",
  Text = "@markup",
  TypeParameter = "@lsp.type.typeParameter",
  Variable = "@variable",
  Value = "@string",
}

---@param hl? tokyonight.Highlights
---@param pattern? string
function M.kinds(hl, pattern)
  hl = hl or {}
  for kind, link in pairs(kinds) do
    local base = "LspKind" .. kind
    if pattern then
      hl[pattern:format(kind)] = base
    else
      hl[base] = link
    end
  end
  return hl
end

---@type tokyonight.HighlightsFn
function M.get()
  return M.kinds()
end

return M
