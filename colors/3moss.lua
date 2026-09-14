-- moss

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#181b20"
p.dgrey.g    = "#6c7880"
p.grey.g     = "#b8c0c8"
p.white.g    = "#d0beb0"

-- commenting 
-- commenting again
p.cyan.g     = "#509098"
p.red.g      = "#e09070"
p.green.g    = "#a4c470"
p.magenta.g  = "#c890a8"

p.dmagenta.g = "#402c40"
p.dyellow.g  = "#4c4844"
p.dblue.g    = "#303840"

-- commenting 
-- commenting again
local CONSTANT = ""

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
  caller     = p.grey,
  memberdecl = p.white, 
  import     = p.white,
  variant    = p.white, 
  variable   = p.white, 
  func       = p.white, 
  typeparam  = p.white,
  item       = p.white, 

  type       = p.green, 
  btype      = p.green, 
  constant   = p.green, 

  literal    = p.magenta, 
  str        = p.magenta, 
  matchparen = p.magenta, 
}
