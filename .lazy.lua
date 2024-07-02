local cache = {} ---@type table<string,table<string,string>>

local function get_group(buf)
  local fname = vim.api.nvim_buf_get_name(buf or 0)
  fname = vim.fs.normalize(fname)
  if not fname:find("lua/tokyonight/groups") then
    return
  end
  return vim.fn.fnamemodify(fname, ":t:r")
end

---@type ColorScheme
local colors

vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("tokyonight_dev", { clear = true }),
  pattern = "lua/tokyonight/*.lua",
  callback = vim.schedule_wrap(function(ev)
    for k in pairs(package.loaded) do
      if k:find("^tokyonight") then
        package.loaded[k] = nil
      end
    end
    vim.cmd.colorscheme(vim.g.colors_name)
    local hi = require("mini.hipatterns")
    local group = get_group(ev.buf)
    cache.colors = nil
    if group then
      cache[group] = nil
    end
    for _, buf in ipairs(hi.get_enabled_buffers()) do
      hi.update(buf)
    end
    for _, style in ipairs({ "storm", "day", "night", "moon" }) do
      require("tokyonight.util").cache.write(style, {})
    end
  end),
})

local function load(group)
  if cache[group] then
    return
  end
  cache[group] = {}
  local opts = require("tokyonight.config").options
  colors = require("tokyonight.colors").setup(opts)
  local highlights = require("tokyonight.groups").get(group, colors, opts)
  for k, v in pairs(highlights) do
    local hl = "TokyonightDev" .. k
    v = vim.deepcopy(v)
    v.fg = v.fg or colors.fg
    v.style = nil
    vim.api.nvim_set_hl(0, hl, v)
    cache[group][k] = hl
  end
end

local function hl(color)
  if not (type(color) == "string" and color:sub(1, 1) == "#") then
    return
  end
  cache.colors = cache.colors or {}
  if cache.colors[color] then
    return cache.colors[color]
  end
  local group = "TokyonightDevColors" .. color:sub(2):gsub("%.", "")
  vim.api.nvim_set_hl(0, group, { fg = color })
  cache.colors[color] = group
  return group
end

local function color_hl(key)
  colors = colors or require("tokyonight.colors").setup()
  local keys = vim.split(key, ".", { plain = true })
  table.remove(keys, 1)
  local color = vim.tbl_get(colors, unpack(keys))
  return hl(color)
end

-- selene: allow(mixed_table)
return {
  {
    "echasnovski/mini.hipatterns",
    optional = true,
    opts = function(_, opts)
      opts.highlighters = opts.highlighters or {}
      opts.highlighters.tokyonight = {
        pattern = function(buf)
          local group = get_group(buf)
          if not group or group == "init" then
            return
          end
          load(group)
          return group and '^%s*%[?"?()[%w%.@]+()"?%]?%s*='
        end,
        group = function(buf, match, data)
          local name = get_group(buf)
          if name == "kinds" then
            match = "LspKind" .. match
          end
          return name and cache[name][match]
        end,
        extmark_opts = { priority = 2000 },
      }

      opts.highlighters.tokyonight_colors = {
        pattern = {
          "%f[%w]()c%.[%w_%.]+()%f[%W]",
          "%f[%w]()colors%.[%w_%.]+()%f[%W]",
        },
        group = function(buf, match, data)
          return color_hl(match)
        end,
        extmark_opts = function(buf, match, data)
          return {
            virt_text = { { "⬤ ", data.hl_group } },
            virt_text_pos = "inline",
          }
        end,
      }

      opts.highlighters.tokyonight_terminal = {
        pattern = "%f[%w]()vim%.g%.terminal_color_%d+()%f[%W]",
        group = function(buf, match, data)
          return hl(vim.tbl_get(_G, unpack(vim.split(match, ".", { plain = true }))))
        end,
        extmark_opts = function(buf, match, data)
          return {
            virt_text = { { "⬤ ", data.hl_group } },
            virt_text_pos = "inline",
          }
        end,
      }
    end,
  },
}
