local M = {}

M.url = "https://github.com/MagicDuck/grug-far.nvim"

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    GrugFarHelpHeader             = { fg = c.comment },
    GrugFarHelpHeaderKey          = { fg = c.cyan },
    GrugFarInputLabel             = { fg = c.blue1 },
    GrugFarInputPlaceholder       = { fg = c.dark3 },
    GrugFarResultsChangeIndicator = { fg = c.git.change },
    GrugFarResultsHeader          = { fg = c.orange },
    GrugFarResultsLineColumn      = { fg = c.dark3 },
    GrugFarResultsLineNo          = { fg = c.dark3 },
    GrugFarResultsMatch           = { fg = c.black, bg = c.red },
    GrugFarResultsStats           = { fg = c.blue },
  }
end

return M
