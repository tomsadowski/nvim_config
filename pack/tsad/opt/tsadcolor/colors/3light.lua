-- light

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.grey.g    = "#e0e0e0"
p.dgreen.g  = "#308000"
p.magenta.g = "#b000f0"
p.blue.g    = "#0060f0"
p.red.g     = "#c02000"

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

  type       = p.red, 
  item       = p.red, 
  matchparen = p.red, 
  func       = p.red, 
  btype      = p.red, 

  constant   = p.dgreen, 
  literal    = p.dgreen, 
  str        = p.dgreen, 

  keyword    = p.magenta,
}
