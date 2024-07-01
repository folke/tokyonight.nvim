local cache = {} ---@type table<string,table<string,string>>

local function get_group(buf)
  local fname = vim.api.nvim_buf_get_name(buf or 0)
  fname = vim.fs.normalize(fname)
  if not fname:find("lua/tokyonight/groups") then
    return
  end
  return vim.fn.fnamemodify(fname, ":t:r")
end

vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("tokyonight_dev", { clear = true }),
  pattern = "lua/tokyonight/*.lua",
  callback = function(ev)
    local hi = require("mini.hipatterns")
    local group = get_group(ev.buf)
    if group then
      cache[group] = nil
      hi.update(ev.buf)
    end
    for _, style in ipairs({ "storm", "day", "night", "moon" }) do
      require("tokyonight.util").cache.write(style, {})
    end
  end,
})

local function load(group)
  if cache[group] then
    return
  end
  cache[group] = {}
  local opts = require("tokyonight.config").defaults
  local colors = require("tokyonight.colors").setup(opts)
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
    end,
  },
}
