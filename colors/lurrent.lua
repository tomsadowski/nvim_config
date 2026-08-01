-- seaweed

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#222830"
p.dgrey.g    = "#707888"
p.white.g    = "#d0ccc6"

p.dred.g     = "#402830"
p.dyellow.g  = "#484030"
p.dblue.g    = "#283850"

p.magenta.g  = "#d0a0b8"
p.red.g      = "#f06868"
p.yellow.g   = "#c0b070"
p.cyan.g     = "#50b0a0"
p.dcyan.g    = "#80acff"

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

  keyword    = p.red,
  matchparen = p.magenta, 
  normal     = p.white, 
  func       = p.white, 
  variable   = p.white, 
  typeparam  = p.white,
  item       = p.white, 
  type       = p.magenta, 
  btype      = p.magenta, 
  constant   = p.dcyan, 
  literal    = p.dcyan, 
  str        = p.dcyan, 
}
