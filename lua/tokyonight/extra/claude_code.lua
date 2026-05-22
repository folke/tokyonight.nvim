local util = require("tokyonight.util")

local M = {}

--- Convert hex color to rgb(r,g,b) string
--- @param hex string
--- @return string
local function to_rgb(hex)
  local r = tonumber(hex:sub(2, 3), 16)
  local g = tonumber(hex:sub(4, 5), 16)
  local b = tonumber(hex:sub(6, 7), 16)
  return string.format("rgb(%d,%d,%d)", r, g, b)
end

--- Create a shimmer variant using HSLuv brighten for perceptually correct lightening
--- @param hex string
--- @return string
local function shimmer(hex)
  return to_rgb(util.brighten(hex, 0.12, 0.1))
end

--- @param colors ColorScheme
function M.generate(colors)
  local c = vim.deepcopy(colors)
  c._base = c._style == "day" and "light" or "dark"

  -- Pre-compute all Claude Code theme values as rgb strings
  c.cc = {
    claude = to_rgb(c.blue),
    claudeShimmer = shimmer(c.blue),
    permission = to_rgb(c.magenta),
    permissionShimmer = shimmer(c.magenta),
    planMode = to_rgb(c.cyan),
    ide = to_rgb(c.green1),
    promptBorder = to_rgb(c.blue7),
    promptBorderShimmer = to_rgb(c.comment),
    text = to_rgb(c.fg),
    inverseText = to_rgb(c.bg),
    inactive = to_rgb(c.comment),
    subtle = to_rgb(c.fg_gutter),
    suggestion = to_rgb(c.blue),
    remember = to_rgb(c.green1),
    background = to_rgb(c.bg),
    success = to_rgb(c.green),
    error = to_rgb(c.red),
    warning = to_rgb(c.yellow),
    warningShimmer = shimmer(c.yellow),
    autoAccept = to_rgb(c.green),
    bashBorder = to_rgb(c.orange),
    diffAdded = to_rgb(c.diff.add),
    diffRemoved = to_rgb(c.diff.delete),
    diffAddedDimmed = to_rgb(util.blend(c.diff.add, 0.7, c.bg)),
    diffRemovedDimmed = to_rgb(util.blend(c.diff.delete, 0.7, c.bg)),
    diffAddedWord = to_rgb(c.green),
    diffRemovedWord = to_rgb(c.red),
    diffAddedWordDimmed = to_rgb(util.blend(c.green, 0.6, c.bg)),
    diffRemovedWordDimmed = to_rgb(util.blend(c.red, 0.6, c.bg)),
    red = to_rgb(c.red),
    blue = to_rgb(c.blue),
    green = to_rgb(c.green),
    yellow = to_rgb(c.yellow),
    purple = to_rgb(c.purple),
    orange = to_rgb(c.orange),
    pink = to_rgb(c.magenta2),
    cyan = to_rgb(c.cyan),
    professionalBlue = to_rgb(c.blue0),
    rainbow_red = to_rgb(c.red),
    rainbow_orange = to_rgb(c.orange),
    rainbow_yellow = to_rgb(c.yellow),
    rainbow_green = to_rgb(c.green),
    rainbow_blue = to_rgb(c.blue),
    rainbow_indigo = to_rgb(c.purple),
    rainbow_violet = to_rgb(c.magenta),
    rainbow_red_shimmer = shimmer(c.red),
    rainbow_orange_shimmer = shimmer(c.orange),
    rainbow_yellow_shimmer = shimmer(c.yellow),
    rainbow_green_shimmer = shimmer(c.green),
    rainbow_blue_shimmer = shimmer(c.blue),
    rainbow_indigo_shimmer = shimmer(c.purple),
    rainbow_violet_shimmer = shimmer(c.magenta),
    clawd_body = to_rgb(c.magenta),
    clawd_background = to_rgb(c.bg_dark),
    userMessageBackground = to_rgb(c.bg_highlight),
    bashMessageBackgroundColor = to_rgb(c.bg_dark),
    memoryBackgroundColor = to_rgb(util.blend(c.teal, 0.08, c.bg_dark)),
    rate_limit_fill = to_rgb(c.blue),
    rate_limit_empty = to_rgb(c.fg_gutter),
  }

  return util.template(
    [[{
  "name": "${_style_name}",
  "base": "${_base}",
  "overrides": {
    "autoAccept": "${cc.autoAccept}",
    "bashBorder": "${cc.bashBorder}",
    "claude": "${cc.claude}",
    "claudeShimmer": "${cc.claudeShimmer}",
    "claudeBlue_FOR_SYSTEM_SPINNER": "${cc.claude}",
    "claudeBlueShimmer_FOR_SYSTEM_SPINNER": "${cc.claudeShimmer}",
    "permission": "${cc.permission}",
    "permissionShimmer": "${cc.permissionShimmer}",
    "planMode": "${cc.planMode}",
    "ide": "${cc.ide}",
    "promptBorder": "${cc.promptBorder}",
    "promptBorderShimmer": "${cc.promptBorderShimmer}",
    "text": "${cc.text}",
    "inverseText": "${cc.inverseText}",
    "inactive": "${cc.inactive}",
    "subtle": "${cc.subtle}",
    "suggestion": "${cc.suggestion}",
    "remember": "${cc.remember}",
    "background": "${cc.background}",
    "success": "${cc.success}",
    "error": "${cc.error}",
    "warning": "${cc.warning}",
    "warningShimmer": "${cc.warningShimmer}",
    "diffAdded": "${cc.diffAdded}",
    "diffRemoved": "${cc.diffRemoved}",
    "diffAddedDimmed": "${cc.diffAddedDimmed}",
    "diffRemovedDimmed": "${cc.diffRemovedDimmed}",
    "diffAddedWord": "${cc.diffAddedWord}",
    "diffRemovedWord": "${cc.diffRemovedWord}",
    "diffAddedWordDimmed": "${cc.diffAddedWordDimmed}",
    "diffRemovedWordDimmed": "${cc.diffRemovedWordDimmed}",
    "red_FOR_SUBAGENTS_ONLY": "${cc.red}",
    "blue_FOR_SUBAGENTS_ONLY": "${cc.blue}",
    "green_FOR_SUBAGENTS_ONLY": "${cc.green}",
    "yellow_FOR_SUBAGENTS_ONLY": "${cc.yellow}",
    "purple_FOR_SUBAGENTS_ONLY": "${cc.purple}",
    "orange_FOR_SUBAGENTS_ONLY": "${cc.orange}",
    "pink_FOR_SUBAGENTS_ONLY": "${cc.pink}",
    "cyan_FOR_SUBAGENTS_ONLY": "${cc.cyan}",
    "professionalBlue": "${cc.professionalBlue}",
    "rainbow_red": "${cc.rainbow_red}",
    "rainbow_orange": "${cc.rainbow_orange}",
    "rainbow_yellow": "${cc.rainbow_yellow}",
    "rainbow_green": "${cc.rainbow_green}",
    "rainbow_blue": "${cc.rainbow_blue}",
    "rainbow_indigo": "${cc.rainbow_indigo}",
    "rainbow_violet": "${cc.rainbow_violet}",
    "rainbow_red_shimmer": "${cc.rainbow_red_shimmer}",
    "rainbow_orange_shimmer": "${cc.rainbow_orange_shimmer}",
    "rainbow_yellow_shimmer": "${cc.rainbow_yellow_shimmer}",
    "rainbow_green_shimmer": "${cc.rainbow_green_shimmer}",
    "rainbow_blue_shimmer": "${cc.rainbow_blue_shimmer}",
    "rainbow_indigo_shimmer": "${cc.rainbow_indigo_shimmer}",
    "rainbow_violet_shimmer": "${cc.rainbow_violet_shimmer}",
    "clawd_body": "${cc.clawd_body}",
    "clawd_background": "${cc.clawd_background}",
    "userMessageBackground": "${cc.userMessageBackground}",
    "bashMessageBackgroundColor": "${cc.bashMessageBackgroundColor}",
    "memoryBackgroundColor": "${cc.memoryBackgroundColor}",
    "rate_limit_fill": "${cc.rate_limit_fill}",
    "rate_limit_empty": "${cc.rate_limit_empty}"
  }
}
]],
    c
  )
end

return M
