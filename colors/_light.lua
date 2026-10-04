-- light

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

  keyword    = p.magenta,

  msgarea    = p.white, 
  normal     = p.white, 
  curlineno  = p.white, 

  comment    = p.dgrey, 

  path       = p.white, 
  trunk      = p.white,
  func       = p.white, 
  caller     = p.yellow,
  memberdecl = p.yellow, 
  import     = p.yellow,
  variant    = p.yellow, 
  variable   = p.yellow, 
  typeparam  = p.yellow,
  item       = p.yellow, 

  type       = p.white, 
  btype      = p.white, 
  constant   = p.yellow, 

  literal    = p.cyan, 
  str        = p.cyan, 
  matchparen = p.cyan, 
}
