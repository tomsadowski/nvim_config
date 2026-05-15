-- light

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

c.apply {
  canvas     = p.white, 

  search     = p.cyan, 
  visual     = p.yellow, 
  diagund    = p.green,

  signcol    = p.dgrey, 
  lineno     = p.dgrey, 
  msgarea    = p.dgrey, 
  comment    = p.dgrey, 

  normal     = p.black, 
  curlineno  = p.black, 

  variable   = p.blue, 
  typeparam  = p.blue,

  type       = p.dgreen, 
  item       = p.dgreen, 
  matchparen = p.dgreen, 
  func       = p.dgreen, 
  btype      = p.dgreen, 

  constant   = p.magenta, 
  literal    = p.magenta, 
  str        = p.magenta, 

  keyword    = p.red,
}
