-- snake

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202020"
p.dgrey.g    = "#606060"
p.grey.g     = "#a0a0a0"
p.white.g    = "#f0e8d8"

p.dred.g     = "#402830"
p.dyellow.g  = "#403c30"
p.dblue.g    = "#303030"

p.magenta.g  = "#e0b8c0"
p.green.g    = "#b0c860"
p.red.g      = "#e08860"
p.cyan.g     = "#a0c0ff"

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
  curlineno  = p.white, 

  normal     = p.grey, 

  import     = p.white,
  caller     = p.white,
  trunk      = p.white,
  path       = p.white, 
  variant    = p.white, 
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
