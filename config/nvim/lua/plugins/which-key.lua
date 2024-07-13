return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		plugins = {
			presets = {
				operators = false,
				motions = false,
				text_objects = false,
				windows = false,
				nav = false,
				z = false,
				g = false,
			},
		},
		win = {
			border = "single",
		},
		icons = {
			colors = false,
		},
		show_help = false,
		show_keys = false,
	},
}
