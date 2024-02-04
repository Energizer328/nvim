local mason_ok, mason = pcall(require, "mason")
if not mason_ok then
	vim.notify "could not load module mason.nvim"
	return
end

local mason_lspconfig_ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not mason_lspconfig_ok then
	vim.notify "could not load module mason-lspconfig"
	return
end

mason.setup()
mason_lspconfig.setup()
require "user.lsp.settings.lua"
require "user.lsp.settings.rust"
require "user.lsp.settings.flutter"
require "user.lsp.settings.golang"
require "user.lsp.settings.tf"
-- require "user.lsp.settings.bash"
require "user.lsp.settings.python"
