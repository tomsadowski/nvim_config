-- overcast

require "treesitter"
local c = require "bcolor"
local p = vim.deepcopy(c.palette)

  p.white.g    = "#dddddd"
  p.dgrey.g    = "#555555"
  p.grey.g     = "#888888"
  p.dcyan.g    = "#004080"
  p.red.g      = "#a06000"
  p.dmagenta.g = "#800080"

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
