local ok, commons = pcall(require, "user.lsp.settings.commons")
if not ok then
	vim.notify "error loading commons in golang"
	return
end

require 'lspconfig'.gopls.setup {
	on_attach = commons.on_attach,
	flags = commons.lsp_flags,
	settings = {
		gopls = {
			buildFlags = {
				"-tags=iot smoketest regressiontest",
			},
		}
	},
}

local go_ok, config = pcall(require, 'go')
if not go_ok then
	vim.notify 'error loading go'
	return
end

config.setup()

local fmt_ok, format = pcall(require, 'go.format')
if not fmt_ok then
	vim.notify 'error loading go format'
	return
end

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
	pattern = "*.go",
	callback = function()
		vim.lsp.buf.format()
		format.goimport()
	end,
	group = format_sync_grp,
})
