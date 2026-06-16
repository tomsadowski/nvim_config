-- ball

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202020"
p.dgrey.g    = "#808080"
p.white.g    = "#e0e0e0"

p.dmagenta.g = "#402028"
p.dyellow.g  = "#2c3020"
p.dcyan.g    = "#20302c"

p.red.g      = "#f07060"
p.yellow.g   = "#d8c050"
p.green.g    = "#70d0bc"
p.cyan.g     = "#a0c0ff"
p.magenta.g  = "#d88090"

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
  matchparen = p.cyan, 
  func       = p.cyan, 
  item       = p.green, 
  type       = p.green, 
  btype      = p.green, 
  constant   = p.magenta, 
  literal    = p.magenta, 
  str        = p.magenta, 
}
