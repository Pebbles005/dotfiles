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
