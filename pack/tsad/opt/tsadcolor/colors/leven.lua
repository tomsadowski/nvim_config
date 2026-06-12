-- leven

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#303030"

p.dblue.g    = "#401d20"
p.dyellow.g  = "#204020"
p.dcyan.g    = "#203050"

p.dgrey.g    = "#787878"
p.white.g    = "#e0e0e0"

p.red.g      = "#ff8c89"
p.yellow.g   = "#e0d898"
p.green.g    = "#98e8c8"
p.cyan.g     = "#c0d8ff"
p.magenta.g  = "#ffb8d0"

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
  variable   = p.cyan, 
  typeparam  = p.cyan,
  matchparen = p.yellow, 
  func       = p.yellow, 
  item       = p.green, 
  type       = p.green, 
  btype      = p.green, 
  constant   = p.magenta, 
  literal    = p.magenta, 
  str        = p.magenta, 
}
