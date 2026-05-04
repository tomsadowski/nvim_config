-- seascape_05042026

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)
local p2 = vim.deepcopy(c.palette)

  p.black.g    = "#20252a"
  p.dgrey.g    = "#586070"
  p.grey.g     = "#8088a0"

  p.white.g    = "#a0a090"
  p.red.g      = "#e07870"
  p.yellow.g   = "#d0d0b0"
  p.cyan.g     = "#a0d0d0"
  p.magenta.g  = "#d090b0"

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
