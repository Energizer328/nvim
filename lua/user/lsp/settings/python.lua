local ok, commons = pcall(require, "user.lsp.settings.commons")
if not ok then
	vim.notify "error loading commons in python"
	return
end

require("lspconfig").pyright.setup {
	on_attach = commons.on_attach,
}
