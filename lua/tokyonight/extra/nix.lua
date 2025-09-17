local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local nix = util.template(
    [[
# TokyoNight ${_style_name} palette for Nix
# Generated from: ${_upstream_url}
# Compatible with dotfiles structure

rec {
  # Cursor configuration
  cursor = {
    baseColor = magenta2;
    outlineColor = bg_highlight;
    watchBackgroundColor = orange;
  };

  # Base colors
  bg = "${bg}";
  bg_dark = "${bg_dark}";
  bg_dark1 = "${bg_dark1}";
  bg_float = "${bg_float}";
  bg_highlight = "${bg_highlight}";
  bg_popup = "${bg_popup}";
  bg_search = "${bg_search}";
  bg_sidebar = "${bg_sidebar}";
  bg_statusline = "${bg_statusline}";
  bg_visual = "${bg_visual}";
  border = "${border}";
  border_highlight = "${border_highlight}";
  fg = "${fg}";
  fg_dark = "${fg_dark}";
  fg_float = "${fg_float}";
  fg_gutter = "${fg_gutter}";
  fg_sidebar = "${fg_sidebar}";

  # Main colors
  black = "${black}";
  blue = "${blue}";
  blue0 = "${blue0}";
  blue1 = "${blue1}";
  blue2 = "${blue2}";
  blue5 = "${blue5}";
  blue6 = "${blue6}";
  blue7 = "${blue7}";
  comment = "${comment}";
  cyan = "${cyan}";
  dark3 = "${dark3}";
  dark5 = "${dark5}";
  green = "${green}";
  green1 = "${green1}";
  green2 = "${green2}";
  magenta = "${magenta}";
  magenta2 = "${magenta2}";
  orange = "${orange}";
  purple = "${purple}";
  red = "${red}";
  red1 = "${red1}";
  teal = "${teal}";
  yellow = "${yellow}";

  # Semantic colors
  error = "${error}";
  warning = "${warning}";
  info = "${info}";
  hint = "${hint}";
  todo = "${todo}";

  # Terminal colors (bright variants using underscore naming)
  bright_black = "${terminal.black_bright}";
  bright_blue = "${terminal.blue_bright}";
  bright_cyan = "${terminal.cyan_bright}";
  bright_green = "${terminal.green_bright}";
  bright_magenta = "${terminal.magenta_bright}";
  bright_red = "${terminal.red_bright}";
  bright_white = "${terminal.white_bright}";
  bright_yellow = "${terminal.yellow_bright}";
  white = "${terminal.white}";
  terminal_black = "${terminal.black_bright}";

  # Additional useful colors
  none = "NONE";
}
]],
    colors
  )
  return nix
end

return M