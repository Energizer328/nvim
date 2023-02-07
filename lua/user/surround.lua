local ok, config = pcall(require, "nvim-surround")
if not ok then
  vim.notify "error loading nvim-surround"
end

config.setup({})
