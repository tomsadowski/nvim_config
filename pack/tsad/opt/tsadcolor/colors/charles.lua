-- magic

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#101820"
p.dgrey.g    = "#747a80"
p.grey.g     = "#c0c8d0"
p.white.g    = "#d0b8a8"

p.dred.g     = "#3c2c30"
p.dyellow.g  = "#504c30"
p.dblue.g    = "#244050"

--p.magenta.g  = "#f0a0a8"
p.magenta.g  = "#e090a0"
p.red.g      = "#e07060"
p.yellow.g   = "#c09850"
p.cyan.g     = "#a0b8c8"
p.dcyan.g    = "#b898e0"

local CONSTANT = ""

c.apply {
  search     = p.dyellow, 
  visual     = p.dblue, 
  diagund    = p.dred,

  canvas     = p.black, 
  signcol    = p.dgrey, 
  lineno     = p.dgrey, 
  msgarea    = p.dgrey, 
  comment    = p.dgrey, 
  curlineno  = p.white, 

  normal     = p.white, 
  matchparen = p.magenta, 
  func       = p.magenta, 
  keyword    = p.red,
  variable   = p.yellow, 
  typeparam  = p.yellow,
  item       = p.cyan, 
  type       = p.cyan, 
  btype      = p.cyan, 
  constant   = p.cyan, 
  literal    = p.dcyan, 
  str        = p.dcyan, 
}
