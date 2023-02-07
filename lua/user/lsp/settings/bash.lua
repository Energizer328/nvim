local ok, commons = pcall(require, "user.lsp.settings.commons")
if not ok then
  vim.notify "error loading commons in sunneko_lua"
  return
end

require("lspconfig").bashls.setup {
  -- on_attach = commons.on_attach,
  -- flags = commons.lsp_flags,
}
