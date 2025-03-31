local util = require("tokyonight.util")

local M = {}

---@alias PygmentsHighlight { fg?: string, bg?: string, style?: { italic?: boolean, bold?: boolean } }
---@alias PygmentsTokens table<string, table<string, PygmentsHighlight>>

---@param colors ColorScheme
---@param opts tokyonight.Config
---@return PygmentsTokens
function M.get_tokens(colors, opts)
  -- Table is nested for easier import generation:
  --   - Top-level keys (e.g., "Keyword", "Name") are the base token modules used for Python imports.
  --   - Inner keys (e.g., "Keyword", "Keyword.Constant") are the full Pygments token names mapping to
  --     their style definitions. The base token style (e.g., for "Keyword") is defined under the key
  --     matching the top-level key.
  --
  -- All standard tokens are defined, even if the styles are empty and will fall back to the base
  -- default token styles.
  --
  -- Reference
  --   - Docs: https://pygments.org/docs/tokens/
  --   - Standard token list: https://github.com/pygments/pygments/blob/edef94d66c2d70f05a86ac6098a69ab253b8d946/pygments/token.py#L120-L214
  return {
    Token = {
      Token = { fg = colors.fg },
    },
    Keyword = {
      Keyword = { fg = colors.purple, style = opts.styles.keywords },
      ["Keyword.Constant"] = { fg = colors.orange },
      ["Keyword.Declaration"] = { fg = colors.magenta },
      ["Keyword.Namespace"] = { fg = colors.cyan },
      ["Keyword.Pseudo"] = { fg = colors.magenta },
      ["Keyword.Reserved"] = {},
      ["Keyword.Type"] = { fg = colors.blue1 },
    },
    Name = {
      Name = {},
      ["Name.Attribute"] = { fg = colors.green1 },
      ["Name.Builtin"] = { fg = colors.blue1 },
      ["Name.BuiltinPseudo"] = { fg = colors.red },
      ["Name.Class"] = { fg = colors.blue1 },
      ["Name.Constant"] = { fg = colors.orange },
      ["Name.Decorator"] = { fg = colors.blue1 },
      ["Name.Entity"] = { fg = colors.blue1 },
      ["Name.Exception"] = { fg = colors.magenta },
      ["Name.Function"] = { fg = colors.blue, style = opts.styles.functions },
      ["Name.Function.Magic"] = { fg = colors.blue5 },
      ["Name.Label"] = { fg = colors.blue },
      ["Name.Namespace"] = { fg = colors.blue },
      ["Name.Other"] = {},
      ["Name.Property"] = { fg = colors.green1 },
      ["Name.Tag"] = { fg = colors.red },
      ["Name.Variable"] = { fg = colors.fg, style = opts.styles.variables },
      ["Name.Variable.Class"] = { fg = colors.green1 },
      ["Name.Variable.Global"] = { fg = colors.red },
      ["Name.Variable.Instance"] = { fg = colors.green1 },
      ["Name.Variable.Magic"] = { fg = colors.red },
    },
    Literal = {
      Literal = { fg = colors.orange },
      ["Literal.Date"] = {},
    },
    String = {
      String = { fg = colors.green },
      ["String.Affix"] = { fg = colors.purple },
      ["String.Backtick"] = {},
      ["String.Char"] = {},
      ["String.Delimiter"] = { fg = colors.blue5 },
      ["String.Doc"] = { fg = colors.yellow },
      ["String.Double"] = {},
      ["String.Escape"] = { fg = colors.magenta },
      ["String.Heredoc"] = {},
      ["String.Interpol"] = { fg = colors.blue1 },
      ["String.Other"] = {},
      ["String.Regex"] = { fg = colors.blue6 },
      ["String.Single"] = {},
      ["String.Symbol"] = { fg = colors.orange },
    },
    Number = {
      Number = { fg = colors.orange },
      ["Number.Bin"] = {},
      ["Number.Float"] = {},
      ["Number.Hex"] = {},
      ["Number.Integer"] = {},
      ["Number.Integer.Long"] = {},
      ["Number.Oct"] = {},
    },
    Operator = {
      Operator = { fg = colors.blue5 },
      ["Operator.Word"] = {},
    },
    Punctuation = {
      Punctuation = { fg = colors.fg_dark },
      ["Punctuation.Marker"] = { fg = colors.blue5 },
    },
    Comment = {
      Comment = { fg = colors.comment, style = opts.styles.comments },
      ["Comment.Hashbang"] = { fg = colors.blue5 },
      ["Comment.Multiline"] = {},
      ["Comment.Preproc"] = { fg = colors.cyan },
      ["Comment.PreprocFile"] = { fg = colors.green },
      ["Comment.Single"] = {},
      ["Comment.Special"] = { fg = colors.blue1 },
    },
    Generic = {
      Generic = {},
      ["Generic.Deleted"] = { fg = colors.git.delete },
      ["Generic.Emph"] = { style = { italic = true } },
      ["Generic.Error"] = { fg = colors.error },
      ["Generic.Heading"] = { fg = colors.blue, style = { bold = true } },
      ["Generic.Inserted"] = { fg = colors.git.add },
      ["Generic.Output"] = { fg = colors.fg_dark },
      ["Generic.Prompt"] = { fg = colors.blue1 },
      ["Generic.Strong"] = { style = { bold = true } },
      ["Generic.EmphStrong"] = { style = { bold = true, italic = true } },
      ["Generic.Subheading"] = { fg = colors.blue1 },
      ["Generic.Traceback"] = { fg = colors.error },
    },
  }
end

---@param tokens PygmentsTokens
---@return string
local function get_imports(tokens)
  local token_types = vim.tbl_keys(tokens)
  table.sort(token_types)

  local imports = {}
  for _, token_type in pairs(token_types) do
    table.insert(imports, "from pygments.token import " .. token_type)
  end

  return table.concat(imports, "\n") .. "\n"
end

---@param tokens PygmentsTokens
---@return string
local function get_styles(tokens)
  local style_entries = {}

  for _, token_details in pairs(tokens) do
    for token_name, token_def in pairs(token_details) do
      local parts = {}

      local styles = token_def.style or {}
      if styles.italic then
        table.insert(parts, "italic")
      end
      if styles.bold then
        table.insert(parts, "bold")
      end

      if token_def.fg then
        table.insert(parts, tostring(token_def.fg))
      end

      if token_def.bg then
        table.insert(parts, "bg:" .. tostring(token_def.bg))
      end

      local style = table.concat(parts, " ")
      if style ~= "" then
        table.insert(style_entries, string.format("%s%s: '%s',", string.rep(" ", 8), token_name, style))
      end
    end
  end

  table.sort(style_entries)
  return table.concat(style_entries, "\n") .. "\n"
end

---@param colors ColorScheme
---@param opts tokyonight.Config
function M.generate(colors, _, opts)
  colors = vim.deepcopy(colors)
  colors["_class_name"] = colors._style_name:gsub("[^%w]", "")

  local tokens = M.get_tokens(colors, opts)
  local imports = get_imports(tokens)
  local styles = get_styles(tokens)

  local pygments = util.template([[
from pygments.style import Style
]] .. imports .. [[


class ${_class_name}(Style):
    name = '${_name}'

    background_color = "${bg}"
    highlight_color = "${bg_visual}"
    line_number_color = "${fg_gutter}"
    line_number_background_color = "${bg}"

    styles = {
]] .. styles .. [[
    }
]], colors)

  local pyproject_path = "extras/pygments/pyproject.toml"
  local pyproject_toml = util.read(pyproject_path)
  pyproject_toml = string.gsub(
    pyproject_toml,
    'version%s*=%s*"[^"]*"',
    string.format('version = "%s"', require("tokyonight.config").version)
  )
  util.write(pyproject_path, pyproject_toml)

  return pygments
end

return M
