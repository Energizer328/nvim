require("lspconfig").sumneko_lua.setup{
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
