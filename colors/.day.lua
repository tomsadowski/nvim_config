-- day

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#b6c0c8"
p.dblue.g    = "#a0c0ff"
p.dgrey.g    = "#787a80"
p.grey.g     = "#000000"

p.red.g      = "#a02000"
p.yellow.g   = "#0030c0"
p.cyan.g     = "#307000"
p.magenta.g  = "#902090"

p.dmagenta.g = "#f0b0f0"
p.dyellow.g  = "#f0e0a0"

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
