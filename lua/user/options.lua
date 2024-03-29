local options = {
	autoread = true,
	backup = false,                            -- creates a backup file
	clipboard = "unnamedplus",                 -- allows neovim to access the system clipboard
	cmdheight = 1,                             -- space on the bottom of the window for the command line
	completeopt = { "menuone", "noselect" },   -- mostly just for cmp
	conceallevel = 0,                          -- so that `` is visible in markdown files
	fileencoding = "utf-8",                    -- the encoding written to a file
	hlsearch = true,                           -- highlight all matches on previous search pattern
	ignorecase = true,                         -- ignore case in search patterns
	mouse = "a",                               -- allow the mouse to be used in neovim
	pumheight = 10,                            -- pop up menu height
	showmode = false,                          -- we don't need to see things like -- INSERT -- anymore
	showtabline = 1,                           -- always show tabs
	smartcase = true,                          -- smart case
	smartindent = true,                        -- make indenting smarter again
	splitbelow = true,                         -- force all horizontal splits to go below current window
	splitright = true,                         -- force all vertical splits to go to the right of current window
	swapfile = false,                          -- creates a swapfile
	timeoutlen = 1000,                         -- time to wait for a mapped sequence to complete (in milliseconds)
	undofile = true,                           -- enable persistent undo
	updatetime = 300,                          -- faster completion (4000ms default)
	writebackup = false,                       -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
	shiftwidth = 2,                            -- the number of spaces inserted for each indentation
	tabstop = 2,                               -- insert 2 spaces for a tab
	cursorline = false,                        -- highlight the current line
	number = true,                             -- set numbered lines
	relativenumber = true,                     -- set relative numbered lines
	numberwidth = 4,                           -- set number column {default 4}
	signcolumn = "yes",                        -- always show the sign column, otherwise it would shift the text each time
	wrap = true,                               -- display lines as one long line
	linebreak = true,
	scrolloff = 8,                             -- is one of my fav
	sidescrolloff = 8,
	guifont = "MesloLGLDZ Nerd Font Mono:h14", -- the font used in graphical neovim applications
	termguicolors = true,
};

vim.opt.shortmess:append "c"

local globals = {
	rustfmt_autosave = 1,
	neovide_fullscreen = false,
	neovide_remember_window_size = true,
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

for k, v in pairs(globals) do
	vim.g[k] = v
end
