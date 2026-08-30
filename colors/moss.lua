-- moss

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#24282c"
p.dgrey.g    = "#707880"
p.grey.g     = "#c8cacc"
p.white.g    = "#d0c0b0"

p.cyan.g     = "#709c98"
p.red.g      = "#f8a070"
p.yellow.g   = "#c4c088"
p.magenta.g  = "#e0acb8"

p.dmagenta.g = "#402c40"
p.dyellow.g  = "#4c4844"
p.dblue.g    = "#303840"


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

  type       = p.yellow, 
  btype      = p.yellow, 
  constant   = p.yellow, 


  literal    = p.magenta, 
  str        = p.magenta, 
  matchparen = p.magenta, 
}
