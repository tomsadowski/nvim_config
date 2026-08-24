-- sea

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202c40"
p.dgrey.g    = "#587090"
p.grey.g     = "#98a8e0"
p.white.g    = "#b0aeac"
p.magenta.g  = "#b890c0"

p.dmagenta.g = "#402830"
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

  msgarea    = p.grey, 
  keyword    = p.grey,
  normal     = p.grey, 
  curlineno  = p.grey, 

  comment    = p.dgrey, 

  path       = p.white, 
  trunk      = p.white,
  memberdecl = p.white, 
  caller     = p.white,
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
