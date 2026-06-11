-- gold

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#1b1d1f"

p.dblue.g    = "#401d20"
p.dyellow.g  = "#204020"
p.dcyan.g    = "#203050"

p.dgrey.g    = "#727478"
p.white.g    = "#d0d0d0"

p.red.g      = "#e07c79"
p.yellow.g   = "#c0a078"
p.green.g    = "#b0b080"
p.cyan.g     = "#a0b0e0"
p.magenta.g  = "#d494b0"

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
