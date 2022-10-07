
local ok, config = pcall(require, 'rust-tools')
if not ok then
  vim.notify 'error loading rust_tools'
  return
end

config.setup({
  server = {
    on_attach = function(_, bufnr)
      vim.keymap.set('n', '<C-space>', config.hover_actions.hover_actions, {buffer = bufnr})
      vim.keymap.set("n", "<Leader>r", config.code_action_group.code_action_group, { buffer = bufnr })
    end
  }
})

