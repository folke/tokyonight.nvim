local util = require("tokyonight.util")

local M = {}

--- Strip leading "#" from hex strings so they fit Kakoune's `rgb:RRGGBB` format.
--- @param v any
--- @return any
local function strip_hash(v)
  if type(v) == "string" then
    return v:gsub("^#", "")
  elseif type(v) == "table" then
    local out = {}
    for k, val in pairs(v) do
      out[k] = strip_hash(val)
    end
    return out
  end
  return v
end

--- @param colors ColorScheme
--- @return string
function M.generate(colors)
  local kcolors = strip_hash(colors)

  local kakoune = util.template(
    [==[
# Tokyo Night for Kakoune
# -----------------------------------------------------------------------------
# Theme: ${_style_name}
# Upstream: ${_upstream_url}
# -----------------------------------------------------------------------------
#
# Install: copy this file to ~/.config/kak/colors/ and select with
#   :colorscheme ${_name}

evaluate-commands %sh{
    # Palette
    bg=rgb:${bg}
    bg_dark=rgb:${bg_dark}
    bg_float=rgb:${bg_float}
    bg_visual=rgb:${bg_visual}
    bg_search=rgb:${bg_search}
    bg_highlight=rgb:${bg_highlight}
    fg=rgb:${fg}
    fg_dark=rgb:${fg_dark}
    fg_gutter=rgb:${fg_gutter}
    comment=rgb:${comment}
    red=rgb:${red}
    red1=rgb:${red1}
    orange=rgb:${orange}
    yellow=rgb:${yellow}
    green=rgb:${green}
    green1=rgb:${green1}
    cyan=rgb:${cyan}
    blue=rgb:${blue}
    blue1=rgb:${blue1}
    blue2=rgb:${blue2}
    purple=rgb:${purple}
    magenta=rgb:${magenta}
    teal=rgb:${teal}
    terminal_black=rgb:${terminal_black}

    echo "
        # Default and selection
        face global Default             $fg,$bg
        face global PrimarySelection    $fg,$bg_visual+fg
        face global SecondarySelection  $fg,$bg_visual+fg
        face global PrimaryCursor       $bg,$fg+fg
        face global SecondaryCursor     $bg_dark,$fg+fg
        face global PrimaryCursorEol    $bg,$fg+fg
        face global SecondaryCursorEol  $bg_dark,$fg+fg

        # UI
        face global LineNumbers         $fg_gutter
        face global LineNumberCursor    $orange+b
        face global LineNumbersWrapped  $fg_gutter
        face global MenuForeground      $fg,$bg_visual
        face global MenuBackground      $fg,$bg_highlight
        face global MenuInfo            $blue1
        face global Information         $fg,$bg_highlight
        face global InlineInformation   $bg,$fg
        face global Error               $red1
        face global DiagnosticError     $red1
        face global DiagnosticWarning   $yellow
        face global DiagnosticHint      $teal
        face global DiagnosticInfo      $blue2
        face global StatusLine          $fg_dark,$bg_dark
        face global StatusLineMode      $yellow+b
        face global StatusLineInfo      $purple
        face global StatusLineValue     $cyan
        face global StatusCursor        $bg,$fg
        face global Prompt              $yellow,$bg_dark
        face global MatchingChar        $orange+b
        face global BufferPadding       $fg_gutter,$bg
        face global Whitespace          $fg_gutter+f
        face global WrapMarker          $comment+f

        # Code
        face global value         $fg
        face global type          $blue1
        face global variable      $fg
        face global module        $cyan
        face global function      $blue
        face global string        $green
        face global keyword       $purple+i
        face global operator      $cyan
        face global attribute     $green1
        face global comment       $comment+i
        face global documentation $yellow
        face global meta          $green1
        face global builtin       $blue1
        face global identifier    $magenta
        face global error         $red1

        # Markup
        face global title     $blue+b
        face global header    $blue+b
        face global mono      $blue,$terminal_black
        face global block     $green
        face global link      $teal+u
        face global bullet    $orange+b
        face global list      $cyan
    "
}
]==],
    kcolors
  )

  return kakoune
end

return M
