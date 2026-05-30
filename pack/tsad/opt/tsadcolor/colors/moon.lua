-- moon

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)
local p2 = vim.deepcopy(c.palette)

  p.black.g    = "#202425"

  p.dblue.g    = "#303638"
  p.dyellow.g  = "#3c3a2c"
  p.dcyan.g    = "#283c3a"

  p.dgrey.g    = "#505858"
  p.grey.g     = "#808888"

  p.white.g    = "#b2b09a"

  p.red.g      = "#d89068"
  p.yellow.g   = "#d8d4b0"
  p.green.g    = "#d8d4b0"
  p.cyan.g     = "#a8c8c4"
  p.magenta.g  = "#d8a8a8"
  p.dmagenta.g = "#b8a0d0"

c.apply {
  canvas     = p.black, 

  search     = p.dcyan, 
  visual     = p.dyellow, 
  diagund    = p.dblue,

  lineno     = p.dgrey, 
  signcol    = p.dgrey, 

  msgarea    = p.grey, 
  curlineno  = p.grey, 

  comment    = p.grey, 

  keyword    = p.red,

  normal     = p.white, 
  constant   = p.white, 

  item       = p.yellow, 
  matchparen = p.yellow, 

  type       = p.magenta, 

  func       = p.yellow, 

  variable   = p.cyan, 
  btype      = p.cyan, 
  typeparam  = p.cyan,

  literal    = p.dmagenta, 
  str        = p.dmagenta, 
}
