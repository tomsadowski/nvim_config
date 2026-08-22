-- tricolor

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

local CONSTANT = ""

c.apply {
  search     = p.dyellow, 
  visual     = p.dblue, 
  diagund    = p.dmagenta,

  canvas     = p.black, 

  signcol    = p.dgrey, 
  lineno     = p.dgrey, 
  msgarea    = p.dgrey, 
  comment    = p.dgrey, 

  normal     = p.dgrey, 
  curlineno  = p.white, 
  import     = p.white,
  trunk      = p.white,
  path       = p.white, 
  variant    = p.white, 
  variable   = p.white, 
  func       = p.white, 

  keyword    = p.magenta,
  typeparam  = p.yellow,
  item       = p.yellow, 
  type       = p.yellow, 
  btype      = p.yellow, 
  constant   = p.yellow, 
  literal    = p.cyan, 
  str        = p.cyan, 
  matchparen = p.cyan, 
}
