local no_preview = function()
	return require("telescope.themes").get_dropdown({
		borderchars = {
			prompt = { "─", "│", " ", "│", "┌", "┐", "│", "│" },
			results = { "─", "│", "─", "│", "├", "┤", "┘", "└" },
		},
		previewer = false,
	})
end
return {
	{ -- Fuzzy Finder (files, lsp, etc)
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		branch = "0.1.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("telescope").setup({
				defaults = {
					previewer = false,
					file_ignore_patterns = {
						"node_modules",
						"%.git",
					},
					borderchars = {
						prompt = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
						results = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							borderchars = {
								prompt = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
								results = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
							},
						}),
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[S]earch [F]iles" })
			vim.keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
			vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
			vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
			vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "git commits" })
			vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "git status" })
			vim.keymap.set("n", "<leader>/", function()
				builtin.current_buffer_fuzzy_find(no_preview())
			end, { desc = "[/] Fuzzily search in current buffer" })
			vim.keymap.set("n", "<leader>f/", function()
				builtin.live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end, { desc = "[S]earch [/] in Open Files" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						no_preview(),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
