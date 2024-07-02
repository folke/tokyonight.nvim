--# selene: allow(global_usage)
--# selene: allow(mixed_table)

local Util = require("tokyonight.util")

local colors ---@type ColorScheme
local cache = {} ---@type table<string,table<string,string>>
local hl_groups = {} ---@type table<string,boolean>

---@param hl tokyonight.Highlight|string
local function get_hl_group(hl)
  local group = "TokyonightDev" .. vim.inspect(hl):gsub("%W+", "_")
  if not hl_groups[group] then
    hl = type(hl) == "string" and { link = hl } or hl
    hl = vim.deepcopy(hl, true)
    Util.resolve({ foo = hl })
    hl.fg = hl.fg or colors.fg
    vim.api.nvim_set_hl(0, group, hl)
    hl_groups[group] = true
  end
  return group
end

local function get_group(buf)
  local fname = vim.api.nvim_buf_get_name(buf or 0)
  fname = vim.fs.normalize(fname)
  if not fname:find("lua/tokyonight/groups") then
    return
  end
  return vim.fn.fnamemodify(fname, ":t:r")
end

local function load(group)
  if cache[group] then
    return
  end
  cache[group] = {}
  local opts
  colors, opts = require("tokyonight.colors").setup(opts)
  local highlights = require("tokyonight.groups").get(group, colors, opts)
  for k, v in pairs(highlights) do
    cache[group][k] = get_hl_group(v)
  end
end

vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("tokyonight_dev", { clear = true }),
  pattern = "*/lua/tokyonight/**.lua",
  callback = vim.schedule_wrap(function(ev)
    local opts = require("tokyonight.config").options
    for k in pairs(package.loaded) do
      if k:find("^tokyonight") then
        package.loaded[k] = nil
      end
    end
    require("tokyonight").setup(opts)
    require("tokyonight.util").cache.clear()
    vim.cmd.colorscheme(vim.g.colors_name)
    hl_groups = {}
    local hi = require("mini.hipatterns")
    local group = get_group(ev.buf)
    if group then
      cache[group] = nil
    end
    for _, buf in ipairs(hi.get_enabled_buffers()) do
      hi.update(buf)
    end
  end),
})

return {
  {
    "echasnovski/mini.hipatterns",
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
          "%f[%w]()vim%.g%.terminal_color_%d+()%f[%W]",
        },
        group = function(_, match)
          local parts = vim.split(match, ".", { plain = true })
          local t = _G --[[@as table]]
          if parts[1]:sub(1, 1) == "c" then
            table.remove(parts, 1)
            colors = colors or require("tokyonight.colors").setup()
            t = colors
          end
          local color = vim.tbl_get(t, unpack(parts))
          return type(color) == "string" and get_hl_group({ fg = color })
        end,
        extmark_opts = function(_, _, data)
          return {
            virt_text = { { "⬤ ", data.hl_group } },
            virt_text_pos = "inline",
            priority = 2000,
          }
        end,
      }
    end,
  },
}
