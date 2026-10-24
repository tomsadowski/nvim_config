-- ya

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202022"
p.dblue.g    = "#2a2c32"
p.dgrey.g    = "#747680"
p.grey.g     = "#bcbcc8"

p.red.g      = "#c08272"
p.yellow.g   = "#bca79c"
p.cyan.g     = "#84aaa0"
p.magenta.g  = "#a892a8"
-- comment test
-- comment test
-- comment test
-- comment test
p.blue.g     = "#707688"

p.dmagenta.g = "#402c40"
p.dyellow.g  = "#4a403c"

c.apply {
  search     = p.dyellow, 
  visual     = p.dblue, 
  diagund    = p.dmagenta,

  canvas     = p.black, 

  signcol    = p.blue, 
  lineno     = p.blue, 

  keyword    = p.red,

  msgarea    = p.grey, 
  normal     = p.grey, 
  curlineno  = p.grey, 

  comment    = p.blue, 

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
  btype      = p.magenta, 
  constant   = p.yellow, 

  literal    = p.cyan, 
  str        = p.cyan, 
  matchparen = p.cyan, 
}
