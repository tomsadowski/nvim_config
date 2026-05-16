-- black

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

c.apply {
  search     = p.dcyan, 
  visual     = p.dyellow, 
  diagund    = p.dgreen,
  canvas     = p.black, 
  signcol    = p.dgrey, 
  lineno     = p.dgrey, 
  msgarea    = p.dgrey, 
  comment    = p.dgrey, 
  normal     = p.white, 
  curlineno  = p.white, 
  keyword    = p.magenta,
  variable   = p.cyan, 
  typeparam  = p.cyan,
  type       = p.yellow, 
  item       = p.yellow, 
  matchparen = p.yellow, 
  func       = p.yellow, 
  btype      = p.yellow, 
  constant   = p.red, 
  literal    = p.red, 
  str        = p.red, 
}
