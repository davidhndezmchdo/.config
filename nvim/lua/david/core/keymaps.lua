vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<TAB>", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<S-TAB>", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Compile the document
keymap.set("n", "<leader>lb", ":VimtexCompile<CR>", { noremap = true, silent = true })

-- View the PDF
keymap.set("n", "<leader>lv", ":VimtexView<CR>", { noremap = true, silent = true })

-- Stop compilation
keymap.set("n", "<leader>lk", ":VimtexStop<CR>", { noremap = true, silent = true })

-- Clean auxiliary files
keymap.set("n", "<leader>lc", ":VimtexClean<CR>", { noremap = true, silent = true })

-- Toggle automatic compilation
keymap.set("n", "<leader>lt", ":VimtexCompileToggle<CR>", { noremap = true, silent = true })

-- Forward search from PDF viewer
keymap.set("n", "<leader>lf", ":VimtexInverseSearch<CR>", { noremap = true, silent = true })

-- Show document structure
keymap.set("n", "<leader>ls", ":VimtexTocToggle<CR>", { noremap = true, silent = true })

-- Toggle quickfix window
keymap.set("n", "<leader>lq", ":VimtexErrors<CR>", { noremap = true, silent = true })
