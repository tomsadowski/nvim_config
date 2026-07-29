-- level

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#232528"
p.dgrey.g    = "#707478"
p.white.g    = "#d8d0cc"

p.dred.g     = "#402528"
p.dyellow.g  = "#484028"
p.dblue.g    = "#283c38"

p.magenta.g  = "#e89ac0"
p.red.g      = "#f06058"
p.yellow.g   = "#d8b068"
p.cyan.g     = "#70c0a0"
p.dcyan.g    = "#a0a8ff"

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
