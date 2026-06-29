-- glowingoceanfloor

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202830"
p.dgrey.g    = "#747a80"
p.grey.g     = "#c0c8d0"
p.white.g    = "#f0d8b8"

p.dred.g     = "#3c2c30"
p.dyellow.g  = "#504c30"
p.dblue.g    = "#244050"

p.magenta.g  = "#ffb0b8"
p.red.g      = "#ff8070"
p.yellow.g   = "#e0b870"
p.cyan.g     = "#b0d6c8"
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
  literal    = p.blue, 
  str        = p.blue, 
}
