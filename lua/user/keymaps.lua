local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "J", "o<ESC>^d$", opts)
keymap("n", "K", "O<ESC>^d$", opts)
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Insert --
keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Telescope actions --
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fl", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fc", ":Telescope commands<CR>", opts)

-- LSP --
keymap("n", "<leader>lr", ":Telescope lsp_references<CR>", opts)
keymap("n", "<leader>gd", ":Telescope lsp_definitions<CR>", opts)
keymap("n", "<leader>li", ":Telescope lsp_implementations<CR>", opts)
keymap("n", "<leader>lt", ":Telescope lsp_type_definitions<CR>", opts)

-- Diagnostics --
keymap("n", "<leader>ds", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
keymap("n", "<leader>dn", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
keymap("n", "<leader>dp", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
keymap("n", "<leader>dl", "<cmd>Telescope diagnostics<CR>", opts)

-- NVim config files --
keymap("n", "<leader>vc", ":Telescope find_files search_dirs={'~/.config/nvim'}<CR>", opts)

-- Clear search highlights --
keymap("n", "<leader>sc", ":noh<CR>", opts)

-- Neorg bindings --
keymap("n", "<leader>oi", "<cmd>Neorg index<CR>", opts)
keymap("n", "<leader>oo", "<cmd>e /home/pedrofilipe/notes/work/todos.norg<CR>", opts)
keymap("n", "<leader>or", "<cmd>Neorg return<CR>", opts)

require('leap').add_default_mappings()
