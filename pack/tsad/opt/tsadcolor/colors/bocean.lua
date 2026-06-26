-- bocean

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#343638"
p.dgrey.g    = "#747a80"
p.white.g    = "#d0c0b0"

p.dred.g     = "#503638"
p.dyellow.g  = "#605838"
p.dblue.g    = "#344450"

p.magenta.g  = "#f4a4b0"
p.red.g      = "#f07060"
p.yellow.g   = "#d8b060"
p.cyan.g     = "#88b0c0"
p.blue.g     = "#b0a0e8"

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
