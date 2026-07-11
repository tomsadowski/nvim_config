-- bluejay

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#26282c"
p.dgrey.g    = "#707880"
p.white.g    = "#d0c8bc"

p.dmagenta.g = "#384048"
p.dyellow.g  = "#48442c"
p.dblue.g    = "#264448"

p.yellow.g   = "#ffa060"
p.cyan.g     = "#90b0ff"

local CONSTANT = ""

c.apply {
  search     = p.dyellow, 
  visual     = p.dblue, 
  diagund    = p.dmagenta,

  keyword    = p.yellow,
  literal    = p.cyan, 
  str        = p.cyan, 

  canvas     = p.black, 

  signcol    = p.dgrey, 
  lineno     = p.dgrey, 
  msgarea    = p.dgrey, 
  comment    = p.dgrey, 

  curlineno  = p.white, 
  normal     = p.white, 
  matchparen = p.white, 
  func       = p.white, 
  variable   = p.white, 
  typeparam  = p.white,
  item       = p.white, 
  type       = p.white, 
  btype      = p.white, 
  constant   = p.white, 
}
