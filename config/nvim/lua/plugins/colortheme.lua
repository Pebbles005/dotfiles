return {
	"rmehri01/onenord.nvim",
	opts = {
		theme = nil,
		borders = true,
		styles = {
			comments = "italic",
		},
		disable = {
			background = true,
			float_background = true,
			cursorline = true,
			eob_lines = true,
		},
	},
	config = function(_, opts)
		require("onenord").setup(opts)
		vim.cmd.colorscheme("onenord")
	end,
}
