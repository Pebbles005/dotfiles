return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = false,
				component_separators = "",
				section_separators = "",
				always_divide_middle = true,
				globalstatus = true,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = {},
				lualine_b = { "branch" },
				lualine_c = {
					"diff",
					"diagnostics",
					{
						"filename",
						path = 1,
						shorting_target = 40,
					},
				},
				lualine_x = { "filetype" },
				lualine_y = { "progress" },
				lualine_z = {},
			},
		})
	end,
}
