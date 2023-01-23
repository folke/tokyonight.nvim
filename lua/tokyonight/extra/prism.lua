local util = require("tokyonight.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  return util.template(M.template, colors)
end

M.template = [[
module.exports =  {
  plain: {
    color: "${fg}",
    backgroundColor: "${bg}",
  },
  styles: [
    {
      types: ["prolog", "builtin"],
      style: {
        color: "${red}",
      },
    },
    {
      types: ["function"],
      style: {
        color: "${blue}",
      },
    },
    {
      types: ["symbol"],
      style: {
        color: "${blue1}",
      },
    },
    {
      types: ["punctuation"],
      style: {
        color: "${magenta}",
      },
    },
    {
      types: ["string", "char", "tag", "selector"],
      style: {
        color: "${green}",
      },
    },
    {
      types: ["keyword"],
      style: {
        color: "${purple}",
      },
    },
    {
      types: ["operator"],
      style: {
        color: "${blue5}",
      },
    },
    {
      types: ["constant", "boolean"],
      style: {
        color: "${orange}",
      },
    },
    {
      types: ["variable"],
      style: {
        color: "${fg}",
      },
    },
    {
      types: ["comment"],
      style: {
        color: "${comment}",
        fontStyle: "italic",
      },
    },
    {
      types: ["attr-name"],
      style: {
        color: "rgb(241, 250, 140)",
      },
    },
  ],
};
]]

return M
