local ok, config = pcall(require, "neorg")
if not ok then
	vim.notify "error loading neorg"
end

config.setup {
	load = {
		["core.defaults"] = {}, -- Loads default behaviour
		["core.concealer"] = {
			config = {
				icons = {
					todo = {
						done = {
							icon = "",
						},
						urgent = {
							icon = "",
						},
						uncertain = {
							icon = "",
						},
						pending = {
							icon = "",
						},
						recurring = {
							icon = "",
						},
					},
				},
			},
		},                -- Adds pretty icons to your documents
		["core.dirman"] = { -- Manages Neorg workspaces
			config = {
				workspaces = {
					work = "~/notes/work",
					home = "~/notes/home",
				},
				default_workspace = "work",
			},
		},
		["core.completion"] = {
			config = {
				engine = "nvim-cmp",
			},
		},
	},
}
