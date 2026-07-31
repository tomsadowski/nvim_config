-- SETTINGS

-- search
-- Case-insensitive searching UNLESS \C or one or more 
-- capital letters in the search term
--vim.o.ignorecase = true
vim.o.smartcase = true

-- split
vim.o.splitright = true

-- text view
vim.o.scrolloff = 10
vim.o.wrap = true

-- tab
vim.o.expandtab = true
vim.o.shiftwidth=2
vim.o.tabstop=2

-- perimeter
vim.o.number = true   
vim.o.laststatus = 1  
vim.o.signcolumn = 'yes'

-- fold
vim.o.foldmethod = 'syntax'
vim.o.foldenable = false
--vim.cmd('set foldlevelstart=99') 

-- CursorLineNr	Like LineNr when 'cursorline' is set and 'cursorlineopt'
-- contains "number" or is "both", for the cursor line.
vim.o.cursorline = true
vim.o.cursorlineopt = "number"

-- needed to paste text from clipboard
vim.cmd('set mouse=')

-- lsp
vim.cmd "com LspCap lua =vim.lsp.get_clients()[1].server_capabilities"
vim.cmd "com LspStop lua vim.lsp.stop_client(vim.lsp.get_clients())"

-- misc
vim.o.undofile = false
-- Decrease update time
vim.o.updatetime = 250
-- Decrease mapped sequence wait time
vim.o.timeoutlen = 300
