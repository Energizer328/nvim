
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

local ok, config = pcall(require, "nvim-tree")
if not ok then
  vim.notify "error loading nvim-tree"
  return
end

config.setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

