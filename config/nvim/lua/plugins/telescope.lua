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
	{
		"nvim-telescope/telescope.nvim",
		event = "VimEnter",
		tag = "0.1.6",
		dependencies = {
			"nvim-lua/plenary.nvim",
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
		},
		config = function()
			require("telescope").setup({
				defaults = {
					layout_config = {
						preview_cutoff = 80,
					},
					file_ignore_patterns = {
						"node_modules",
						"%.git",
					},
					borderchars = {
						"─",
						"│",
						"─",
						"│",
						"┌",
						"┐",
						"┘",
						"└",
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", function()
				builtin.find_files(no_preview())
			end, { desc = "[S]earch [F]iles" })
			vim.keymap.set("n", "<leader><leader>", function()
				builtin.buffers(no_preview())
			end, { desc = "[ ] Find existing buffers" })
			vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
			vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "git commits" })
			vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "git status" })
			vim.keymap.set({ "n", "v" }, "<leader>fw", function()
				builtin.grep_string({
					word_match = "-w",
				})
			end, { desc = "[S]earch current [W]ord" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
			vim.keymap.set("n", "<leader>/", function()
				builtin.current_buffer_fuzzy_find()
			end, { desc = "[/] Fuzzily search in current buffer" })
			vim.keymap.set("n", "<leader>f/", function()
				builtin.live_grep({
					grep_open_files = true,
					prompt_title = "Live Grep in Open Files",
				})
			end, { desc = "[S]earch [/] in Open Files" })
		end,
	},
}
