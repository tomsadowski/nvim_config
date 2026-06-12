-- perfection

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#2a2a2a"

p.dblue.g    = "#503030"
p.dyellow.g  = "#305040"
p.dcyan.g    = "#303050"

p.dgrey.g    = "#787878"
p.white.g    = "#e0e0e0"

p.red.g      = "#f89060"
p.yellow.g   = "#c8e070"
p.green.g    = "#90e0c8"
p.cyan.g     = "#c0c8ff"
p.magenta.g  = "#f0a0b0"

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
