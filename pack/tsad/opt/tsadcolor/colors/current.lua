-- OSHA

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#16181a"
p.dgrey.g    = "#606870"
p.white.g    = "#d8d0cc"

p.dred.g     = "#30181a"
p.dyellow.g  = "#44301a"
p.dblue.g    = "#16302c"

p.magenta.g  = "#f0a0c0"
p.red.g      = "#ff685c"
p.yellow.g   = "#e0b068"
p.cyan.g     = "#68c0a0"
p.dcyan.g    = "#c0a0ff"

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
