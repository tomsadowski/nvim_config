-- ya

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

c.apply {
  search     = p.dyellow, 
  visual     = p.dblue, 
  diagund    = p.dmagenta,

  canvas     = p.black, 

  signcol    = p.dgrey, 
  lineno     = p.dgrey, 

  keyword    = p.red,

  msgarea    = p.white, 
  normal     = p.white, 
  curlineno  = p.white, 

  comment    = p.dgrey, 

  path       = p.white, 
  trunk      = p.white,
  caller     = p.yellow,
  func       = p.white, 
  memberdecl = p.yellow, 
  import     = p.yellow,
  variant    = p.yellow, 
  variable   = p.yellow, 
  typeparam  = p.yellow,
  item       = p.yellow, 

  type       = p.magenta, 
  btype      = p.magenta, 
  constant   = p.yellow, 

  literal    = p.cyan, 
  str        = p.cyan, 
  matchparen = p.cyan, 
}
