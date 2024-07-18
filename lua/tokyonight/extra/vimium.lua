local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local vimium = util.template(
    [[
/* Copy the content into the `CSS for Vimium UI` textarea field on the vimium options page  */

:root {
  --vimium-blue: ${blue};
  --vimium-green: ${green};
  --vimium-fg: ${fg};
  --vimium-fg-dark: ${fg_dark};
  --vimium-border: ${border};
  --vimium-border-highlight: ${border_highlight};
  --vimium-bg: ${bg};
  --vimium-bg-highlight: ${bg_highlight};
}

#vimiumHintMarkerContainer div.internalVimiumHintMarker,
#vimiumHintMarkerContainer div.vimiumHintMarker {
  padding: 3px 4px;
  border: 1;
  background: var(--vimium-blue);
  border-color: var(--vimium-border);
  box-shadow:
    0 1px 3px rgba(0, 0, 0, 0.12),
    0 1px 2px rgba(0, 0, 0, 0.24);
}

#vimiumHintMarkerContainer div span {
  color: var(--vimium-border) !important;
  text-shadow: none;
}

#vimiumHintMarkerContainer div > .matchingCharacter {
  opacity: 1;
}

#vimiumHintMarkerContainer div > .matchingCharacter ~ span {
  color: var(--vimium-fg-dark);
}

#vomnibar {
  background: var(--vimium-bg);
  border: 2px solid var(--vimium-border-highlight);
  animation: show 200ms cubic-bezier(0, 0, 0.2, 1) forwards;
  max-height: calc(100vh - 70px);
  overflow: hidden;
}

@keyframes show {
  0% {
    transform: translateY(50px);
    opacity: 0;
  }
  100% {
    transform: translateY(0);
    opacity: 1;
  }
}

#vomnibar input {
  color: var(--vimium-fg);
  background: var(--vimium-bg);
  border: none;
  height: unset;
  padding: 16px 30px;
}

#vomnibar .vomnibarSearchArea {
  border: none;
  padding: unset;
  background: var(--vimium-bg);
}

#vomnibar ul {
  padding: 0;
  margin: 0;
  background: var(--vimium-bg);
  border-top: 1px solid var(--vimium-border);
}

#vomnibar li {
  padding: 10px;
  border-bottom: 1px solid var(--vimium-border);
}

#vomnibar li .vomnibarTopHalf,
#vomnibar li .vomnibarBottomHalf {
  padding: 3px 0;
}

#vomnibar li .vomnibarSource {
  color: var(--vimium-green);
}

#vomnibar li em,
#vomnibar li .vomnibarTitle {
  color: var(--vimium-blue);
}

#vomnibar li .vomnibarUrl {
  color: var(--vimium-fg);
}

#vomnibar li .vomnibarMatch {
  color: var(--vimium-blue);
}

#vomnibar li .vomnibarTitle .vomnibarMatch {
  color: var(--vimium-blue);
}

#vomnibar li.vomnibarSelected {
  background-color: var(--vimium-bg-highlight);
}

div.vimiumHUD {
  background: var(--vimium-bg);
  border: none;
  box-shadow:
    0 1px 3px rgba(0, 0, 0, 0.12),
    0 1px 2px rgba(0, 0, 0, 0.24);
}

div.vimiumHUD span#hud-find-input,
div.vimiumHUD .vimiumHUDSearchAreaInner {
  color: var(--vimium-fg);
}

div.vimiumHUD .hud-find {
  background-color: var(--vimium-bg);
  border: none;
}

div.vimiumHUD .vimiumHUDSearchArea {
  background-color: var(--vimium-bg);
}
]],
    colors
  )
  return vimium
end

return M
