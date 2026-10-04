-- flame

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202225"
p.dgrey.g    = "#707880"
p.grey.g     = "#bdc0c0"

p.yellow.g   = "#d0b0a0"
p.red.g      = "#f08080"
p.cyan.g     = "#789a94"
p.magenta.g  = "#d0a0d0"

p.dmagenta.g = "#402c40"
p.dyellow.g  = "#4a403c"
p.dblue.g    = "#30343a"

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

  comment    = p.cyan, 

  path       = p.grey, 
  trunk      = p.grey,
  caller     = p.yellow,
  func       = p.grey, 
  memberdecl = p.yellow, 
  import     = p.yellow,
  variant    = p.yellow, 
  variable   = p.yellow, 
  typeparam  = p.yellow,
  item       = p.yellow, 

  type       = p.grey, 
  btype      = p.grey, 
  constant   = p.yellow, 

  literal    = p.magenta, 
  str        = p.magenta, 
  matchparen = p.magenta, 
}
