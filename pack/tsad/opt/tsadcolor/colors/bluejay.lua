-- bluejay

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#16181c"
p.dgrey.g    = "#707880"
p.white.g    = "#d0c8bc"

p.dmagenta.g = "#301820"
p.dyellow.g  = "#302c1c"
p.dblue.g    = "#162c30"

p.yellow.g   = "#d0a060"
p.cyan.g     = "#80a0d0"

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
