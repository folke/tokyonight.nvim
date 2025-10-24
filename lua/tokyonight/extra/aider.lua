local util = require("tokyonight.util")

local M = {}

---@param colors ColorScheme
function M.generate(colors)
  colors = vim.deepcopy(colors)
  colors["_pygments_plugin_name"] = colors._name:gsub("_", "-")

  local aider = util.template(
    [[
assistant-output-color: "${fg}"

# see the aider extra README for more information about setting the `code-theme`
# https://github.com/folke/tokyonight.nvim/blob/extras/aider/README.md
# code-theme: ${_pygments_plugin_name}

completion-menu-color: "${fg_float}"
completion-menu-bg-color: "${bg_float}"
completion-menu-current-color: "${fg_float}"
completion-menu-current-bg-color: "${bg_highlight}"

tool-error-color: "${error}"
tool-output-color: "${blue}"
tool-warning-color: "${warning}"

user-input-color: "${green}"
]],
    colors
  )

  return aider
end

return M
