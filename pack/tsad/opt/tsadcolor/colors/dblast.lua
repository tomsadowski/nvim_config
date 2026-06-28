-- blast

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202428"
p.dgrey.g    = "#747a80"
p.white.g    = "#f0e0d0"

p.dred.g     = "#382628"
p.dyellow.g  = "#504828"
p.dblue.g    = "#243440"

p.magenta.g  = "#ffb8c8"
p.red.g      = "#ff8070"
p.yellow.g   = "#f0d088"
p.cyan.g     = "#b8d4f0"
p.blue.g     = "#d8bcff"

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
