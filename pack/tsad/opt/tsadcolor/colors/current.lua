-- drainbow

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#1c1c1c"

p.dblue.g    = "#101010"
p.dyellow.g  = "#303000"
p.dcyan.g    = "#003030"

p.dgrey.g    = "#808080"
p.white.g    = "#d0d0d0"

p.red.g      = "#e08078"
p.yellow.g   = "#c8ba70"
p.green.g    = "#80b890"
p.cyan.g     = "#a0c0f0"
p.magenta.g  = "#d090c0"

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
