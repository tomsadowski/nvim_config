-- make sure you have the lsp libraries on your path
vim.cmd "packadd! tsadlsp"
require "tsad_lsp_settings"

vim.cmd "packadd! pearbear"
require "pearbear_keymaps"

require "settings"

-- uncomment this once vim.pack is in the stable release
--
--vim.pack.add({
--  { 
--    src = 'https://github.com/tomsadowski/tsad_nvim_colorschemes',
--    name = 'tsad_colorschemes',
--    version = 'main',
--  },
--})
--require "tsad_colorschemes"

vim.cmd "packadd! tsadcolor"
vim.cmd "colo current"
