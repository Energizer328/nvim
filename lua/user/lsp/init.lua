
local ok, mason = pcall(require, "mason")
if not ok then
  vim.notify "could not load module mason.nvim"
  return
end

local ok, mason_lspconfig = pcall(require, "mason-lspconfig")
if not ok then
  vim.notify "could not load module mason-lspconfig"
  return
end

mason.setup()
mason_lspconfig.setup()
require "user.lsp.settings.sumneko_lua"
require "user.lsp.settings.rust_tools"

