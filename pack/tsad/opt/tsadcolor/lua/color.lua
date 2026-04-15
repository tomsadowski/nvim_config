local M = {}

M.palette = {
  black    = {t =  0, g = "#000000"},
  dgrey    = {t =  8, g = "#808080"},
  grey     = {t =  7, g = "#c0c0c0"},
  white    = {t = 15, g = "#ffffff"},

  dred     = {t =  1, g = "#800000"},
  dgreen   = {t =  2, g = "#008000"},
  dblue    = {t =  4, g = "#000080"},

  red      = {t =  9, g = "#ff0000"},
  green    = {t = 10, g = "#00ff00"},
  blue     = {t = 12, g = "#0000ff"},

  dyellow  = {t =  3, g = "#808000"},
  dcyan    = {t =  6, g = "#008080"},
  dmagenta = {t =  5, g = "#800080"},

  yellow   = {t = 11, g = "#ffff00"},
  cyan     = {t = 14, g = "#00ffff"},
  magenta  = {t = 13, g = "#ff00ff"},
}

M.apply = function(p)
  local hl_groups = {
    Normal = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      ctermbg = p.canvas.t,
      bg      = p.canvas.g,
    },
    NormalNC = {
      ctermbg = p.canvas.t,
      bg      = p.canvas.g,
    },
    SignColumn = {
      ctermbg = p.canvas.t, 
      bg      = p.canvas.g
    }, 
    Search = {
      ctermbg = p.search.t, 
      bg      = p.search.g, 
    },
    Visual = {
      ctermbg = p.visual.t, 
      bg      = p.visual.g, 
    },
    MatchParen = {
      ctermfg = p.matchparen.t, 
      fg      = p.matchparen.g, 
    }, 
    LineNr = {
      ctermfg = p.lineno.t, 
      fg      = p.lineno.g, 
      ctermbg = p.canvas.t, 
      bg      = p.canvas.g, 
    }, 

    CursorLineNr = {
      ctermfg = p.curlineno.t, 
      fg      = p.curlineno.g,
    }, 

    WarningMsg = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
    }, 
    DiagnosticWarn = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
    },
    DiagnosticSignWarn = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
    },
    DiagnosticVirtualTextWarn = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
    },
    DiagnosticVirtualLinesWarn = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
    },
    DiagnosticFloatingWarn = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g,
    },

    Error = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g
    }, 
    ErrorMsg = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
    }, 
    DiagnosticError = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
    },
    DiagnosticVirtualTextError = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
    },
    DiagnosticVirtualLinesError = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
    },
    DiagnosticFloatingError = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g,
    },
    DiagnosticSignError = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
    },

    DiagnosticHint = {
      ctermfg = p.signcol.t,
      fg      = p.signcol.g,
    },
    DiagnosticVirtualLinesHint  = {link='NONE'},
    DiagnosticVirtualTextHint   = {link='NONE'},
    DiagnosticFloatingHint      = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g,
    },
    DiagnosticSignHint          = {link='DiagnosticHint'},

    EndOfBuffer = {
      ctermfg = p.msgarea.t, 
      fg      = p.msgarea.g, 
    }, 
    NormalFloat = {
      ctermbg = p.canvas.t, 
      bg      = p.canvas.g,
    },
    FloatBorder = {
      ctermfg = p.msgarea.t, 
      fg      = p.msgarea.g,
      ctermbg = p.canvas.t, 
      bg      = p.canvas.g,
    }, 
    MsgArea = {
      ctermfg = p.msgarea.t, 
      fg      = p.msgarea.g,
      ctermbg = p.canvas.t, 
      bg      = p.canvas.g,
    }, 
    StatusLine = {
      ctermfg = p.msgarea.t,
      fg      = p.msgarea.g, 
      ctermbg = p.canvas.t,
      bg      = p.canvas.g, 
    },

    DiffText = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@diff.plus'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    DiffAdd = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    Added = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@diff.delta'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    DiffChange = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    Changed = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@diff.minus'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    DiffDelete = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    Removed = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 

    ['@item'] = {
      ctermfg = p.item.t, 
      fg      = p.item.g, 
    }, 

    ['@variable'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
    }, 
    Identifier = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
    },
    ['@variable.builtin'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
    }, 
    ['@variable.member'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
    }, 
    ['@variable.parameter'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
    }, 
    ['@variable.parameter.builtin'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
    }, 
    ['@property'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
    }, 

    ['@constant'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
    }, 
    Constant = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
    }, 
    ['@constant.builtin'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
    }, 
    ['@constant.macro'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
    }, 

    ['@number'] = {
      ctermfg = p.literal.t, 
      fg      = p.literal.g, 
    }, 
    Number = {
      ctermfg = p.literal.t, 
      fg      = p.literal.g, 
    }, 
    ['@number.float'] = {
      ctermfg = p.literal.t, 
      fg      = p.literal.g, 
    }, 
    Float = {
      ctermfg = p.literal.t, 
      fg      = p.literal.g, 
    }, 

    ['@comment'] = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
    }, 
    Comment = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
    }, 
    SpecialComment = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
    }, 
    ['@comment.documentation'] = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
    }, 
    ['@comment.error'] = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
    }, 
    ['@comment.warning'] = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
    }, 
    ['@comment.todo'] = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
    }, 
    ['@comment.note'] = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
    }, 

    ['@punctuation'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@punctuation.delimiter'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    Delimiter = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    },
    ['@punctuation.bracket'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@punctuation.special'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@punctuation.special.query'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 

    ['@operator'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    Operator = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@operator.try'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 

    ['@keyword'] = {
      ctermfg = p.keyword.t, 
      fg      = p.keyword.g, 
    }, 
    Keyword = {
      ctermfg = p.keyword.t, 
      fg      = p.keyword.g, 
    }, 
    ['@keyword.coroutine'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@keyword.function'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@keyword.operator'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@keyword.import'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@keyword.type'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@keyword.modifier'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    StorageClass = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    },
    ['@keyword.repeat'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    Repeat = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    },
    ['@keyword.return'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@keyword.debug'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    Debug = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@keyword.exception'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@keyword.conditional'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@keyword.conditional.ternary'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@keyword.directive'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@keyword.directive.define'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 

    ['@character'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    }, 
    Character = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    }, 
    ['@character.special'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    }, 
    SpecialChar = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    }, 
    Special = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    }, 

    ['@string'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    }, 
    String = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    },
    ['@string.documentation'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    }, 
    ['@string.regexp'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    }, 
    ['@string.escape'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    }, 
    ['@string.special'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    }, 
    ['@string.special.symbol'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    }, 
    ['@string.special.path'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    }, 
    ['@string.special.url'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
    }, 

    ['@function'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
    }, 
    Function = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
    },
    ['@function.builtin'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
    }, 
    ['@function.method'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
    }, 
    ['@function.call'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
    },
    ['@function.method.call'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
    },
    ['@function.macro'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
    }, 
    Macro = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@constructor'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
    }, 

    ['@type'] = {
      ctermfg = p.type.t, 
      fg      = p.type.g, 
    },
    Type = {
      ctermfg = p.type.t, 
      fg      = p.type.g, 
    },
    ['@type.definition'] = {
      ctermfg = p.type.t, 
      fg      = p.type.g, 
    }, 
    Typedef = {
      ctermfg = p.type.t, 
      fg      = p.type.g, 
    }, 
    ['@type.builtin'] = {
      ctermfg = p.btype.t, 
      fg      = p.btype.g, 
    }, 

    ['@struct'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    Structure = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 

    ['@enum'] = {
      ctermfg = p.type.t, 
      fg      = p.type.g, 
    }, 
    Enum = {
      ctermfg = p.type.t, 
      fg      = p.type.g, 
    },

    ['@class'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    Class = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    },

    ['@boolean'] = {
      ctermfg = p.literal.t, 
      fg      = p.literal.g, 
    }, 
    Boolean = {
      ctermfg = p.literal.t, 
      fg      = p.literal.g, 
    },

    DiagnosticUnderlineWarn = {
      ctermbg   = p.diagund.t,
      bg        = p.diagund.g,
    },
    DiagnosticUnderlineError = {
      ctermbg   = p.diagund.t,
      bg        = p.diagund.g,
    },
    DiagnosticUnderlineHint     = {
      ctermbg   = p.diagund.t,
      bg        = p.diagund.g,
    },
    DiagnosticUnderlineInfo     = {
      ctermbg   = p.diagund.t,
      bg        = p.diagund.g,
    },
    DiagnosticUnderlineOk       = {
      ctermbg   = p.diagund.t,
      bg        = p.diagund.g,
    },

    Cursor         = {link='Normal'}, 
    lCursor        = {link='Cursor'}, 
    CursorIM       = {link='Cursor'}, 
    CursorColumn   = {link='Cursor'}, 
    CursorLine     = {link='Cursor'}, 
    TermCursor     = {link='Cursor'}, 
    WinSeparator   = {link='Visual'}, 
    WinBar         = {link='Normal'}, 
    WinBarNC       = {link='Normal'}, 
    Folded         = {link='NormalNC'}, 
    FoldColumn     = {link='SignColumn'}, 
    CurSearch      = {link='Search'}, 
    IncSearch      = {link='Search'}, 
    Substitute     = {link='Search'}, 
    LineNrAbove    = {link='LineNr'}, 
    LineNrBelow    = {link='LineNr'}, 
    CursorLineFold = {link='FoldColumn'}, 
    CursorLineSign = {link='SignColumn'}, 
    ModeMsg        = {link='Normal'}, 
    MoreMsg        = {link='Normal'}, 
    MsgSeparator   = {link='Normal'}, 
    NonText        = {link='Normal'}, 
    Whitespace     = {link='Normal'}, 
    FloatTitle     = {link='Comment'}, 
    FloatFooter    = {link='Comment'}, 

    Pmenu          = {link='NormalNC'}, 
    PmenuSel       = {link='Search'}, 
    PmenuKind      = {link='Pmenu'}, 
    PmenuKindSel   = {link='Pmenu'}, 
    PmenuExtra     = {link='Pmenu'}, 
    PmenuExtraSel  = {link='Pmenu'}, 
    PmenuSbar      = {link='Pmenu'}, 
    PmenuThumb     = {link='Pmenu'}, 
    PmenuMatch     = {link='Pmenu'}, 
    PmenuMatchSel  = {link='Pmenu'}, 

    SpellBad       = {link='Normal'}, 
    SpellCap       = {link='Normal'}, 
    SpellLocal     = {link='Normal'}, 
    SpellRare      = {link='Normal'}, 

    StatusLineNC     = {link='StatusLine'}, 
    StatusLineTerm   = {link='StatusLine'}, 
    StatusLineTermNC = {link='StatusLine'}, 

    TabLine     = {link='Normal'}, 
    TabLineFill = {link='Normal'}, 
    TabLineSel  = {link='Normal'},
    VisualNOS      = {link='Visual'}, 
    Directory      = {link='NONE'}, 
    ComplMatchIns  = {link='NONE'}, 
    Question       = {link='NONE'}, 
    QuickFixLine   = {link='NONE'}, 
    SnippetTabstop = {link='NONE'}, 
    SpecialKey     = {link='NONE'}, 
    Title          = {link='NONE'}, 
    WildMenu       = {link='Search'}, 
    ColorColumn    = {link='NONE'}, 
    Conceal        = {link='NONE'}, 

    Statement   = {link='Normal'},
    Conditional = {link='Keyword'},
    Label       = {link='Operator'},
    Exception   = {link='Keyword'},
    PreProc     = {link='Normal'}, 
    Include     = {link='PreProc'},
    Define      = {link='PreProc'}, 
    PreCondit   = {link='Keyword'}, 
    Tag            = {link='Normal'}, 
    Underlined = {link='Normal'}, 
    Ignore     = {link='Normal'}, 
    Todo       = {link='Normal'}, 

    LspReferenceText            = {link='NONE'}, 
    LspReferenceRead            = {link='NONE'},
    LspReferenceWrite           = {link='NONE'},
    LspReferenceTarget          = {link='NONE'},
    LspInlayHint                = {link='NONE'},
    LspCodeLens                 = {link='NONE'},
    LspCodeLensSeparator        = {link='NONE'},
    LspSignatureActiveParameter = {link='NONE'},

    DiagnosticInfo              = {link='NONE'},
    DiagnosticSignInfo          = {link='NONE'},
    DiagnosticFloatingInfo      = {link='NONE'},
    DiagnosticVirtualTextInfo   = {link='NONE'},
    DiagnosticVirtualLinesInfo  = {link='NONE'},

    DiagnosticOk                = {link='NONE'},
    DiagnosticVirtualTextOk     = {link='NONE'},
    DiagnosticVirtualLinesOk    = {link='NONE'},
    DiagnosticSignOk            = {link='NONE'},
    DiagnosticFloatingOk        = {link='NONE'},

    DiagnosticDeprecated        = {link='NONE'},
    DiagnosticUnnecessary       = {link='NONE'},

    ['@type.parameter'] = {
      ctermfg = p.typeparam.t, 
      fg      = p.typeparam.g, 
    }, 

    ['@normal'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@module'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 
    ['@module.builtin'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
    }, 

    ['@attribute']                   = {link='Operator'}, 
    ['@attribute.builtin']           = {link='@keyword'}, 

    ['@tag']                         = {link='@type'}, 
    ['@tag.builtin']                 = {link='@type'}, 
    ['@tag.attribute']               = {link='@type'}, 
    ['@tag.delimiter']               = {link='Delimiter'}, 
    ['@label']                       = {link='Label'}, 
    ['@markup']                      = {link='Normal'}, 
    ['@markup.secondary']            = {link='@markup'}, 
    ['@markup.italic']               = {link='@markup'}, 
    ['@markup.strikethrough']        = {link='@markup'}, 
    ['@markup.underline']            = {link='@markup'}, 
    ['@markup.heading']              = {link='@markup'}, 
    ['@markup.heading1']             = {link='@markup.heading'}, 
    ['@markup.heading2']             = {link='@markup.heading'}, 
    ['@markup.heading3']             = {link='@markup.heading'}, 
    ['@markup.heading4']             = {link='@markup.heading'}, 
    ['@markup.heading5']             = {link='@markup.heading'}, 
    ['@markup.heading6']             = {link='@markup.heading'}, 
    ['@markup.quote']                = {link='@markup'}, 
    ['@markup.math']                 = {link='@markup'}, 
    ['@markup.link']                 = {link='@markup'}, 
    ['@markup.link.label']           = {link='@markup.link'}, 
    ['@markup.link.url']             = {link='@markup.link'}, 
    ['@markup.raw']                  = {link='@markup'}, 
    ['@markup.raw.block']            = {link='@markup.raw'}, 
    ['@markup.list']                 = {link='@markup'}, 
    ['@markup.list.checked']         = {link='@markup.list'}, 
    ['@markup.list.unchecked']       = {link='@markup.list.unchecked'}, 
  }

  vim.cmd("set background=dark")
  vim.cmd("set winborder=rounded")
  vim.cmd("syntax clear")
  vim.cmd("highlight clear")

  vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
      local client = vim.lsp.get_client_by_id(args.data.client_id)
      client.server_capabilities.semanticTokensProvider = nil
    end
  })
  for _, group in ipairs(vim.fn.getcompletion("@lsp", "highlight")) do
    vim.api.nvim_set_hl(0, group, {})
  end
  for k, v in pairs(hl_groups) do
    vim.api.nvim_set_hl(0, k, v)
  end
end

return M
