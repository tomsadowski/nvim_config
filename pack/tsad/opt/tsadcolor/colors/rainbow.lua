-- ldark

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#2c2c2c"
p.dblue.g    = "#383838"
p.dyellow.g  = "#505030"
p.dcyan.g    = "#305050"
p.dgrey.g    = "#888888"
p.white.g    = "#e8e8e8"
p.cyan.g     = "#b0d8ff"
p.yellow.g   = "#d0b878"
p.green.g    = "#a0d8a0"
p.red.g      = "#ff8880"
p.magenta.g  = "#dca8f0"

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
