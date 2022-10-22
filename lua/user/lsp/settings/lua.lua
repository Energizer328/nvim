
local ok, commons = pcall(require, "user.lsp.settings.commons")
if not ok then
  vim.notify "error loading commons in sunneko_lua"
  return
end

require("lspconfig").sumneko_lua.setup{
  on_attach = commons.on_attach,
  flags = commons.lsp_flags,
  settings = {
    Lua = {
      diagnostics = {
        -- get the lenguage server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- make the server awere of neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
    },
  },
}
