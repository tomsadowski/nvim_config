-- balloon
-- ff d7 af 87 5f 00

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#242425"
p.dblue.g    = "#2d2d30"
p.dgrey.g    = "#787880"
p.grey.g     = "#c4c4cc"

p.red.g      = "#d87688"
p.yellow.g   = "#c0aca0"
p.cyan.g     = "#80b0a4"
p.magenta.g  = "#c09cb0"

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

  type       = p.magenta, 
  btype      = p.grey, 
  constant   = p.yellow, 

  literal    = p.cyan, 
  str        = p.cyan, 
  matchparen = p.cyan, 
}
