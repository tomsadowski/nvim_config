-- moss

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = vim.env.MOSS_BLACK
p.dgrey.g    = vim.env.MOSS_DGREY
p.grey.g     = vim.env.MOSS_GREY
p.white.g    = vim.env.MOSS_WHITE

-- commenting 
-- commenting again
p.cyan.g     = vim.env.MOSS_CYAN
p.red.g      = vim.env.MOSS_RED
p.green.g    = vim.env.MOSS_GREEN
p.magenta.g  = vim.env.MOSS_MAGENTA

p.dmagenta.g = vim.env.MOSS_DMAGENTA
p.dyellow.g  = vim.env.MOSS_DYELLOW
p.dblue.g    = vim.env.MOSS_DBLUE

-- commenting 
-- commenting again
local CONSTANT = ""

c.apply {
  search     = p.dyellow, 
  visual     = p.dblue, 
  diagund    = p.dmagenta,

  canvas     = p.black, 

  signcol    = p.dgrey, 
  lineno     = p.dgrey, 

  keyword    = p.red,

  msgarea    = p.grey, 
  normal     = p.grey, 
  curlineno  = p.grey, 

  comment    = p.cyan, 

  path       = p.grey, 
  trunk      = p.grey,
  caller     = p.grey,
  memberdecl = p.white, 
  import     = p.white,
  variant    = p.white, 
  variable   = p.white, 
  func       = p.white, 
  typeparam  = p.white,
  item       = p.white, 

  type       = p.green, 
  btype      = p.green, 
  constant   = p.green, 

  literal    = p.magenta, 
  str        = p.magenta, 
  matchparen = p.magenta, 
}
