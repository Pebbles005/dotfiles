return {
	"nvim-lualine/lualine.nvim",
	event = "VeryLazy",
	config = function()
		local normal_fg = vim.fn.synIDattr(vim.fn.hlID("NormalMode"), "fg")

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
				lualine_b = { { "branch", color = { fg = normal_fg } } },
				lualine_c = {
					"diff",
					"diagnostics",
					{
						"filename",
						path = 1,
					},
				},
				lualine_x = { "%y" },
				lualine_y = { { "progress", color = { fg = normal_fg } } },
				lualine_z = {},
			},
		})
	end,
}
