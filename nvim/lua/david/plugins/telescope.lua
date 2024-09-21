return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")
		local themes = require("telescope.themes")

		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
					},
				},
			},
			load_extension = {
				"fzf",
				"yank_history",
				"bibtex",
				"lazygit",
			},
			extensions = {
				bibtex = {
					depth = 1,
					global_files = { "/Users/davidhernandez/Desktop/Nordling_Lab/NordlingLab-Grants-Publications" },
					search_keys = { "author", "year", "title" },

					citation_format = "{{author}} ({{year}}), {{title}}.",
					-- Template for the formatted citation
					citation_trim_firstname = true,
					-- Only use initials for the authors first name
					citation_max_auth = 2,
					-- Max number of authors to write in the formatted citation
					-- following authors will be replaced by "et al."
					custom_formats = {
						{ id = "citet", cite_maker = "\\citet{%s}" },
					},
					-- Custom format for citation label
					format = "citet",
					-- Format to use for citation label.
					-- Try to match the filetype by default, or use 'plain'
					context = true,
					-- Context awareness disabled by default
					context_fallback = true,
					-- Fallback to global/directory .bib files if context not found
					-- This setting has no effect if context = false
					wrap = false,
					-- Wrapping in the preview window is disabled by default
				},
				["ui-select"] = {
					themes.get_dropdown(),
				},
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("ui-select")

		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		local builtin = require("telescope.builtin")
		keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "[F]ind [H]elp" })
		keymap.set("n", "<leader>fk", builtin.keymaps, { desc = "[F]ind [K]eymaps" })
		keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })
		keymap.set("n", "<leader>fw", builtin.grep_string, { desc = "[F]ind current [W]ord" })
		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
		keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
		keymap.set("n", "<leader><leader>", builtin.buffers, { desc = "[ ] Find existing buffers" })
	end,
}
