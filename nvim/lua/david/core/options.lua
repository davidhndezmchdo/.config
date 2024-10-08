vim.cmd("let g:netrw_liststyle =3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true

opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

--clipboard
-- opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true
opt.splitbelow = true

-- Enable mouse mode
opt.mouse = "a"

opt.showmode = false

-- Decrease update time
opt.updatetime = 250

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
opt.timeoutlen = 300

opt.list = true
opt.listchars = { tab = "| ", trail = "·", nbsp = "␣" }
-- opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

opt.scrolloff = 10

opt.swapfile = false
opt.writebackup = false

-- EDIT
opt.spell = true
opt.spelllang = { "en_us" }
opt.autoread = true
