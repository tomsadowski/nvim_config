-- garden

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

-- commenting for fun 
local GREYSCALE = ""
p.black.g    = "#202225"
p.dgrey.g    = "#707880"
p.grey.g     = "#bdbfc8"

-- commenting for fun 
local COLORS = ""
p.yellow.g   = "#ccb0a8"
p.green.g    = "#bcac60"
p.cyan.g     = "#80aaa4"
p.magenta.g  = "#c89cc0"

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

  keyword    = p.green,

  msgarea    = p.grey, 
  normal     = p.grey, 
  curlineno  = p.grey, 

  comment    = p.cyan, 

  path       = p.grey, 
  trunk      = p.grey,
  caller     = p.grey,
  memberdecl = p.yellow, 
  import     = p.yellow,
  variant    = p.yellow, 
  variable   = p.yellow, 
  func       = p.yellow, 
  typeparam  = p.yellow,
  item       = p.yellow, 

  type       = p.grey, 
  btype      = p.grey, 
  constant   = p.yellow, 

  literal    = p.magenta, 
  str        = p.magenta, 
  matchparen = p.magenta, 
}
