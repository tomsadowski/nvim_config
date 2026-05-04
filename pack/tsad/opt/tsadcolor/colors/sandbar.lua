-- sandbar

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)
local p2 = vim.deepcopy(c.palette)

  p.black.g    = "#222728"
  p.dgrey.g    = "#506060"
  p.grey.g     = "#808c8c"

  p.red.g      = "#e09060"
  p.white.g    = "#b8b0a0"
  p.yellow.g   = "#d8d4b0"
  p.cyan.g     = "#98d0c8"
  p.magenta.g  = "#e0a0b0"

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
  comment    = p.grey, 
  curlineno  = p.grey, 

  keyword    = p.red,

  normal     = p.white, 

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
