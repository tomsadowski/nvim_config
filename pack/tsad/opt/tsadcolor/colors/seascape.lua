-- seascape

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)
local p2 = vim.deepcopy(c.palette)

  p.black.g    = "#232a30"
  p.dgrey.g    = "#586070"
  p.dmagenta.g = "#a090d0"
  p.grey.g     = "#808080"

  p.white.g    = "#a0a090"
  p.red.g      = "#e07870"
  p.yellow.g   = "#d0d0b0"
  p.cyan.g     = "#a0d0d0"
  p.magenta.g  = "#d088b0"

  p.dblue.g    = "#252a30"
  p.dyellow.g  = "#3c3a20"
  p.dcyan.g    = "#203850"

c.apply {
  canvas     = p.black, 

  search     = p.dcyan, 
  visual     = p.dyellow, 
  diagund    = p.dblue,

  lineno     = p.dgrey, 
  signcol    = p.dgrey, 
  msgarea    = p.grey, 
  typeparam  = p.magenta,

  comment    = p.dmagenta, 

  normal     = p.white, 
  curlineno  = p.white, 

  item       = p.yellow, 
  matchparen = p.yellow, 
  type       = p.yellow, 
  func       = p.yellow, 

  variable   = p.cyan, 
  btype      = p.cyan, 

  keyword    = p.red,

  literal    = p.magenta, 
  str        = p.magenta, 
}
