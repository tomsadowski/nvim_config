-- rainbow

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#2c2c2c"

p.dblue.g    = "#343434"
p.dyellow.g  = "#505030"
p.dcyan.g    = "#305050"

p.dgrey.g    = "#808080"
p.white.g    = "#d8d8d8"

p.red.g      = "#ff8880"
p.yellow.g   = "#d0b878"
p.green.g    = "#a0c080"
p.cyan.g     = "#a0c8f0"
p.magenta.g  = "#d0a0c8"

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
