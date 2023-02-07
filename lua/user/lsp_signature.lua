local ok, config = pcall(require, "lsp_signature")
if not ok then
	vim.notify "error loading lsp signature"
end

config.setup {
	hint_enable = false,
}
