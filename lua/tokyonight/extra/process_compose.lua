local util = require("tokyonight.util")
local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local process_compose = util.template(
    [=[
style:
  name: ${_name}
  body:
    fgColor: '${fg}'
    bgColor: '${bg_dark}'
    secondaryTextColor: '${fg_dark}'
    tertiaryTextColor: '${fg_visual}'
    borderColor: '${fg_gutter}'
  stat_table:
    keyFgColor: '${yellow}'
    valueFgColor: '${fg}'
    logoColor: '${yellow}'
  proc_table:
    fgColor: '${blue}'
    fgWarning: '${yellow}'
    fgPending: '${dark3}'
    fgCompleted: '${green}'
    fgError: '${red1}'
    headerFgColor: '${fg}'
  help:
    fgColor: '${blue1}'
    keyColor: '${fg}'
    hlColor: '${green}'
    categoryFgColor: '${blue5}'
  dialog:
    fgColor: '${blue1}'
    bgColor: '${black}'
    contrastBgColor: '${bg}'
    attentionBgColor: '${red1}'
    buttonFgColor: '${black}'
    buttonBgColor: '${bg_highlight}'
    buttonFocusFgColor: '${black}'
    buttonFocusBgColor: '${blue}'
    labelFgColor: '${yellow}'
    fieldFgColor: '${black}'
    fieldBgColor: '${blue7}'
]=],
    colors
  )

  return process_compose
end

return M
