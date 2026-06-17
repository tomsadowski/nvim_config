-- 2sunset

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202020"
p.dgrey.g    = "#808080"
p.white.g    = "#d0d0d0"

p.dmagenta.g = "#402028"
p.dyellow.g  = "#2c3020"
p.dcyan.g    = "#20302c"

p.red.g      = "#f07060"
p.yellow.g   = "#d8c050"
p.green.g    = "#a0c080"
p.cyan.g     = "#b4a8e8"
p.magenta.g  = "#e0a0b0"

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
