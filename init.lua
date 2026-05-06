--DEFAULTS                                                *lsp-defaults*

--When the Nvim LSP client starts it enables diagnostics |vim.diagnostic| (see
--|vim.diagnostic.config()| to customize). It also sets various default options,
--listed below, if (1) the language server supports the functionality and (2)
--the options are empty or were set by the builtin runtime (ftplugin) files. The
--options are not restored when the LSP client is stopped or detached.

--GLOBAL DEFAULTS
--                                          *grr* *gra* *grn* *gri* *grt* *i_CTRL-S*
--These GLOBAL keymaps are created unconditionally when Nvim starts:
--- "grn" is mapped in Normal mode to |vim.lsp.buf.rename()|
--- "gra" is mapped in Normal and Visual mode to |vim.lsp.buf.code_action()|
--- "grr" is mapped in Normal mode to |vim.lsp.buf.references()|
--- "gri" is mapped in Normal mode to |vim.lsp.buf.implementation()|
--- "grt" is mapped in Normal mode to |vim.lsp.buf.type_definition()|
--- "gO" is mapped in Normal mode to |vim.lsp.buf.document_symbol()|
--- CTRL-S is mapped in Insert mode to |vim.lsp.buf.signature_help()|

--BUFFER-LOCAL DEFAULTS
--- 'omnifunc' is set to |vim.lsp.omnifunc()|, use |i_CTRL-X_CTRL-O| to trigger
--  completion.
--- 'tagfunc' is set to |vim.lsp.tagfunc()|. This enables features like
--  go-to-definition, |:tjump|, and keymaps like |CTRL-]|, |CTRL-W_]|,
--  |CTRL-W_}| to utilize the language server.
--- 'formatexpr' is set to |vim.lsp.formatexpr()|, so you can format lines via
--  |gq| if the language server supports it.
--  - To opt out of this use |gw| instead of gq, or clear 'formatexpr' on |LspAttach|.
--- |K| is mapped to |vim.lsp.buf.hover()| unless |'keywordprg'| is customized or
--  a custom keymap for `K` exists.
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
