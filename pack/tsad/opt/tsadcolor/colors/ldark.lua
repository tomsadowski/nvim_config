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
p.cyan.g     = "#a0e0ff"
p.yellow.g   = "#f0f080"
p.green.g    = "#b0d080"
p.red.g      = "#ff8880"
p.magenta.g  = "#e0a0f0"

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
  item       = p.yellow, 
  type       = p.yellow, 
  btype      = p.yellow, 
  constant   = p.magenta, 
  literal    = p.magenta, 
  str        = p.magenta, 
}
