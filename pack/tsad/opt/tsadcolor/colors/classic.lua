-- classic

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

c.apply {
  canvas     = p.white, 

  search     = p.cyan, 
  visual     = p.yellow, 
  diagund    = p.green,
  signcol    = p.dgreen, 

  lineno     = p.grey, 
  msgarea    = p.dgrey, 

  comment    = p.magenta, 
  keyword    = p.blue,
  constant   = p.red, 
  literal    = p.red, 
  str        = p.red, 
  typeparam  = p.red,
  type       = p.black, 

  curlineno  = p.black, 
  normal     = p.dgrey, 
  item       = p.black, 
  matchparen = p.black, 
  func       = p.black, 
  variable   = p.black, 
  btype      = p.black, 
}
