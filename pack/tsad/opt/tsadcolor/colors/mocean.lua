-- the

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#141618"
p.dgrey.g    = "#807c7a"
p.white.g    = "#c0b0a0"

p.dmagenta.g = "#402028"
p.dyellow.g  = "#2c3020"
p.dcyan.g    = "#20302c"

p.red.g      = "#d06050"
p.yellow.g   = "#b89850"
p.green.g    = "#80a098"
p.cyan.g     = "#b0a0f0"
p.magenta.g  = "#d090a0"

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
