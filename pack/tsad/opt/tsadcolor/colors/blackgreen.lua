-- greenguy

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#000000"
p.dgrey.g    = "#727478"
p.white.g    = "#b8b0a8"

p.dred.g     = "#402028"
p.dyellow.g  = "#403c28"
p.dblue.g    = "#183040"

p.magenta.g  = "#b08090"
p.red.g      = "#b0704c"
p.yellow.g   = "#84a040"
p.cyan.g     = "#70a0a8"
p.dcyan.g    = "#9893d0"

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
  variable   = p.yellow, 
  typeparam  = p.yellow,
  item       = p.cyan, 
  type       = p.cyan, 
  btype      = p.cyan, 
  constant   = p.cyan, 
  literal    = p.dcyan, 
  str        = p.dcyan, 
}
