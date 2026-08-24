-- brightfire

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#24282c"
p.dgrey.g    = "#78808c"
p.grey.g     = "#b2b8c0"
p.white.g    = "#b0a090"

p.magenta.g  = "#a090e0"
p.red.g      = "#e07088"

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
  memberdecl = p.white, 
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
