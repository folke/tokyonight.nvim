local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  -- Ref: https://github.com/helix-editor/helix/blob/master/book/src/themes.md
  -- nil is used when no equivalent was found.
  local mapping = M.flatten({
    attribute = "@attribute",
    type = {
      "Type",
      builtin = "@type.builtin",
      enum = {
        "@lsp.type.enum",
        variant = "@lsp.type.enumMember",
      },
    },
    -- rust: pattern matching `let Some(_) = ...`
    --                             ^^^^
    constructor = "Type",
    constant = {
      "Constant",
      builtin = {
        "@constant.builtin",
        boolean = "Boolean",
      },
      character = {
        "Character",
        escape = "@string.escape",
      },
      numeric = {
        "Number",
        float = "Float",
        integer = "Number",
      },
    },
    string = {
      "String",
      regexp = "@string.regexp",
      special = {
        "@string.special",
        path = nil,
        url = nil,
        symbol = nil,
      },
    },
    comment = {
      "@comment",
      line = nil,
      block = {
        nil,
        -- not sure about that one
        documentation = "@string.documentation",
      },
    },
    variable = {
      "@variable",
      builtin = "@variable.builtin",
      parameter = "@variable.parameter",
      other = {
        nil,
        member = "@variable.member",
      },
    },
    label = "@label",
    keyword = {
      "@keyword",
      control = {
        "Statement",
        conditional = "Conditional",
        ["repeat"] = "Repeat",
        import = nil,
        ["return"] = "@keyword.return",
        exception = "Exception",
      },
      operator = "Statement",
      directive = "PreProc",
      ["function"] = "@keyword.function",
      storage = {
        nil, -- rust: `let`
        type = nil, -- rust: `struct` & `type`
        modifier = nil, -- rust: `mut`
      },
    },
    operator = "Operator",
    ["function"] = {
      "Function",
      builtin = "@function.builtin",
      method = "@function.method",
      macro = "@function.macro",
      -- Defined as "preprocessor in C", so using "PreProc", not sure though
      special = "PreProc",
    },
    tag = {
      "@tag",
      -- ???
      builtin = nil,
    },
    namespace = "@lsp.type.namespace",
    special = "Special",
    markup = {
      nil,
      heading = {
        "@markup.heading",
        marker = nil,
        -- post-processed to remove the 'h' as we already use the first element (1) as the root value.
        h1 = nil,
        h2 = nil,
        h3 = nil,
        h4 = nil,
        h5 = nil,
        h6 = nil,
        -- UI --
        completion = "Pmenu",
        hover = "PmenuSel",
      },
      list = {
        "@markup.list",
        unnumbered = nil,
        numbered = nil,
        checked = nil,
        unchecked = nil,
      },
      bold = "Bold",
      italic = "Italic",
      strikethrough = {
        "helix",
        modifiers = { "crossed_out" },
      },
      link = {
        "@markup.link",
        url = "@markup.link.url",
        label = "@markup.link.label",
        text = "@markup.link",
      },
      quote = nil,
      raw = {
        "@markup.raw",
        inline = "@markup.raw.markdown_inline",
        block = nil,
        -- UI --
        completion = nil,
        hover = nil,
      },
      -- UI --
      normal = {
        nil,
        completion = "CmpItemMenu",
        hover = "CmpItemKindDefault",
      },
    },
    diff = {
      nil,
      plus = "diffAdded",
      minus = "diffRemoved",
      delta = {
        "diffChanged",
        moved = "diffFile",
      },
    },
    ui = {
      background = {
        { "helix", bg = "bg" },
        separator = nil,
      },
      cursor = {
        "Cursor",
        normal = nil,
        insert = nil,
        select = nil,
        match = "MatchParen",
        primary = {
          nil,
          normal = nil,
          insert = nil,
          select = nil,
        },
      },
      debug = {
        breakpoint = nil,
        active = nil,
      },
      gutter = {
        nil,
        selected = nil,
      },
      highlight = {
        nil,
        frameline = nil,
      },
      linenr = {
        "LineNr",
        select = "CursorLineNr",
      },
      statusline = {
        "StatusLine",
        inactive = "StatusLineNc",
        -- Inspired from lualine
        normal = {
          "helix",
          bg = "blue",
          fg = "black",
        },
        insert = nil,
        select = nil,
        separator = nil,
      },
      popup = {
        "TelescopeBorder",
        info = nil,
      },
      window = "WinSeparator",
      help = nil,
      text = {
        "Normal",
        -- TelescopeSelection
        focus = "Visual",
        inactive = "Comment",
        info = "TelescopeNormal",
      },
      virtual = {
        ruler = nil,
        whitespace = nil,
        ["indent-guide"] = nil,
        ["inlay-hint"] = {
          "DiagnosticVirtualTextHint",
          parameter = nil,
          type = nil,
        },
        wrap = nil,
      },
      menu = {
        "Pmenu",
        selected = "PmenuSel",
        scroll = {
          "helix",
          fg = vim.api.nvim_get_hl(0, { name = "PmenuThumb" }).bg,
          bg = vim.api.nvim_get_hl(0, { name = "PmenuSbar" }).bg,
        },
      },
      selection = {
        { "helix", bg = "bg_highlight" },
        primary = nil,
      },
      cursorline = {
        primary = nil,
        secondary = nil,
      },
      cursorcolumn = {
        primary = nil,
        secondary = nil,
      },
    },
    hint = "DiagnosticHint",
    info = "DiagnosticInfo",
    warning = "DiagnosticWarn",
    error = "DiagnosticError",
    diagnostic = {
      nil,
      hint = "DiagnosticUnderlineHint",
      info = "DiagnosticUnderlineInfo",
      warning = "DiagnosticUnderlineWarn",
      error = "DiagnosticUnderlineError",
    },
  })

  local config = {}
  for hx_scope, group in M.pairsByKeys(mapping) do
    -- print(hx_scope, util.dump(group))
    hx_scope = hx_scope:gsub("%.h(%d)", ".%1")
    if hx_scope:match("%.") then
      hx_scope = '"' .. hx_scope .. '"'
    end

    if group == nil then
      goto continue
    end

    if type(group) == "table" and group[1] == "helix" then
      table.remove(group, 1)
      table.insert(config, string.format("%s = %s", hx_scope, M.to_toml(group)))
      goto continue
    end

    local highlight = vim.api.nvim_get_hl(0, { name = group })
    while highlight and highlight.link do
      highlight = vim.api.nvim_get_hl(0, { name = highlight.link })
    end
    if highlight == nil then
      print("Unknown highlight for " .. hx_scope)
      goto continue
    end
    table.insert(config, string.format("%s = %s", hx_scope, M.to_helix_config(highlight)))

    ::continue::
  end

  table.insert(config, "\n[palette]")
  for name, color in M.pairsByKeys(M.flatten(colors)) do
    if name:match("%.") then
      name = '"' .. name .. '"'
    end
    if type(color) == "string" and not string.starts(name, "_") and name ~= "none" then
      table.insert(config, string.format('%s = "%s"', name, color))
    end
  end
  return table.concat(config, "\n")
end

function string.starts(String, Start)
  return string.sub(String, 1, string.len(Start)) == Start
end

function M.flatten(t)
  local res = {}
  for k, v in pairs(t) do
    if type(v) == "table" then
      if v[1] ~= "helix" then
        for k2, v2 in pairs(M.flatten(v)) do
          -- Special case for tables like:
          -- { type = { "@type", enum = "@type.enum" } }
          if k2 == 1 then
            res[k] = v2
          else
            res[k .. "." .. k2] = v2
          end
        end
      else
        res[k] = v
      end
    else
      res[k] = v
    end
  end
  return res
end

-- https://www.lua.org/pil/19.3.html
function M.pairsByKeys(t, f)
  local a = {}
  for n in pairs(t) do
    table.insert(a, n)
  end
  table.sort(a, f)
  local i = 0 -- iterator variable
  local iter = function() -- iterator function
    i = i + 1
    if a[i] == nil then
      return nil
    else
      return a[i], t[a[i]]
    end
  end
  return iter
end

function M.to_helix_config(highlight)
  local style = {}
  for hx_name, nvim_name in pairs({ fg = "fg", bg = "bg" }) do
    style[hx_name] = M.to_rgb(highlight[nvim_name])
  end
  local modifiers = {}
  for _, mods in ipairs({ highlight, highlight.cterm }) do
    if mods then
      if mods.bold then
        modifiers.bold = true
      end
      if mods.italic then
        modifiers.italic = true
      end
      if mods.underline then
        style.underline = {
          style = "line",
        }
      end
      if mods.undercurl and highlight.sp then
        style.underline = {
          color = M.to_rgb(mods.sp),
          style = "curl",
        }
      end
    end
  end
  if next(modifiers) ~= nil then
    style.modifiers = M.key_set(modifiers)
  end
  return M.to_toml(style)
end

function M.to_rgb(color)
  if type(color) == "string" then
    return color
  elseif type(color) == "number" then
    return string.format("#%06x", color)
  end
end

function M.key_set(t)
  local keys = {}
  for key, _ in pairs(t) do
    table.insert(keys, key)
  end
  return keys
end

function M.to_toml(style)
  local buffer = {}
  M.insert_as_toml(buffer, style)
  return table.concat(buffer, "")
end

function M.insert_as_toml(buffer, x)
  if type(x) == "table" then
    if next(x) == nil then
      return
    end
    if M.is_array(x) then
      table.insert(buffer, "[")
      for _, v in pairs(x) do
        M.insert_as_toml(buffer, v)
        table.insert(buffer, ", ")
      end
      table.remove(buffer)
      table.insert(buffer, "]")
    else
      table.insert(buffer, "{ ")
      for k, v in M.pairsByKeys(x) do
        table.insert(buffer, string.format("%s = ", k))
        M.insert_as_toml(buffer, v)
        table.insert(buffer, ", ")
      end
      table.remove(buffer)
      table.insert(buffer, " }")
    end
  elseif type(x) == "string" then
    table.insert(buffer, '"' .. x .. '"')
  elseif type(x) ~= nil then
    table.insert(buffer, tostring(x))
  end
end

function M.is_array(t)
  local i = 0
  for _ in pairs(t) do
    i = i + 1
    if t[i] == nil then
      return false
    end
  end
  return true
end

return M
