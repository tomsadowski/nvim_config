-- KEYMAPS ------------------------------------------

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
-- enter insert
vim.keymap.set({"n", "v"}, "h", "o")
vim.keymap.set({"n", "v"}, "H", "O")
vim.keymap.set({"n", "v"}, "t", "i")
vim.keymap.set({"n", "v"}, "T", "I")
-- fold
vim.keymap.set({"n"}, "Fg", "zR") -- Open all
vim.keymap.set({"n"}, "Fm", "zM") -- Close all
vim.keymap.set({"n"}, "fg", "zr") -- Open one level
vim.keymap.set({"n"}, "fm", "zm") -- Close one level
vim.keymap.set({"n"}, "fo", "zk") -- previous
vim.keymap.set({"n"}, "fi", "zj") -- next
vim.keymap.set({"n"}, "ff", "za") -- Toggle fold under cursor
-- window
vim.keymap.set({"n"}, "<C-w><Left>", "<C-w>H")    -- move window left
vim.keymap.set({"n"}, "<C-w><Down>", "<C-w>J")    -- move window down
vim.keymap.set({"n"}, "<C-w><Up>", "<C-w>K")      -- move window up
vim.keymap.set({"n"}, "<C-w><Right>", "<C-w>L")   -- move window right
-- movement
vim.keymap.set({"n", "v"}, "e", "h")              -- cursor left
vim.keymap.set({"n", "v"}, "<Left>", "h")            
vim.keymap.set({"n", "v"}, "n", "l")              -- cursor right
vim.keymap.set({"n", "v"}, "<Right>", "l")          
vim.keymap.set({"n", "v"}, "i", "j")              -- cursor down
vim.keymap.set({"n", "v"}, "<Down>", "j")         
vim.keymap.set({"n", "v"}, "o", "k")              -- cursor up
vim.keymap.set({"n", "v"}, "<Up>", "k")           
vim.keymap.set({"n", "v"}, "W", "N")              -- previous occurence of search
vim.keymap.set({"n", "v"}, "w", "n")              -- next occurence of search
vim.keymap.set({"n", "v"}, "<C-e>", "zh")         -- screen left
vim.keymap.set({"n", "v"}, "<C-n>", "zl")         -- screen right
vim.keymap.set({"n", "v"}, "I", "<C-y>")          -- screen down
vim.keymap.set({"n", "v"}, "O", "<C-e>")          -- screen up
vim.keymap.set({"n", "v"}, "<S-e>", "b")          -- word left
vim.keymap.set({"n", "v"}, "<S-n>", "w")          -- word right
vim.keymap.set({"n", "v"}, "ZZ", "zz")            -- center screen (NO EXIT)
vim.keymap.set({"n", "v"}, "<C-o>", "kzz")        -- scroll screen and cursor up
vim.keymap.set({"n", "v"}, "<C-i>", "jzz")        -- scroll screen and cursor down
vim.keymap.set({"n"}, "<PageDown>", "10jzz")      -- scroll screen and cursor down 10x
vim.keymap.set({"n"}, "<PageUp>", "10kzz")        -- scroll screen and cursor up 10x
vim.keymap.set({"n"}, "<S-Left>", "<cmd>bp<CR>")  -- previous buffer
vim.keymap.set({"n"}, "<S-Right>", "<cmd>bn<CR>") -- next buffer
vim.keymap.set({"n"}, "<C-Down>", "<C-i>")        -- next jump
vim.keymap.set({"n"}, "<C-Up>", "<C-o>")          -- previous jump

