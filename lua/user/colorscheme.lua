
local colorscheme = "tokyonight-night"

local ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not ok then
  vim.notify("error loading theme" .. colorscheme)
  return
end

