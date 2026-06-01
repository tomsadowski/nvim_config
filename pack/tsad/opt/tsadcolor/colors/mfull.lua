-- chalk

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#242528"

p.dblue.g    = "#401d20"
p.dyellow.g  = "#204020"
p.dcyan.g    = "#203050"

p.dgrey.g    = "#787c80"
p.white.g    = "#e0e0e0"

p.red.g      = "#e88480"
p.yellow.g   = "#c8b880"
p.green.g    = "#a0c8a8"
p.cyan.g     = "#b0c0f0"
p.magenta.g  = "#e0a0b4"

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
