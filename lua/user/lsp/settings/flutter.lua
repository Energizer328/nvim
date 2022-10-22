
local ok, commons = pcall(require,"user.lsp.settings.commons")
if not ok then
  vim.notify('could not load commons in flutter-tools')
  return
end

require("flutter-tools").setup{
  lsp = {
    on_attach = commons.on_attach,
  },
  widget_guides = {
    enabled = true,
  },
}

