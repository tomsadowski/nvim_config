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
      bold    = true,
    },
    NormalNC = {
      ctermbg = p.canvas.t,
      bg      = p.canvas.g,
      bold    = true,
    },
    SignColumn = {
      ctermbg = p.canvas.t, 
      bg      = p.canvas.g,
      bold    = true,
    }, 
    Search = {
      ctermbg = p.search.t, 
      bg      = p.search.g, 
      bold    = true,
    },
    Visual = {
      ctermbg = p.visual.t, 
      bg      = p.visual.g, 
      bold    = true,
    },
    MatchParen = {
      ctermfg = p.matchparen.t, 
      fg      = p.matchparen.g, 
      bold    = true,
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
      bold    = true,
    }, 

    WarningMsg = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
      bold    = true,
    }, 
    DiagnosticWarn = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
      bold    = true,
    },
    DiagnosticSignWarn = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
      bold    = true,
    },
    DiagnosticVirtualTextWarn = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
      bold    = true,
    },
    DiagnosticVirtualLinesWarn = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
      bold    = true,
    },
    DiagnosticFloatingWarn = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g,
      bold    = true,
    },

    Error = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g,
      bold    = true,
    }, 
    ErrorMsg = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
      bold    = true,
    }, 
    DiagnosticError = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
      bold    = true,
    },
    DiagnosticVirtualTextError = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
      bold    = true,
    },
    DiagnosticVirtualLinesError = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
      bold    = true,
    },
    DiagnosticFloatingError = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g,
      bold    = true,
    },
    DiagnosticSignError = {
      ctermfg = p.signcol.t, 
      fg      = p.signcol.g,
      bold    = true,
    },

    DiagnosticHint = {
      ctermfg = p.signcol.t,
      fg      = p.signcol.g,
      bold    = true,
    },
    DiagnosticVirtualLinesHint  = {link='NONE'},
    DiagnosticVirtualTextHint   = {link='NONE'},
    DiagnosticFloatingHint      = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g,
      bold    = true,
    },
    DiagnosticSignHint          = {link='DiagnosticHint'},

    EndOfBuffer = {
      ctermfg = p.msgarea.t, 
      fg      = p.msgarea.g, 
      bold    = true,
    }, 
    NormalFloat = {
      ctermbg = p.canvas.t, 
      bg      = p.canvas.g,
      bold    = true,
    },
    FloatBorder = {
      ctermfg = p.msgarea.t, 
      fg      = p.msgarea.g,
      ctermbg = p.canvas.t, 
      bg      = p.canvas.g,
      bold    = true,
    }, 
    MsgArea = {
      ctermfg = p.msgarea.t, 
      fg      = p.msgarea.g,
      ctermbg = p.canvas.t, 
      bg      = p.canvas.g,
      bold    = true,
    }, 
    StatusLine = {
      ctermfg = p.msgarea.t,
      fg      = p.msgarea.g, 
      ctermbg = p.canvas.t,
      bg      = p.canvas.g, 
      bold    = true,
    },

    DiffText = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@diff.plus'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    DiffAdd = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    Added = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@diff.delta'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    DiffChange = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    Changed = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@diff.minus'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    DiffDelete = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    Removed = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 

    ['@item'] = {
      ctermfg = p.item.t, 
      fg      = p.item.g, 
      bold    = true,
    }, 

    ['@variable'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
      bold    = true,
    }, 
    Identifier = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
      bold    = true,
    },
    ['@variable.builtin'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
      bold    = true,
    }, 
    ['@variable.member'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
      bold    = true,
    }, 
    ['@variable.parameter'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
      bold    = true,
    }, 
    ['@variable.parameter.builtin'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
      bold    = true,
    }, 
    ['@property'] = {
      ctermfg = p.variable.t, 
      fg      = p.variable.g, 
      bold    = true,
    }, 

    ['@constant'] = {
      ctermfg = p.constant.t, 
      fg      = p.constant.g, 
      bold    = true,
    }, 
    Constant = {
      ctermfg = p.constant.t, 
      fg      = p.constant.g, 
      bold    = true,
    }, 
    ['@constant.builtin'] = {
      ctermfg = p.constant.t, 
      fg      = p.constant.g, 
      bold    = true,
    }, 
    ['@constant.macro'] = {
      ctermfg = p.constant.t, 
      fg      = p.constant.g, 
      bold    = true,
    }, 

    ['@number'] = {
      ctermfg = p.literal.t, 
      fg      = p.literal.g, 
      bold    = true,
    }, 
    Number = {
      ctermfg = p.literal.t, 
      fg      = p.literal.g, 
      bold    = true,
    }, 
    ['@number.float'] = {
      ctermfg = p.literal.t, 
      fg      = p.literal.g, 
      bold    = true,
    }, 
    Float = {
      ctermfg = p.literal.t, 
      fg      = p.literal.g, 
      bold    = true,
    }, 

    ['@comment'] = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
    }, 
    Comment = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
      bold    = true,
    }, 
    SpecialComment = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
      bold    = true,
    }, 
    ['@comment.documentation'] = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
      bold    = true,
    }, 
    ['@comment.error'] = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
      bold    = true,
    }, 
    ['@comment.warning'] = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
      bold    = true,
    }, 
    ['@comment.todo'] = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
      bold    = true,
    }, 
    ['@comment.note'] = {
      ctermfg = p.comment.t, 
      fg      = p.comment.g, 
      bold    = true,
    }, 

    ['@punctuation'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@punctuation.delimiter'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    Delimiter = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    },
    ['@punctuation.bracket'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@punctuation.special'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@punctuation.special.query'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 

    ['@operator'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    Operator = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@operator.try'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 

    ['@keyword'] = {
      ctermfg = p.keyword.t, 
      fg      = p.keyword.g, 
      bold    = true,
    }, 
    Keyword = {
      ctermfg = p.keyword.t, 
      fg      = p.keyword.g, 
      bold    = true,
    }, 
    ['@keyword.coroutine'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@keyword.function'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@keyword.operator'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@keyword.import'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@keyword.type'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@keyword.modifier'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    StorageClass = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    },
    ['@keyword.repeat'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    Repeat = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    },
    ['@keyword.return'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@keyword.debug'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    Debug = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@keyword.exception'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@keyword.conditional'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@keyword.conditional.ternary'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@keyword.directive'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@keyword.directive.define'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 

    ['@character'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    }, 
    Character = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    }, 
    ['@character.special'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    }, 
    SpecialChar = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    }, 
    Special = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    }, 

    ['@string'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    }, 
    String = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    },
    ['@string.documentation'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    }, 
    ['@string.regexp'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    }, 
    ['@string.escape'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    }, 
    ['@string.special'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    }, 
    ['@string.special.symbol'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    }, 
    ['@string.special.path'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    }, 
    ['@string.special.url'] = {
      ctermfg = p.str.t, 
      fg      = p.str.g, 
      bold    = true,
    }, 

    ['@function'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
      bold    = true,
    }, 
    Function = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
      bold    = true,
    },
    ['@function.builtin'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
      bold    = true,
    }, 
    ['@function.method'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
      bold    = true,
    }, 
    ['@function.call'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
      bold    = true,
    },
    ['@function.method.call'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
      bold    = true,
    },
    ['@function.macro'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
      bold    = true,
    }, 
    Macro = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@constructor'] = {
      ctermfg = p.func.t, 
      fg      = p.func.g, 
      bold    = true,
    }, 

    ['@type'] = {
      ctermfg = p.type.t, 
      fg      = p.type.g, 
      bold    = true,
    },
    Type = {
      ctermfg = p.type.t, 
      fg      = p.type.g, 
      bold    = true,
    },
    ['@type.definition'] = {
      ctermfg = p.type.t, 
      fg      = p.type.g, 
      bold    = true,
    }, 
    Typedef = {
      ctermfg = p.type.t, 
      fg      = p.type.g, 
      bold    = true,
    }, 
    ['@type.builtin'] = {
      ctermfg = p.btype.t, 
      fg      = p.btype.g, 
      bold    = true,
    }, 

    ['@struct'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    Structure = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 

    ['@enum'] = {
      ctermfg = p.type.t, 
      fg      = p.type.g, 
      bold    = true,
    }, 
    Enum = {
      ctermfg = p.type.t, 
      fg      = p.type.g, 
      bold    = true,
    },

    ['@class'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    Class = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    },

    ['@boolean'] = {
      ctermfg = p.literal.t, 
      fg      = p.literal.g, 
      bold    = true,
    }, 
    Boolean = {
      ctermfg = p.literal.t, 
      fg      = p.literal.g, 
      bold    = true,
    },

    DiagnosticUnderlineWarn = {
      ctermbg   = p.diagund.t,
      bg        = p.diagund.g,
      bold    = true,
    },
    DiagnosticUnderlineError = {
      ctermbg   = p.diagund.t,
      bg        = p.diagund.g,
      bold    = true,
    },
    DiagnosticUnderlineHint     = {
      ctermbg   = p.diagund.t,
      bg        = p.diagund.g,
      bold    = true,
    },
    DiagnosticUnderlineInfo     = {
      ctermbg   = p.diagund.t,
      bg        = p.diagund.g,
      bold    = true,
    },
    DiagnosticUnderlineOk       = {
      ctermbg   = p.diagund.t,
      bg        = p.diagund.g,
      bold    = true,
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
      bold    = true,
    }, 

    ['@normal'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@module'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
    }, 
    ['@module.builtin'] = {
      ctermfg = p.normal.t, 
      fg      = p.normal.g, 
      bold    = true,
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
