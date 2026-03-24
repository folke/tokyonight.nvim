local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  colors.tool_error_bg = util.blend_bg(colors.error, 0.05)
  local pi = util.template(
    [[{
  "$schema": "https://raw.githubusercontent.com/badlogic/pi-mono/main/packages/coding-agent/src/modes/interactive/theme/theme-schema.json",
  "name": "${_style_name}",
  "colors": {
    "accent": "${blue}",
    "border": "${border_highlight}",
    "borderAccent": "${cyan}",
    "borderMuted": "${border}",
    "success": "${green1}",
    "error": "${error}",
    "warning": "${warning}",
    "muted": "${fg_dark}",
    "dim": "${dark5}",
    "text": "",
    "thinkingText": "${comment}",

    "selectedBg": "${bg_visual}",
    "userMessageBg": "${bg_dark}",
    "userMessageText": "",
    "customMessageBg": "${bg_dark}",
    "customMessageText": "",
    "customMessageLabel": "${purple}",
    "toolPendingBg": "${bg_highlight}",
    "toolSuccessBg": "${bg_highlight}",
    "toolErrorBg": "${tool_error_bg}",
    "toolTitle": "",
    "toolOutput": "${fg_dark}",

    "mdHeading": "${blue}",
    "mdLink": "${teal}",
    "mdLinkUrl": "${comment}",
    "mdCode": "${blue}",
    "mdCodeBlock": "${bg_dark}",
    "mdCodeBlockBorder": "${comment}",
    "mdQuote": "${comment}",
    "mdQuoteBorder": "${comment}",
    "mdHr": "${orange}",
    "mdListBullet": "${orange}",

    "toolDiffAdded": "${diff.add}",
    "toolDiffRemoved": "${diff.delete}",
    "toolDiffContext": "${diff.text}",

    "syntaxComment": "${comment}",
    "syntaxKeyword": "${purple}",
    "syntaxFunction": "${blue}",
    "syntaxVariable": "${fg}",
    "syntaxString": "${green}",
    "syntaxNumber": "${orange}",
    "syntaxType": "${blue1}",
    "syntaxOperator": "${blue5}",
    "syntaxPunctuation": "${blue5}",

    "thinkingOff": "${dark3}",
    "thinkingMinimal": "${dark5}",
    "thinkingLow": "${blue7}",
    "thinkingMedium": "${blue}",
    "thinkingHigh": "${magenta}",
    "thinkingXhigh": "${purple}",

    "bashMode": "${orange}"
  }
}
]],
    colors
  )
  return pi
end

return M
