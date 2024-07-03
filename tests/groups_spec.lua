local Groups = require("tokyonight.groups")

local base = { "base", "kinds", "semantic_tokens", "treesitter", "init" }

describe("group is valid", function()
  for name in vim.fs.dir("lua/tokyonight/groups") do
    name = name:match("(.+)%.lua$")
    if name and not vim.list_contains(base, name) then
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
end)
