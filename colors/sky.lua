-- sky

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#222830"
p.dgrey.g    = "#607088"
p.dcyan.g    = "#a0b0c6"
p.white.g    = "#d0ccc6"

p.dred.g     = "#402830"
p.dyellow.g  = "#484030"
p.dblue.g    = "#283850"

p.magenta.g  = "#c890b8"
p.red.g      = "#d0a060"
p.yellow.g   = "#80b0f0"
p.cyan.g     = "#70c0b0"

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

  normal     = p.white, 
  matchparen = p.magenta, 
  func       = p.magenta, 
  keyword    = p.red,
  variable   = p.dcyan, 
  typeparam  = p.cyan,
  item       = p.cyan, 
  type       = p.cyan, 
  btype      = p.cyan, 
  constant   = p.cyan, 
  literal    = p.yellow, 
  str        = p.yellow, 
}
