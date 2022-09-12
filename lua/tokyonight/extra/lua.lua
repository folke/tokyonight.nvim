local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local function deepcopy(tbl)
    local ret = tbl
    if type(tbl) == "table" then
      ret = {}
      for key, value in pairs(tbl) do
        ret[key] = deepcopy(value)
      end
    end
    return ret
  end

  colors = vim.deepcopy(colors)
  colors._upstream_url = nil
  colors._style_name = nil

  local ret = "local colors = "
    .. vim.inspect(colors)
    .. "\n\nlocal highlights = "
    .. vim.inspect(deepcopy(require("tokyonight.theme").setup().highlights))
    .. "\n"
  return ret
end

return M
