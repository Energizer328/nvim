local ok, commons = pcall(require, "user.lsp.settings.commons")
if not ok then
	vim.notify('could not load commons in flutter-tools')
	return
end

vim.notify(vim.loop.cwd())

-- require("lspconfig").dartls.setup {
-- 	on_attach = commons.on_attach,
-- 	settings = {
-- 		enableSnippets = true,
-- 	},
-- 	init_options = {
-- 		onlyAnalyzeProjectsWithOpenFiles = false,
-- 	},
-- 	root_dir = function() return vim.loop.cwd() end,
-- 	cmd = { "dart", "language-server", "--protocol=lsp" },
-- }

require("flutter-tools").setup {
	lsp = {
		on_attach = commons.on_attach,
		settings = {
			enableSnippets = true,
		},
		-- root_dir = function() return vim.loop.cwd() end,
		-- init_options = {
		--   onlyAnalyzeProjectsWithOpenFiles = false,
		-- },
	},
	widget_guides = {
		enabled = true,
	},
	-- flutter_path = "/snap/bin/flutter"
	-- analysisExcludedFolders = {},
}
