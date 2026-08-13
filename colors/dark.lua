-- moon

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#101820"
p.dgrey.g    = "#406080"
p.grey.g     = "#b0c0d0"
p.white.g    = "#d0c0b0"

p.dred.g     = "#402830"
p.dyellow.g  = "#444830"
p.dblue.g    = "#283850"

p.magenta.g  = "#e8accc"
p.green.g    = "#70c0b0"
p.red.g      = "#d08868"
p.cyan.g     = "#acb0ff"

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
