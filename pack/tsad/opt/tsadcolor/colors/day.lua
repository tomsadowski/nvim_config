-- day

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
  p.dgreen.g   = "#203850"

  p.red.g      = "#e07068"
  p.yellow.g   = "#c0b058"
  p.green.g    = "#78c0b0"
  p.cyan.g     = "#8088b4"
  p.magenta.g  = "#d090c0"

c.apply {
  canvas     = p.black, 

  search     = p.dgreen, 
  visual     = p.dyellow, 
  diagund    = p.dblue,

  lineno     = p.dgrey, 
  signcol    = p.dgrey, 
  msgarea    = p.grey, 
  typeparam  = p.magenta,

  comment    = p.cyan, 

  normal     = p.white, 
  curlineno  = p.grey, 

  item       = p.yellow, 
  matchparen = p.yellow, 
  type       = p.yellow, 
  func       = p.yellow, 

  variable   = p.green, 
  btype      = p.green, 

  keyword    = p.red,

  literal    = p.magenta, 
  str        = p.magenta, 
}
