-- fire

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202022"
p.dblue.g    = "#2a2c32"
p.dgrey.g    = "#727688"
p.white.g    = "#bcbcc8"

p.red.g      = "#e06c68"
p.yellow.g   = "#aca880"
p.cyan.g     = "#70a89c"
p.magenta.g  = "#c090bc"

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

  type       = p.magenta, 
  btype      = p.magenta, 
  constant   = p.yellow, 

  literal    = p.cyan, 
  str        = p.cyan, 
  matchparen = p.cyan, 
}
