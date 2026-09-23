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
p.cyan.g     = "#80c4bc"
p.dcyan.g    = "#9cbce8"
p.magenta.g  = "#d8a6c4"
p.red.g      = "#e0808c"

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

  comment    = p.dcyan, 

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

  type       = p.magenta, 
  btype      = p.magenta, 
  constant   = p.magenta, 

  literal    = p.cyan, 
  str        = p.cyan, 
  matchparen = p.cyan, 
}
