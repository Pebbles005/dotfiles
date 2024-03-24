return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
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
			"css",
			"javascript",
			"json",
			"lua",
			"markdown",
			"markdown_inline",
			"python",
			"query",
			"svelte",
			"typescript",
			"vim",
			"vimdoc",
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
