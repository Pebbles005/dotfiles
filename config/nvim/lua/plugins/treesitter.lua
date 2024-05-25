return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	build = ":TSUpdate",
	opts = {
		auto_install = true,
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"css",
			"html",
			"javascript",
			"typescript",
			"json",
			"lua",
			"markdown",
			"python",
			"svelte",
			"typescript",
			"vim",
		},
		highlight = {
			enable = true,
			use_languagetree = true,
		},

		indent = { enable = true },
	},
	config = function(_, opts)
		require("nvim-treesitter.configs").setup(opts)
	end,
}
