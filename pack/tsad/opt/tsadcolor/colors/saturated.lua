-- saturated

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#303030"

p.dblue.g    = "#503030"
p.dyellow.g  = "#305040"
p.dcyan.g    = "#303050"

p.dgrey.g    = "#787878"
p.white.g    = "#e0e0e0"

p.red.g      = "#ff8c89"
p.yellow.g   = "#d8c888"
p.green.g    = "#90e0c8"
p.cyan.g     = "#b8d0ff"
p.magenta.g  = "#ffb0d0"

c.apply {
  search     = p.dcyan, 
  visual     = p.dyellow, 
  diagund    = p.dblue,
  canvas     = p.black, 
  signcol    = p.dgrey, 
  lineno     = p.dgrey, 
  msgarea    = p.dgrey, 
  comment    = p.dgrey, 
  normal     = p.white, 
  curlineno  = p.white, 
  keyword    = p.red,
  variable   = p.yellow, 
  typeparam  = p.yellow,
  matchparen = p.cyan, 
  func       = p.cyan, 
  item       = p.green, 
  type       = p.green, 
  btype      = p.green, 
  constant   = p.magenta, 
  literal    = p.magenta, 
  str        = p.magenta, 
}
