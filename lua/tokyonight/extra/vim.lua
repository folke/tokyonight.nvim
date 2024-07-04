local M = {}

local mapping = {
  fg = "guifg",
  bg = "guibg",
  sp = "guisp",
}

--- @param colors ColorScheme
--- @param groups tokyonight.Highlights
--- @param opts tokyonight.Config
function M.generate(colors, groups, opts)
  opts.plugins = { all = false, auto = false, treesitter = false }
  local Groups = require("tokyonight.groups")
  for p, n in pairs(Groups.plugins) do
    if not p:find("nvim") then
      opts.plugins[n] = true
    end
  end
  groups = Groups.setup(colors, opts)
  local lines = {
    ([[
let g:colors_name = "tokyonight-%s"
hi clear
  ]]):format(colors._style),
  }

  groups = vim.deepcopy(groups)
  for name in pairs(groups) do
    if name:sub(1, 1) == "@" then
      groups[name] = nil
    end
  end
  local names = vim.tbl_keys(groups)
  table.sort(names)

  local used = {}
  for _, name in ipairs(names) do
    local hl = groups[name]
    if type(hl) == "string" then
      hl = { link = hl }
    end

    if not hl.link then
      local props = {}

      -- fg/bg/sp
      for k, v in pairs(hl) do
        if mapping[k] then
          props[#props + 1] = ("%s=%s"):format(mapping[k], v)
        end
      end

      -- gui
      local gui = {}
      for _, attr in ipairs({
        "bold",
        "underline",
        "undercurl",
        "italic",
        "strikethrough",
        "underdouble",
        "underdotted",
        "underdashed",
        "inverse",
        "standout",
        "nocombine",
        "altfont",
      }) do
        if hl[attr] then
          gui[#gui + 1] = attr
        end
      end
      if #gui > 0 then
        props[#props + 1] = ("gui=%s"):format(table.concat(gui, ","))
      end

      if #props > 0 then
        if not hl.bg then
          props[#props + 1] = "guibg=NONE"
        end
        table.sort(props)
        used[name] = true
        lines[#lines + 1] = ("hi %s %s"):format(name, table.concat(props, " "))
      else
        print("tokyonight: invalid highlight group: " .. name)
      end
    end
  end

  for _, name in ipairs(names) do
    local hl = groups[name]
    if type(hl) == "string" then
      hl = { link = hl }
    end

    if hl.link then
      if hl.link:sub(1, 1) ~= "@" and groups[hl.link] and used[hl.link] then
        lines[#lines + 1] = ("hi! link %s %s"):format(name, hl.link)
      end
    end
  end

  return table.concat(lines, "\n")
end

return M
