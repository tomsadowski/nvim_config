-- fire

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)
local p2 = vim.deepcopy(c.palette)

  p.black.g    = "#212326"
  p.dgrey.g    = "#585c60"
  p.grey.g     = "#757a80"
  p.white.g    = "#e8e8e8"

  p.dblue.g    = "#303438"
  p.dyellow.g  = "#3c3a20"
  p.dcyan.g    = "#203850"

  p.red.g      = "#f06860"
  p.yellow.g   = "#c8b040"
  p.cyan.g     = "#80c8d8"
  p.magenta.g  = "#e094e0"

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
