-- dragon

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#222830"
p.dgrey.g    = "#506880"
p.grey.g     = "#b0c0d0"
p.white.g    = "#f0d8c0"

p.dred.g     = "#402830"
p.dyellow.g  = "#444830"
p.dblue.g    = "#283850"

p.magenta.g  = "#f0a8c8"
p.yellow.g   = "#b8d060"
p.dcyan.g    = "#a8a4f0"
p.cyan.g     = "#60c0b6"

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
  keyword    = p.grey,
  matchparen = p.magenta, 
  func       = p.magenta, 
  typeparam  = p.cyan,
  item       = p.cyan, 
  type       = p.cyan, 
  btype      = p.cyan, 
  constant   = p.cyan, 
  literal    = p.dcyan, 
  str        = p.dcyan, 
}
