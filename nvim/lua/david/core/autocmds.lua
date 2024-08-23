local api = vim.api

-- close help, man, qf, lspinfo with 'q'\
api.nvim_create_autocmd("FileType", {
	pattern = { "man", "help", "qf", "lspinfo" }, -- "startuptime",
	command = "nnoremap <buffer><silent> q :close<CR>",
})

api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = api.nvim_create_augroup("highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

api.nvim_create_autocmd({ "BufEnter", "BufReadPre", "BufNewFile" }, {
	pattern = { "*.md" },
	command = "lua set_markdown_keymaps()",
})
