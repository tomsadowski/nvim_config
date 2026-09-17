-- moss

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202225"
p.dgrey.g    = "#707880"
--p.grey.g     = "#b6b7ba"
--p.grey.g     = "#a8a9b0"
p.grey.g     = "#b8b9c0"
p.white.g    = "#b6a6a2"

-- commenting 
-- commenting again
p.cyan.g     = "#608880"
p.red.g      = "#d28470"
p.green.g    = "#9cb070"
p.magenta.g  = "#c391a4"

p.dmagenta.g = "#402c40"
p.dyellow.g  = "#4c4844"
p.dblue.g    = "#30343a"

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
