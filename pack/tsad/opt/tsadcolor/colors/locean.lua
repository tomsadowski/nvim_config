-- locean

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#242628"
p.dgrey.g    = "#646a70"
p.white.g    = "#c0b0a0"

p.dred.g     = "#402628"
p.dyellow.g  = "#504828"
p.dblue.g    = "#243440"

p.magenta.g  = "#e494a0"
p.red.g      = "#e06050"
p.yellow.g   = "#c8a050"
p.cyan.g     = "#78a0b0"
p.blue.g     = "#a090d8"

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
  normal     = p.white, 
  curlineno  = p.white, 
  keyword    = p.red,
  variable   = p.yellow, 
  typeparam  = p.yellow,
  item       = p.cyan, 
  type       = p.cyan, 
  btype      = p.cyan, 
  constant   = p.cyan, 
  matchparen = p.magenta, 
  func       = p.magenta, 
  literal    = p.blue, 
  str        = p.blue, 
}
