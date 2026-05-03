-- nightsea

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)
local p2 = vim.deepcopy(c.palette)

  p.black.g    = "#0a0a0a"
  p.dgrey.g    = "#505050"
  p.grey.g     = "#808080"

  p.white.g    = "#908880"
  p.yellow.g   = "#c0b0a0"

  p.dblue.g    = "#252a30"
  p.dyellow.g  = "#3c3a20"
  p.dcyan.g    = "#203850"

  p.green.g    = "#604070"
  p.red.g      = "#b06040"
  p.cyan.g     = "#8080a0"
  p.magenta.g  = "#a07080"

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
