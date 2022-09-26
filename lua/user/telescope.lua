local ok, config = pcall(require, "telescope")
if not ok then
  vim.notify 'error loading telescope'
end

config.setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-j>"] = "move_selection_next",
        ["<C-k>"] = "move_selection_previous",

        ["<A-j>"] = "preview_scrolling_down",
        ["<A-k>"] = "preview_scrolling_up",

        ["<CR>"] = "select_default",
        ["<C-v>"] = "select_vertical",
        ["<C-t>"] = "select_tab",
        ["<C-h>"] = "select_horizontal",
      },
      n = {
        ["q"] = "close",
      },
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
