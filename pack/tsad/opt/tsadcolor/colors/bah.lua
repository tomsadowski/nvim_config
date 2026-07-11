-- OSHA

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

--p.black.g    = "#26282c"
p.dgrey.g    = "#747880"
p.white.g    = "#d0c8bc"

p.dred.g     = "#101010"
p.dyellow.g  = "#302c08"
p.dblue.g    = "#081830"

p.magenta.g  = "#ffa8bc"
p.yellow.g   = "#e0b068"

p.red.g      = "#ff7060"
p.cyan.g     = "#d0a850"
p.dcyan.g    = "#80a8ff"

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
  matchparen = p.white, 
  func       = p.white, 
  keyword    = p.red,
  variable   = p.white, 
  typeparam  = p.white,
  item       = p.cyan, 
  type       = p.cyan, 
  btype      = p.cyan, 
  constant   = p.cyan, 
  literal    = p.dcyan, 
  str        = p.dcyan, 
}
