-- berry

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#203048"
p.dgrey.g    = "#6080a0"
p.grey.g     = "#a0b0d8"
p.white.g    = "#c0b8b0"

p.dmagenta.g = "#402830"
p.dyellow.g  = "#504c40"
p.dblue.g    = "#283440"

p.dcyan.g    = "#40b8b0"
p.magenta.g  = "#d098d8"


local CONSTANT = ""

c.apply {
  search     = p.dyellow, 
  visual     = p.dblue, 
  diagund    = p.dmagenta,

  canvas     = p.black, 

  signcol    = p.dgrey, 
  lineno     = p.dgrey, 

  msgarea    = p.grey, 
  keyword    = p.grey,
  normal     = p.grey, 
  curlineno  = p.grey, 

  comment    = p.dgrey, 

  path       = p.white, 
  trunk      = p.white,
  import     = p.white,
  variant    = p.white, 
  variable   = p.white, 
  func       = p.white, 
  typeparam  = p.white,
  item       = p.white, 
  type       = p.white, 
  btype      = p.white, 
  constant   = p.white, 


  literal    = p.magenta, 
  str        = p.magenta, 
  matchparen = p.magenta, 
}
