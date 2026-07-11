-- hard

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#16181c"
p.dgrey.g    = "#707880"
p.white.g    = "#d0c8bc"

p.dred.g     = "#16181c"
p.dyellow.g  = "#302c2a"
p.dblue.g    = "#2a2c30"

p.yellow.g   = "#ff8000"
p.cyan.g     = "#e088b8"

local CONSTANT = ""

c.apply {
  search     = p.dyellow, 
  visual     = p.dblue, 
  diagund    = p.dred,

  keyword    = p.yellow,
  literal    = p.cyan, 
  str        = p.cyan, 

  canvas     = p.black, 

  signcol    = p.dgrey, 
  lineno     = p.dgrey, 
  msgarea    = p.dgrey, 
  comment    = p.dgrey, 

  curlineno  = p.white, 
  normal     = p.white, 
  matchparen = p.white, 
  func       = p.white, 
  variable   = p.white, 
  typeparam  = p.white,
  item       = p.white, 
  type       = p.white, 
  btype      = p.white, 
  constant   = p.white, 
}
