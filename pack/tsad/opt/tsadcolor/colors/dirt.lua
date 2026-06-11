-- dirt

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#242528"

p.dred.g     = "#402528"
p.dyellow.g  = "#204020"
p.dcyan.g    = "#203050"

p.dgrey.g    = "#787c80"
p.white.g    = "#e0e0e0"

p.red.g      = "#d08880"
p.yellow.g   = "#d0b0a0"
p.green.g    = "#a8b088"
p.cyan.g     = "#b8c8e0"
p.magenta.g  = "#d8a4b8"

c.apply {
  search     = p.dcyan, 
  visual     = p.dyellow, 
  diagund    = p.dred,
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
