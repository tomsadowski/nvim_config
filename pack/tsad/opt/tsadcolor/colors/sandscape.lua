-- sandscape

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)
local p2 = vim.deepcopy(c.palette)

  p.black.g    = "#282828"
  p.dgrey.g    = "#505050"
  p.grey.g     = "#808080"

  p.white.g    = "#b0a090"
  p.yellow.g   = "#e0d0b0"

  p.dblue.g    = "#252a30"
  p.dyellow.g  = "#3c3a20"
  p.dcyan.g    = "#203850"

  p.green.g    = "#807090"
  p.red.g      = "#d07870"
  p.cyan.g     = "#a8c0b8"
  p.magenta.g  = "#d088b0"

c.apply {
  canvas     = p.black, 

  search     = p.dcyan, 
  visual     = p.dyellow, 
  diagund    = p.dblue,

  lineno     = p.dgrey, 
  signcol    = p.dgrey, 
  msgarea    = p.grey, 
  typeparam  = p.magenta,

  comment    = p.green, 

  normal     = p.white, 
  curlineno  = p.grey, 

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
