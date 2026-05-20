-- ldark

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

  p.black.g    = "#2c2c2c"

  p.dblue.g    = "#404040"
  p.dyellow.g  = "#404020"
  p.dcyan.g    = "#204040"

  p.dgrey.g    = "#686868"

  p.white.g    = "#d8d8d8"
  p.cyan.g     = "#80e0f0"
  p.yellow.g   = "#d8c888"
  p.red.g      = "#f08888"
  p.magenta.g  = "#d098e0"

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
