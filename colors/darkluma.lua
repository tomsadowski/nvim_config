-- darkluma

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#121820"
p.dgrey.g    = "#485c70"
p.grey.g     = "#98a0b0"
p.white.g    = "#c0b8b0"

p.dred.g     = "#402830"
p.dyellow.g  = "#403c30"
p.dblue.g    = "#303840"

p.magenta.g  = "#d0a0c8"
p.green.g    = "#70b0a0"
p.red.g      = "#e07878"
p.cyan.g     = "#a0a0ff"

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
