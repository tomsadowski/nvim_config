-- heart

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202020"
p.dgrey.g    = "#808080"
p.grey.g     = "#c0c0c0"

p.magenta.g  = "#f08088"
p.yellow.g   = "#d0a88c"
p.cyan.g     = "#c898c8"

p.dmagenta.g = "#402c40"
p.dyellow.g  = "#4a403c"
p.dblue.g    = "#2c323a"

c.apply {
  search     = p.dyellow, 
  visual     = p.dblue, 
  diagund    = p.dmagenta,

  canvas     = p.black, 

  signcol    = p.dgrey, 
  lineno     = p.dgrey, 

  keyword    = p.magenta,

  msgarea    = p.grey, 
  normal     = p.grey, 
  curlineno  = p.grey, 

  comment    = p.dgrey, 

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

  literal    = p.cyan, 
  str        = p.cyan, 
  matchparen = p.cyan, 
}
