return {
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = {
					"prettier",
					"stylua",
					"shfmt",
					"cpplint",
					"clang-format",
					"eslint_d",
				},
				run_on_start = true,
				start_delay = 2000,
				debounce_hours = 5,
			})
		end,
	},
	{
		"mfussenegger/nvim-lint",
		event = {
			"BufReadPre",
			"BufNewFile",
		},
		config = function()
			local lint = require("lint")

			lint.linters_by_ft = {
				javascript = { "eslint_d" },
				typescript = { "eslint_d" },
				javascriptreact = { "eslint_d" },
				typescriptreact = { "eslint_d" },
				svelte = { "eslint_d" },
				cpp = { "cpplint" },
			}

			local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

			vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
				group = lint_augroup,
				callback = function()
					lint.try_lint()
				end,
			})
		end,
	},
	{
		"stevearc/conform.nvim",
		event = {
			"BufReadPre",
			"BufNewFile",
		},
		config = function()
			local conform = require("conform")

			conform.setup({
				format_on_save = { lsp_format = "fallback" },
				formatters_by_ft = {
					lua = { "stylua" },
					svelte = { "prettier" },
					javascript = { "prettier" },
					typescript = { "prettier" },
					javascriptreact = { "prettier" },
					typescriptreact = { "prettier" },
					json = { "prettier" },
					graphql = { "prettier" },
					java = { "google-java-format" },
					kotlin = { "ktlint" },
					ruby = { "standardrb" },
					markdown = { "prettier" },
					erb = { "htmlbeautifier" },
					html = { "htmlbeautifier" },
					bash = { "shfmt" },
					proto = { "buf" },
					rust = { "rustfmt" },
					yaml = { "yamlfix" },
					css = { "prettier" },
					scss = { "prettier" },
					cpp = { "clang-format" },
				},
			})
		end,
	},
}
