-- sky

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#222830"
p.dgrey.g    = "#607080"
p.grey.g     = "#a0b0c0"
p.white.g    = "#e0d0c0"

p.dred.g     = "#402830"
p.dyellow.g  = "#484030"
p.dblue.g    = "#283850"

p.magenta.g  = "#ffb8e0"
p.yellow.g   = "#d8c060"
p.dcyan.g    = "#a0b0ff"
p.cyan.g     = "#40e0d8"

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
