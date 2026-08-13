-- calm

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#22262c"
p.dgrey.g    = "#607080"
p.grey.g     = "#b8c0c6"
p.white.g    = "#bcb0a8"

p.dred.g     = "#402830"
p.dyellow.g  = "#403c30"
p.dblue.g    = "#303840"

p.magenta.g  = "#d0a0c0"
p.red.g      = "#d08868"
p.green.g    = "#70b8b8"
p.cyan.g     = "#b0a8f0"

local CONSTANT = ""

c.apply {
  search     = p.dyellow, 
  visual     = p.dblue, 
  diagund    = p.dred,

  canvas     = p.black, 
  signcol    = p.dgrey, 
  lineno     = p.dgrey, 
  msgarea    = p.dgrey, 
  comment    = p.dgrey, 
  curlineno  = p.grey, 

  normal     = p.grey, 
  variable   = p.white, 
  keyword    = p.red,
  matchparen = p.magenta, 
  func       = p.magenta, 
  typeparam  = p.green,
  item       = p.green, 
  type       = p.green, 
  btype      = p.green, 
  constant   = p.green, 
  literal    = p.cyan, 
  str        = p.cyan, 
}
