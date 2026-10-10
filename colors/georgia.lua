-- 256balloon

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#262626"
p.dblue.g    = "#303030"
p.dgrey.g    = "#808080"
p.grey.g     = "#c8c8c8"

-- ff d7 af 87 5f 00

p.magenta.g  = "#f07490"
p.yellow.g   = "#d0ac88"
p.cyan.g     = "#88acd0"

p.dmagenta.g = "#5f005f"
p.dyellow.g  = "#00005f"

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
