-- sandbar

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)
local p2 = vim.deepcopy(c.palette)

  p.black.g    = "#202425"

  p.dblue.g    = "#252a30"
  p.dyellow.g  = "#3c3a20"
  p.dcyan.g    = "#203850"

  p.dgrey.g    = "#506060"
  p.grey.g     = "#808c8c"
  p.dmagenta.g = "#909cc0"

  p.white.g    = "#b5b09c"
  p.yellow.g   = "#d8d4b0"

  p.red.g      = "#d89058"
  p.cyan.g     = "#98d0c8"
  p.magenta.g  = "#e090a8"

c.apply {
  canvas     = p.black, 

  search     = p.dcyan, 
  visual     = p.dyellow, 
  diagund    = p.dblue,

  lineno     = p.dgrey, 
  signcol    = p.dgrey, 
  msgarea    = p.grey, 
  comment    = p.dmagenta, 
  curlineno  = p.grey, 

  keyword    = p.red,

  normal     = p.white, 
  constant   = p.white, 

  item       = p.yellow, 
  matchparen = p.yellow, 
  type       = p.yellow, 
  func       = p.yellow, 

  variable   = p.cyan, 
  btype      = p.cyan, 

  typeparam  = p.magenta,
  literal    = p.magenta, 
  str        = p.magenta, 
}
