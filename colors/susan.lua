-- susan

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#1e1e1e"
p.dgrey.g    = "#606060"
p.grey.g     = "#b0b0b0"
p.white.g    = "#f0f0f0"

p.dred.g     = "#402830"
p.dyellow.g  = "#403c30"
p.dblue.g    = "#303030"

p.magenta.g  = "#f0b8d8"
p.green.g    = "#a0c870"
p.red.g      = "#f09060"
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
