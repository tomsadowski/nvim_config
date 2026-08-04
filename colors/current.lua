-- sea

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

p.magenta.g  = "#ffa0d0"
p.yellow.g   = "#b8d060"
p.dcyan.g    = "#a09cff"
p.cyan.g     = "#20d0c8"

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
  keyword    = p.cyan,
  matchparen = p.magenta, 
  func       = p.magenta, 
  typeparam  = p.yellow,
  item       = p.yellow, 
  type       = p.yellow, 
  btype      = p.yellow, 
  constant   = p.yellow, 
  literal    = p.dcyan, 
  str        = p.dcyan, 
}
