local Config = require("tokyonight.config")
local Util = require("tokyonight.util")

local M = {}

-- stylua: ignore
M.plugins = {
  ["aerial.nvim"]                   = "aerial",
  ["ale"]                           = "ale",
  ["alpha-nvim"]                    = "alpha",
  ["barbar.nvim"]                   = "barbar",
  ["bufferline.nvim"]               = "bufferline",
  ["dashboard-nvim"]                = "dashboard",
  ["flash.nvim"]                    = "flash",
  ["fzf-lua"]                       = "fzf",
  ["gitsigns.nvim"]                 = "gitsigns",
  ["headlines.nvim"]                = "headlines",
  ["hop.nvim"]                      = "hop",
  ["indent-blankline.nvim"]         = "indent-blankline",
  ["lazy.nvim"]                     = "lazy",
  ["leap.nvim"]                     = "leap",
  ["lspsaga.nvim"]                  = "lspsaga",
  ["mini.animate"]                  = "mini_animate",
  ["mini.clue"]                     = "mini_clue",
  ["mini.completion"]               = "mini_completion",
  ["mini.cursorword"]               = "mini_cursorword",
  ["mini.deps"]                     = "mini_deps",
  ["mini.diff"]                     = "mini_diff",
  ["mini.files"]                    = "mini_files",
  ["mini.hipatterns"]               = "mini_hipatterns",
  ["mini.icons"]                    = "mini_icons",
  ["mini.indent"]                   = "mini_indent",
  ["mini.jump"]                     = "mini_jump",
  ["mini.map"]                      = "mini_map",
  ["mini.notify"]                   = "mini_notify",
  ["mini.operators"]                = "mini_operators",
  ["mini.pick"]                     = "mini_pick",
  ["mini.starter"]                  = "mini_starter",
  ["mini.statusline"]               = "mini_statusline",
  ["mini.surround"]                 = "mini_surround",
  ["mini.tabline"]                  = "mini_tabline",
  ["mini.test"]                     = "mini_test",
  ["mini.trailspace"]               = "mini_trailspace",
  ["neo-tree.nvim"]                 = "neo-tree",
  ["neogit"]                        = "neogit",
  ["neotest"]                       = "neotest",
  ["noice.nvim"]                    = "noice",
  ["nvim-cmp"]                      = "cmp",
  ["nvim-dap"]                      = "dap",
  ["nvim-navic"]                    = "navic",
  ["nvim-notify"]                   = "notify",
  ["nvim-scrollbar"]                = "scrollbar",
  ["nvim-tree"]                     = "nvim-tree",
  ["nvim-treesitter-context"]       = "treesitter-context",
  ["octo.nvim"]                     = "octo",
  ["rainbow-delimiters.nvim"]       = "rainbow",
  ["telescope.nvim"]                = "telescope",
  ["trouble.nvim"]                  = "trouble",
  ["vim-gitgutter"]                 = "gitgutter",
  ["vim-glyph-palette"]             = "glyph-palette",
  ["vim-illuminate"]                = "illuminate",
  ["vim-sneak"]                     = "sneak",
  ["which-key.nvim"]                = "which-key",
  ["yanky.nvim"]                    = "yanky"
}

local me = debug.getinfo(1, "S").source:sub(2)
me = vim.fn.fnamemodify(me, ":h")

function M.get_group(name)
  ---@type {get: tokyonight.HighlightsFn, url: string}
  return Util.mod("tokyonight.groups." .. name)
end

---@param colors ColorScheme
---@param opts tokyonight.Config
function M.get(name, colors, opts)
  local mod = M.get_group(name)
  return mod.get(colors, opts)
end

---@param colors ColorScheme
---@param opts tokyonight.Config
function M.load(colors, opts)
  local groups = {
    base = true,
    kinds = true,
    semantic_tokens = true,
    treesitter = true,
  }

  if opts.plugins.all then
    for _, group in pairs(M.plugins) do
      groups[group] = true
    end
  elseif opts.plugins.auto and package.loaded.lazy then
    local plugins = require("lazy.core.config").plugins
    for plugin, group in pairs(M.plugins) do
      if plugins[plugin] then
        groups[group] = true
      end
    end

    -- special case for mini.nvim
    if plugins["mini.nvim"] then
      for _, group in pairs(M.plugins) do
        if group:find("^mini_") then
          groups[group] = true
        end
      end
    end
  end

  -- manually enable/disable plugins
  for k, v in pairs(opts.plugins) do
    local group = M.plugins[k]
    if group then
      local use = v
      if type(v) == "table" then
        use = v.enabled
      end
      if use then
        groups[group] = true
      else
        groups[group] = nil
      end
    end
  end

  local names = vim.tbl_keys(groups)
  table.sort(names)

  local cache_key = opts.style
  local cache = opts.cache and Util.cache.read(cache_key)

  local inputs = {
    colors = colors,
    plugins = names,
    version = Config.version,
    opts = { styles = opts.styles, dim_inactive = opts.dim_inactive },
  }

  local ret = cache and vim.deep_equal(inputs, cache.inputs) and cache.groups

  if not ret then
    ret = {}
    -- merge highlights
    for group in pairs(groups) do
      for k, v in pairs(M.get(group, colors, opts)) do
        ret[k] = v
      end
    end
    Util.resolve(ret)
    if opts.cache then
      Util.cache.write(cache_key, { groups = ret, inputs = inputs })
    end
  end
  opts.on_highlights(ret, colors)

  return ret
end

return M
