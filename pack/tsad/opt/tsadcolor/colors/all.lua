-- fire

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#1c1c1c"
p.dgrey.g    = "#787878"
p.white.g    = "#d8d8d8"

p.dmagenta.g = "#402028"
p.dyellow.g  = "#2c3020"
p.dcyan.g    = "#20302c"

p.red.g      = "#f06050"
p.yellow.g   = "#c8b040"
p.green.g    = "#60b08c"
p.cyan.g     = "#8098f0"
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
