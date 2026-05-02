-- cute

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)
local p2 = vim.deepcopy(c.palette)

  p.black.g    = "#202428"
  p.dgrey.g    = "#555a60"
  p.grey.g     = "#757a80"
  p.white.g    = "#c8c4c0"

  p.dblue.g    = "#252a30"
  p.dyellow.g  = "#3c3a20"
  p.dcyan.g    = "#203850"

  p.red.g      = "#e07068"
  p.yellow.g   = "#d0b858"
  p.cyan.g     = "#70d0b4"
  p.magenta.g  = "#90b0e0"

c.apply {
  canvas     = p.black, 

  search     = p.dcyan, 
  visual     = p.dyellow, 
  diagund    = p.dblue,

  lineno     = p.dgrey, 
  signcol    = p.dgrey, 
  msgarea    = p.grey, 
  comment    = p.grey, 
  typeparam  = p.magenta,

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
