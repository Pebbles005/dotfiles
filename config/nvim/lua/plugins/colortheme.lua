return {
	"rmehri01/onenord.nvim",
	config = function()
		require("onenord").setup({
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
		})
		vim.cmd.colorscheme("onenord")
	end,
}
