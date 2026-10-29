local M = {}

M.url = "https://github.com/sindrets/diffview.nvim"

---@type tokyonight_merino.HighlightsFn
function M.get(c, opts)
  local ret = {
    DiffviewNormal = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    DiffviewCursorLine = { bg = c.bg_highlight },
    DiffviewFilePanelTitle = { fg = c.blue, bold = true },
    DiffviewFilePanelCounter = { fg = c.comment },
    DiffviewFilePanelRootPath = { fg = c.comment },
    DiffviewFilePanelFileName = { fg = c.fg },
    DiffviewFilePanelSelected = { fg = c.blue1, bold = true },
    DiffviewFilePanelPath = { fg = c.comment },
    DiffviewFilePanelInsertions = { fg = c.git.add },
    DiffviewFilePanelDeletions = { fg = c.git.delete },
    DiffviewFolderName = { fg = c.blue },
    DiffviewFolderSign = { fg = c.blue1 },
    DiffviewDiffAdd = "DiffAdd",
    DiffviewDiffChange = "DiffChange",
    DiffviewDiffText = "DiffText",
    DiffviewDiffDeleteDim = { fg = c.diff.filler, bg = opts.transparent and c.none or c.bg },
  }
  for _, status in ipairs({ "Added", "Untracked" }) do
    ret["DiffviewStatus" .. status] = "DiffviewFilePanelInsertions"
  end
  for _, status in ipairs({ "Modified", "Renamed", "Copied", "TypeChange", "Unmerged" }) do
    ret["DiffviewStatus" .. status] = { fg = c.git.change }
  end
  for _, status in ipairs({ "Deleted", "Unknown", "Broken" }) do
    ret["DiffviewStatus" .. status] = "DiffviewFilePanelDeletions"
  end
  return ret
end

return M
