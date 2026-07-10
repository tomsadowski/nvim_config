-- OSHA

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#16181a"
p.dgrey.g    = "#606870"
p.white.g    = "#d8d0cc"

p.dred.g     = "#40202c"
p.dyellow.g  = "#403c20"
p.dblue.g    = "#20403c"

p.magenta.g  = "#f0a0c0"
p.red.g      = "#ff685c"
p.yellow.g   = "#e0c068"
p.dcyan.g    = "#68c0b0"
p.cyan.g     = "#a8b0ff"

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
  item       = p.dcyan, 
  type       = p.dcyan, 
  btype      = p.dcyan, 
  constant   = p.dcyan, 
  literal    = p.cyan, 
  str        = p.cyan, 
}
