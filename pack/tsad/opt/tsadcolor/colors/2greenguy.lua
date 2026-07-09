-- greenguy

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#181a1c"
p.dgrey.g    = "#707478"
p.white.g    = "#c8b6a8"

p.dred.g     = "#402028"
p.dyellow.g  = "#403c28"
p.dblue.g    = "#183040"

p.magenta.g  = "#c08ca0"
p.red.g      = "#c06840"
p.yellow.g   = "#a8a048"
p.cyan.g     = "#78a8a0"
p.dcyan.g    = "#9693d0"

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
