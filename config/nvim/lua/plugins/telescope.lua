return {
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
		},
		config = function()
			require("telescope").setup({
				defaults = {
					preview = false,
					layout_config = {
						preview_cutoff = 80,
						preview_width = 0.5,
					},
					file_ignore_patterns = {
						"node_modules",
						"%.git",
					},
					borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
				},
				pickers = {
					git_commits = {
						preview = true,
					},
					git_status = {
						preview = true,
					},
				},
				extensions = {
					["ui-select"] = {},
				},
			})
			require("telescope").load_extension("ui-select")
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[S]earch [F]iles" })
			vim.keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
			vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "git commits" })
			vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "git status" })
			vim.keymap.set({ "n", "v" }, "<leader>fw", function()
				builtin.grep_string({
					word_match = "-w",
				})
			end, { desc = "[S]earch current [W]ord" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
			vim.keymap.set(
				"n",
				"<leader>/",
				builtin.current_buffer_fuzzy_find,
				{ desc = "[/] Fuzzily search in current buffer" }
			)
			vim.keymap.set("n", "<leader>f/", function()
				builtin.live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end, { desc = "[S]earch [/] in Open Files" })
		end,
	},
}
