return {
	"stevearc/oil.nvim",
	opts = {},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			view_options = {
				show_hidden = true,
			},
			keymaps = {
				["<C-e>"] = "actions.close",
				["<C-h>"] = "actions.toggle_hidden",
				["<C-o>"] = "actions.select",
				["<C-s>"] = "",
			},
			keymaps_help = {
				border = "single",
			},
			float = {
				border = "single",
			},
		})
	end,
}
