return {
	"stevearc/oil.nvim",
	opts = {},
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			default_file_explorer = true,
			prompt_save_on_select_new_entry = true,
			cleanup_delay_ms = 1000,
			view_options = {
				show_hidden = true,
			},
			keymaps = {
				["<C-e>"] = "actions.close",
				["<C-h>"] = "actions.toggle_hidden",
				["<C-o>"] = "actions.select",
				["<C-s>"] = false,
			},
			keymaps_help = {
				border = "single",
			},
			float = {
				border = "single",
			},
			ssh = {
				border = "single",
			},
			progress = {
				border = "single",
			},
		})
	end,
}
