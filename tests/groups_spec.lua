local Config = require("tokyonight.config")
local Groups = require("tokyonight.groups")

local base = { "base", "kinds", "semantic_tokens", "treesitter" }

before_each(function()
  Config.setup()
end)

describe("group is valid", function()
  for name in vim.fs.dir("lua/tokyonight/groups") do
    name = name:match("(.+)%.lua$")
    if name and name ~= "init" and not vim.list_contains(base, name) then
      it(name .. " has an url", function()
        local group = Groups.get_group(name)
        assert.is_not_nil(group, group)
        assert.is_not_nil(group.url, group)
      end)
      it(name .. " has a plugin mapping", function()
        local mapping = false
        for k, v in pairs(Groups.plugins) do
          if v == name then
            mapping = true
            break
          end
        end
        assert.is_true(mapping, name)
      end)
    end
  end

  for _, name in pairs(Groups.plugins) do
    it(name .. " exists", function()
      local ok = pcall(Groups.get_group, name)
      assert(ok, name)
    end)
  end
end)

describe("group config", function()
  it("does all", function()
    local opts = Config.extend({ plugins = { all = true } })
    local all = {} ---@type table<string, boolean>
    for _, name in ipairs(base) do
      all[name] = true
    end
    for _, name in pairs(Groups.plugins) do
      all[name] = true
    end
    local colors = require("tokyonight.colors").setup(opts)
    local _, groups = Groups.setup(colors, opts)
    assert.same(all, groups)
  end)

  it("does base", function()
    local opts = Config.extend({ plugins = { all = false, auto = false } })
    local all = {} ---@type table<string, boolean>
    for _, name in ipairs(base) do
      all[name] = true
    end
    local colors = require("tokyonight.colors").setup(opts)
    local _, groups = Groups.setup(colors, opts)
    assert.same(all, groups)
  end)

  it("does dashboard", function()
    local opts = Config.extend({ plugins = {
      all = false,
      auto = false,
      dashboard = true,
    } })
    local all = {} ---@type table<string, boolean>
    for _, name in ipairs(base) do
      all[name] = true
    end
    all.dashboard = true
    local colors = require("tokyonight.colors").setup(opts)
    local _, groups = Groups.setup(colors, opts)
    assert.same(all, groups)
  end)

  it("does dashboard.nvim", function()
    local opts = Config.extend({
      plugins = {
        all = false,
        auto = false,
        ["dashboard-nvim"] = true,
      },
    })
    local all = {} ---@type table<string, boolean>
    for _, name in ipairs(base) do
      all[name] = true
    end
    all.dashboard = true
    local colors = require("tokyonight.colors").setup(opts)
    local _, groups = Groups.setup(colors, opts)
    assert.same(all, groups)
  end)
end)
