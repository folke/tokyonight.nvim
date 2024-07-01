local M = {}

--- @param colors ColorScheme
function M.generate(colors, groups)
  colors = vim.deepcopy(colors)
  colors._upstream_url = nil
  colors._style_name = nil

  local ret = "local colors = "
    .. vim.inspect(colors)
    .. "\n\nlocal highlights = "
    .. vim.inspect(vim.deepcopy(groups, true))
    .. "\n"
  return ret
end

return M
