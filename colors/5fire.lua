-- fire

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#141618"
p.dgrey.g    = "#686c78"
p.grey.g     = "#a5a6a8"
p.white.g    = "#a89080"

p.magenta.g  = "#a090e0"
p.red.g      = "#d06078"

p.dmagenta.g = "#402c40"
p.dyellow.g  = "#4c4844"
p.dblue.g    = "#283850"


local CONSTANT = ""

c.apply {
  search     = p.dyellow, 
  visual     = p.dblue, 
  diagund    = p.dmagenta,

  canvas     = p.black, 

  signcol    = p.dgrey, 
  lineno     = p.dgrey, 

  keyword    = p.red,

  msgarea    = p.grey, 
  normal     = p.grey, 
  curlineno  = p.grey, 

  comment    = p.dgrey, 

  path       = p.grey, 
  trunk      = p.grey,
  caller     = p.grey,
  memberdecl = p.grey, 
  import     = p.white,
  variant    = p.white, 
  variable   = p.white, 
  func       = p.white, 
  typeparam  = p.white,
  item       = p.white, 
  type       = p.white, 
  btype      = p.white, 
  constant   = p.white, 


  literal    = p.magenta, 
  str        = p.magenta, 
  matchparen = p.magenta, 
}
