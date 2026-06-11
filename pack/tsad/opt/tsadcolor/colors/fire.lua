-- fire

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#242528"

p.dred.g     = "#402528"
p.dyellow.g  = "#204020"
p.dcyan.g    = "#203050"

p.dgrey.g    = "#787c80"
p.white.g    = "#e0e0e0"

p.red.g      = "#e88480"
p.yellow.g   = "#d0a890"
p.green.g    = "#bcb880"
p.cyan.g     = "#b8bce8"
p.magenta.g  = "#e0a0b4"

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
  matchparen = p.green, 
  func       = p.green, 
  item       = p.yellow, 
  type       = p.yellow, 
  btype      = p.yellow, 
  constant   = p.magenta, 
  literal    = p.magenta, 
  str        = p.magenta, 
}
