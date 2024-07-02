local Util = require("tokyonight.util")

local M = {}

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    ["@annotation"]                 = { link = "PreProc" },
    ["@attribute"]                  = { link = "PreProc" },
    ["@boolean"]                    = { link = "Boolean" },
    ["@character"]                  = { link = "Character" },
    ["@character.printf"]           = { link = "SpecialChar" },
    ["@character.special"]          = { link = "SpecialChar" },
    ["@comment"]                    = { link = "Comment" },
    ["@comment.error"]              = { fg = c.error },
    ["@comment.hint"]               = { fg = c.hint },
    ["@comment.info"]               = { fg = c.info },
    ["@comment.note"]               = { fg = c.hint },
    ["@comment.todo"]               = { fg = c.todo },
    ["@comment.warning"]            = { fg = c.warning },
    ["@constant"]                   = { link = "Constant" },
    ["@constant.builtin"]           = { link = "Special" },
    ["@constant.macro"]             = { link = "Define" },
    ["@constructor"]                = { fg = c.magenta }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["@constructor.tsx"]            = { fg = c.blue1 },
    ["@diff.delta"]                 = { link = "DiffChange" },
    ["@diff.minus"]                 = { link = "DiffDelete" },
    ["@diff.plus"]                  = { link = "DiffAdd" },
    ["@function"]                   = { link = "Function" },
    ["@function.builtin"]           = { link = "Special" },
    ["@function.call"]              = { link = "@function" },
    ["@function.macro"]             = { link = "Macro" },
    ["@function.method"]            = { link = "Function" },
    ["@function.method.call"]       = { link = "@function.method" },
    ["@keyword"]                    = { fg = c.purple, style = opts.styles.keywords }, -- For keywords that don't fall in previous categories.
    ["@keyword.conditional"]        = { link = "Conditional" },
    ["@keyword.coroutine"]          = { link = "@keyword" },
    ["@keyword.debug"]              = { link = "Debug" },
    ["@keyword.directive"]          = { link = "PreProc" },
    ["@keyword.directive.define"]   = { link = "Define" },
    ["@keyword.exception"]          = { link = "Exception" },
    ["@keyword.function"]           = { fg = c.magenta, style = opts.styles.functions }, -- For keywords used to define a function.
    ["@keyword.import"]             = { link = "Include" },
    ["@keyword.operator"]           = { link = "@operator" },
    ["@keyword.repeat"]             = { link = "Repeat" },
    ["@keyword.return"]             = { link = "@keyword" },
    ["@keyword.storage"]            = { link = "StorageClass" },
    ["@label"]                      = { fg = c.blue }, -- For labels: `label:` in C and `:label:` in Lua.
    ["@markup"]                     = { link = "@none" },
    ["@markup.emphasis"]            = { italic = true },
    ["@markup.environment"]         = { link = "Macro" },
    ["@markup.environment.name"]    = { link = "Type" },
    ["@markup.heading"]             = { link = "Title" },
    ["@markup.italic"]              = { italic = true },
    ["@markup.link"]                = { fg = c.teal },
    ["@markup.link.label"]          = { link = "SpecialChar" },
    ["@markup.link.label.symbol"]   = { link = "Identifier" },
    ["@markup.link.url"]            = { link = "Underlined" },
    ["@markup.list"]                = { fg = c.blue5 }, -- For special punctutation that does not fall in the categories before.
    ["@markup.list.checked"]        = { fg = c.green1 }, -- For brackets and parens.
    ["@markup.list.markdown"]       = { fg = c.orange, bold = true },
    ["@markup.list.unchecked"]      = { fg = c.blue }, -- For brackets and parens.
    ["@markup.math"]                = { link = "Special" },
    ["@markup.raw"]                 = { link = "String" },
    ["@markup.raw.markdown_inline"] = { bg = c.terminal_black, fg = c.blue },
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.strong"]              = { bold = true },
    ["@markup.underline"]           = { underline = true },
    ["@module"]                     = { link = "Include" },
    ["@module.builtin"]             = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@namespace.builtin"]          = { link = "@variable.builtin" },
    ["@none"]                       = {},
    ["@number"]                     = { link = "Number" },
    ["@number.float"]               = { link = "Float" },
    ["@operator"]                   = { fg = c.blue5 }, -- For any operator: `+`, but also `->` and `*` in C.
    ["@property"]                   = { fg = c.green1 },
    ["@punctuation.bracket"]        = { fg = c.fg_dark }, -- For brackets and parens.
    ["@punctuation.delimiter"]      = { fg = c.blue5 }, -- For delimiters ie: `.`
    ["@punctuation.special"]        = { fg = c.blue5 }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@string"]                     = { link = "String" },
    ["@string.documentation"]       = { fg = c.yellow },
    ["@string.escape"]              = { fg = c.magenta }, -- For escape characters within a string.
    ["@string.regexp"]              = { fg = c.blue6 }, -- For regexes.
    ["@tag"]                        = { link = "Label" },
    ["@tag.attribute"]              = { link = "@property" },
    ["@tag.delimiter"]              = { link = "Delimiter" },
    ["@tag.delimiter.tsx"]          = { fg = Util.blend_bg(c.blue, 0.7) },
    ["@tag.tsx"]                    = { fg = c.red },
    ["@type"]                       = { link = "Type" },
    ["@type.builtin"]               = { fg = Util.blend_bg(c.blue1, 0.8) },
    ["@type.definition"]            = { link = "Typedef" },
    ["@type.qualifier"]             = { link = "@keyword" },
    ["@variable"]                   = { fg = c.fg, style = opts.styles.variables }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"]           = { fg = c.red }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@variable.member"]            = { fg = c.green1 }, -- For fields.
    ["@variable.parameter"]         = { fg = c.yellow }, -- For parameters of a function.
    ["@variable.parameter.builtin"] = { fg = Util.blend_fg(c.yellow, 0.8) }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
  }

  for i, color in ipairs(c.rainbow) do
    ret["@markup.heading." .. i .. ".markdown"] = { fg = color, bold = true }
  end
  return ret
end

return M
