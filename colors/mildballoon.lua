-- balloon
-- ff d7 af 87 5f 00

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#242425"
p.dblue.g    = "#2d2d30"
p.dgrey.g    = "#787880"
p.grey.g     = "#c4c4cc"

p.magenta.g  = "#e87488"
p.yellow.g   = "#c8aca0"
p.cyan.g     = "#a0a8e0"

p.dmagenta.g = "#402c40"
p.dyellow.g  = "#4a403c"

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
