-- land

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202022"
p.dblue.g    = "#2a2c32"
p.dgrey.g    = "#727688"
p.white.g    = "#bcbcc8"

p.red.g      = "#cc6c68"
p.yellow.g   = "#c0a798"
p.green.g    = "#88a870"
p.cyan.g     = "#a090cc"

p.dmagenta.g = "#402c40"
p.dyellow.g  = "#4a403c"

c.apply {
  search     = p.dyellow, 
  visual     = p.dblue, 
  diagund    = p.dmagenta,

  canvas     = p.black, 

  signcol    = p.dgrey, 
  lineno     = p.dgrey, 

  keyword    = p.red,

  msgarea    = p.white, 
  normal     = p.white, 
  curlineno  = p.white, 

  comment    = p.dgrey, 

  path       = p.white, 
  trunk      = p.white,
  caller     = p.yellow,
  func       = p.white, 
  memberdecl = p.yellow, 
  import     = p.yellow,
  variant    = p.yellow, 
  variable   = p.yellow, 
  typeparam  = p.yellow,
  item       = p.yellow, 

  type       = p.green, 
  btype      = p.green, 
  constant   = p.yellow, 

  literal    = p.cyan, 
  str        = p.cyan, 
  matchparen = p.cyan, 
}
