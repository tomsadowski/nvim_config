-- overcast

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

  p.white.g    = "#f0f0f0"
  p.dgrey.g    = "#555555"
  p.grey.g     = "#888888"
  p.dcyan.g    = "#0040c0"
  p.red.g      = "#a06000"
  p.dmagenta.g = "#a000a0"

c.apply {
  canvas     = p.white, 

  search     = p.cyan, 
  visual     = p.yellow, 
  diagund    = p.green,
  signcol    = p.grey, 

  lineno     = p.grey, 
  msgarea    = p.grey, 

  normal     = p.dgrey, 
  variable   = p.black, 
  typeparam  = p.black,
  curlineno  = p.black, 

  comment    = p.grey, 
  constant   = p.red, 
  literal    = p.red, 
  str        = p.red, 

  keyword    = p.dmagenta,

  type       = p.dcyan, 
  item       = p.dcyan, 
  matchparen = p.dcyan, 
  func       = p.dcyan, 
  btype      = p.dcyan, 
}
