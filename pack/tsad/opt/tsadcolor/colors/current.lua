-- perfection

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#2a2a2a"

p.dmagenta.g = "#503038"
p.dyellow.g  = "#384028"
p.dcyan.g    = "#284038"

p.dgrey.g    = "#787878"
p.white.g    = "#e0e0e0"

p.red.g      = "#f89060"
p.yellow.g   = "#c0e060"
p.green.g    = "#90e0c8"
p.cyan.g     = "#a8d0f0"
p.magenta.g  = "#e0a0b8"

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
