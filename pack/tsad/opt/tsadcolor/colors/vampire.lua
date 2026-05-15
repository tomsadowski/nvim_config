-- moonmoss

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)
local p2 = vim.deepcopy(c.palette)


c.apply {
  canvas     = p.black, 

  search     = p.dgreen, 
  visual     = p.dblue, 
  diagund    = p.dred,

  lineno     = p.dgrey, 
  signcol    = p.dgrey, 
  comment    = p.dgrey, 

  keyword    = p.red,
  constant   = p.red, 
  literal    = p.red, 
  str        = p.red, 

  msgarea    = p.dgrey, 
  normal     = p.grey, 
  curlineno  = p.white, 
  item       = p.white, 
  matchparen = p.white, 
  type       = p.white, 
  func       = p.white, 
  variable   = p.white, 
  btype      = p.white, 
  typeparam  = p.white,
}
