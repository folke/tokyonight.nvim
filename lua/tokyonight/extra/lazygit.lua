local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local lazygit = util.template(
    [[
gui:
  nerdFontsVersion: "3"
  theme:
    activeBorderColor:
      - "${orange}"
      - "bold"
    inactiveBorderColor:
      - "${border_highlight}"
    searchingActiveBorderColor:
      - "${orange}"
      - "bold"
    optionsTextColor:
      - "${blue}"
    selectedLineBgColor:
      - "${bg_visual}"
    cherryPickedCommitFgColor:
      - "${blue}"
    cherryPickedCommitBgColor:
      - "${magenta}"
    markedBaseCommitFgColor:
      - "${blue}"
    markedBaseCommitBgColor:
      - "${yellow}"
    unstagedChangesColor:
      - "${red1}"
    defaultFgColor:
      - "${fg}"
]],
    colors
  )
  return lazygit
end

return M
