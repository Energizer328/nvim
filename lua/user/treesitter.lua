local ok, config = pcall(require, "nvim-treesitter.configs")
if not ok then
  vim.notify "error loading treesitter"
end

config.setup {
  ensure_installed = { "lua", "dart", "go", "terraform" }, -- list of parsers to install, or "all"
  sync_installed = false, -- install parsers synchronously
  auto_install = true, -- automatically install missing parsers when entering buffer
  ignore_install = {}, -- list of parsers to ignore installing

  -- provides syntax highlighting
  highlight = {
    enable = true, -- enable module
    disable = {}, -- list of langs that will be disabled (names of the parsers)
    additional_vim_regex_highlighting = false,
  },

  -- provides indentation
  indent = { enable = true },

  -- provides rainbow parantheses
  rainbow = {
    enable = true, -- enable module
    disable = {}, -- disabled langs
    extended_mode = true, -- also highlight non-bracket delimiters
    max_file_lines = nil, -- do not enable for files with more than {int} lines
  },
}
