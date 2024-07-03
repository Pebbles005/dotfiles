return {
	"rmehri01/onenord.nvim",
	config = function()
		require("onenord").setup({
			theme = nil,
			borders = true,
			disable = {
				background = true,
				float_background = true, -- Disable setting the background color for floating windows
				cursorline = true, -- Disable the cursorline
				eob_lines = true, -- Hide the end-of-buffer lines
			},
		})
		vim.cmd.colorscheme("onenord")
	end,
}
