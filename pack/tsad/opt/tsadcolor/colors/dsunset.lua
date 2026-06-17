-- fire

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#101010"
p.dgrey.g    = "#808080"
p.white.g    = "#c0c0c0"

p.dmagenta.g = "#302028"
p.dyellow.g  = "#2c3020"
p.dcyan.g    = "#20302c"

p.red.g      = "#f06050"
p.yellow.g   = "#c8b040"
p.green.g    = "#60b090"
p.cyan.g     = "#a498d8"
p.magenta.g  = "#d08090"

c.apply {
  search     = p.dyellow, 
  visual     = p.dcyan, 
  diagund    = p.dmagenta,
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
  item       = p.green, 
  type       = p.green, 
  btype      = p.green, 
  matchparen = p.magenta, 
  func       = p.magenta, 
  constant   = p.green, 
  literal    = p.cyan, 
  str        = p.cyan, 
}
