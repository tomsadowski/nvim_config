-- light

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.grey.g    = "#e0e0e0"
p.dgreen.g  = "#307000"
p.magenta.g = "#c000f0"
p.blue.g    = "#0050e0"
p.red.g     = "#e02000"

c.apply {
  canvas     = p.white, 

  search     = p.cyan, 
  visual     = p.yellow, 
  diagund    = p.grey,

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
