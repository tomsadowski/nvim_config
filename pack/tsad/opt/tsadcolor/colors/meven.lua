-- dfull

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#282828"

p.dblue.g    = "#401d20"
p.dyellow.g  = "#204020"
p.dcyan.g    = "#203050"

p.dgrey.g    = "#686868"
p.white.g    = "#d0d0d0"

p.red.g      = "#f07c79"
p.yellow.g   = "#c8ba88"
p.green.g    = "#98c0a8"
p.cyan.g     = "#c0b0f0"
p.magenta.g  = "#e4a4b8"

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
