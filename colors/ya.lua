-- fire

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

-- commenting for fun 
local GREYSCALE = ""
p.black.g    = "#202225"
p.dgrey.g    = "#707880"
p.grey.g     = "#bdbfc8"
p.white.g    = "#ccb0a8"

-- commenting for fun 
local COLORS = ""
p.yellow.g   = "#e0ae82"
p.cyan.g     = "#a0b0ff"
p.magenta.g  = "#d8a4c0"
p.red.g      = "#e87c80"

-- commenting for fun 
local BACKGROUND_HIGHLIGHT = ""
p.dmagenta.g = "#402c40"
p.dyellow.g  = "#4a403c"
p.dblue.g    = "#30343a"

-- commenting 
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

  type       = p.magenta, 
  btype      = p.magenta, 
  constant   = p.magenta, 

  literal    = p.yellow, 
  str        = p.yellow, 
  matchparen = p.yellow, 
}
