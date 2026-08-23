-- sputnik

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202830"
p.dgrey.g    = "#90a0a0"
p.white.g    = "#e0d8c8"

p.dmagenta.g = "#402830"
p.dyellow.g  = "#504c40"
p.dblue.g    = "#283440"

p.cyan.g     = "#90b0f0"
p.magenta.g  = "#d098c0"


local CONSTANT = ""

c.apply {
  search     = p.dyellow, 
  visual     = p.dblue, 
  diagund    = p.dmagenta,

  canvas     = p.black, 

  signcol    = p.dgrey, 
  lineno     = p.dgrey, 
  msgarea    = p.dgrey, 
  keyword    = p.dgrey,


  normal     = p.dgrey, 
  path       = p.white, 
  trunk      = p.white,
  curlineno  = p.white, 
  import     = p.white,
  variant    = p.white, 
  variable   = p.white, 
  func       = p.white, 
  typeparam  = p.white,
  item       = p.white, 
  type       = p.white, 
  btype      = p.white, 
  constant   = p.white, 

  comment    = p.cyan, 

  literal    = p.magenta, 
  str        = p.magenta, 
  matchparen = p.magenta, 
}
