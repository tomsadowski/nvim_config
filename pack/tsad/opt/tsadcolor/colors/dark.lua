-- dark

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

  p.black.g    = "#181818"

  p.dblue.g    = "#303030"
  p.dyellow.g  = "#303020"
  p.dcyan.g    = "#203030"

  p.dgrey.g    = "#686868"

  p.white.g    = "#d0d0d0"
  p.cyan.g     = "#80d0e0"
  p.yellow.g   = "#d0c080"
  p.red.g      = "#f07878"
  p.magenta.g  = "#d088d0"

c.apply {
  search     = p.dcyan, 
  visual     = p.dyellow, 
  diagund    = p.dblue,
  canvas     = p.black, 
  signcol    = p.dgrey, 
  lineno     = p.dgrey, 
  msgarea    = p.dgrey, 
  comment    = p.dgrey, 
  normal     = p.white, 
  curlineno  = p.white, 
  keyword    = p.red,
  variable   = p.cyan, 
  typeparam  = p.cyan,
  type       = p.yellow, 
  item       = p.yellow, 
  matchparen = p.yellow, 
  func       = p.yellow, 
  btype      = p.yellow, 
  constant   = p.magenta, 
  literal    = p.magenta, 
  str        = p.magenta, 
}
