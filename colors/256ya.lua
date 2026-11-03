-- ya

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#1c1c1c"
p.dblue.g    = "#303030"
p.dgrey.g    = "#808080"
p.white.g    = "#c6c6c6"

p.red.g      = "#c08272"
p.yellow.g   = "#baa79c"
p.cyan.g     = "#84aaa0"
p.magenta.g  = "#b294b4"

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
