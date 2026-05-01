-- 2fire

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)
local p2 = vim.deepcopy(c.palette)

  p.black.g    = "#202428"
  p.dgrey.g    = "#555a60"
  p.grey.g     = "#757a80"
  p.white.g    = "#d8d0c8"

  p.dblue.g    = "#252a30"
  p.dyellow.g  = "#3c3a20"
  p.dcyan.g    = "#203850"

  p.red.g      = "#e06058"
  p.yellow.g   = "#b8a040"
  p.cyan.g     = "#70b0b8"
  p.magenta.g  = "#b886d8"

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
