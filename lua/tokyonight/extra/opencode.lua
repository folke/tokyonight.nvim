local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
--- @return table<string, string>
local function generate_defs(colors)
  local defs = {}

  for key, value in pairs(colors) do
    -- Skip keys that start with underscore (metadata) and "none"
    if not key:match("^_") and key ~= "none" then
      if type(value) == "string" then
        defs[key] = value
      elseif type(value) == "table" then
        -- Handle nested tables like git, diff, terminal
        for subkey, subvalue in pairs(value) do
          if type(subvalue) == "string" then
            defs[key .. "_" .. subkey] = subvalue
          end
        end
      end
    end
  end

  return defs
end

--- @param defs table<string, string>
--- @param indent number Number of spaces to indent
--- @return string
local function format_defs_json(defs, indent)
  local defs_lines = {}

  -- Sort keys for consistent output
  local sorted_keys = {}
  for k in pairs(defs) do
    table.insert(sorted_keys, k)
  end
  table.sort(sorted_keys)

  for _, k in ipairs(sorted_keys) do
    table.insert(defs_lines, string.format('%s"%s": "%s"', string.rep(" ", indent), k, defs[k]))
  end

  return table.concat(defs_lines, ",\n")
end

--- @param colors ColorScheme
function M.generate(colors)
  colors = vim.deepcopy(colors)

  local defs = generate_defs(colors)
  colors.opencode_defs = format_defs_json(defs, 4)

  local opencode = util.template(
    [[{
  "$schema": "https://opencode.ai/theme.json",
  "defs": {
${opencode_defs}
  },
  "theme": {
    "primary": {
      "dark": "blue",
      "light": "blue"
    },
    "secondary": {
      "dark": "purple",
      "light": "purple"
    },
    "accent": {
      "dark": "orange",
      "light": "orange"
    },
    "error": {
      "dark": "red1",
      "light": "red1"
    },
    "warning": {
      "dark": "yellow",
      "light": "yellow"
    },
    "success": {
      "dark": "green",
      "light": "green"
    },
    "info": {
      "dark": "blue2",
      "light": "blue2"
    },
    "text": {
      "dark": "fg",
      "light": "fg"
    },
    "textMuted": {
      "dark": "fg_dark",
      "light": "fg_dark"
    },
    "background": {
      "dark": "bg",
      "light": "bg"
    },
    "backgroundPanel": {
      "dark": "bg_dark",
      "light": "bg_dark"
    },
    "backgroundElement": {
      "dark": "bg_highlight",
      "light": "bg_highlight"
    },
    "border": {
      "dark": "black",
      "light": "black"
    },
    "borderActive": {
      "dark": "border_highlight",
      "light": "border_highlight"
    },
    "borderSubtle": {
      "dark": "dark3",
      "light": "dark3"
    },
    "diffAdded": {
      "dark": "green1",
      "light": "green1"
    },
    "diffRemoved": {
      "dark": "red1",
      "light": "red1"
    },
    "diffContext": {
      "dark": "fg_dark",
      "light": "fg_dark"
    },
    "diffHunkHeader": {
      "dark": "comment",
      "light": "comment"
    },
    "diffHighlightAdded": {
      "dark": "git_add",
      "light": "git_add"
    },
    "diffHighlightRemoved": {
      "dark": "git_delete",
      "light": "git_delete"
    },
    "diffAddedBg": {
      "dark": "diff_add",
      "light": "diff_add"
    },
    "diffRemovedBg": {
      "dark": "diff_delete",
      "light": "diff_delete"
    },
    "diffContextBg": {
      "dark": "bg_highlight",
      "light": "bg_highlight"
    },
    "diffLineNumber": {
      "dark": "fg_gutter",
      "light": "fg_gutter"
    },
    "diffAddedLineNumberBg": {
      "dark": "diff_add",
      "light": "diff_add"
    },
    "diffRemovedLineNumberBg": {
      "dark": "diff_delete",
      "light": "diff_delete"
    },
    "markdownText": {
      "dark": "fg",
      "light": "fg"
    },
    "markdownHeading": {
      "dark": "blue",
      "light": "blue"
    },
    "markdownLink": {
      "dark": "blue",
      "light": "blue"
    },
    "markdownLinkText": {
      "dark": "teal",
      "light": "teal"
    },
    "markdownCode": {
      "dark": "green",
      "light": "green"
    },
    "markdownBlockQuote": {
      "dark": "comment",
      "light": "comment"
    },
    "markdownEmph": {
      "dark": "fg",
      "light": "fg"
    },
    "markdownStrong": {
      "dark": "fg",
      "light": "fg"
    },
    "markdownHorizontalRule": {
      "dark": "fg_gutter",
      "light": "fg_gutter"
    },
    "markdownListItem": {
      "dark": "blue5",
      "light": "blue5"
    },
    "markdownListEnumeration": {
      "dark": "orange",
      "light": "orange"
    },
    "markdownImage": {
      "dark": "blue",
      "light": "blue"
    },
    "markdownImageText": {
      "dark": "teal",
      "light": "teal"
    },
    "markdownCodeBlock": {
      "dark": "fg",
      "light": "fg"
    },
    "syntaxComment": {
      "dark": "comment",
      "light": "comment"
    },
    "syntaxKeyword": {
      "dark": "purple",
      "light": "purple"
    },
    "syntaxFunction": {
      "dark": "blue",
      "light": "blue"
    },
    "syntaxVariable": {
      "dark": "fg",
      "light": "fg"
    },
    "syntaxString": {
      "dark": "green",
      "light": "green"
    },
    "syntaxNumber": {
      "dark": "orange",
      "light": "orange"
    },
    "syntaxType": {
      "dark": "blue1",
      "light": "blue1"
    },
    "syntaxOperator": {
      "dark": "blue5",
      "light": "blue5"
    },
    "syntaxPunctuation": {
      "dark": "fg_dark",
      "light": "fg_dark"
    }
  }
}]],
    colors
  )

  return opencode
end

return M
