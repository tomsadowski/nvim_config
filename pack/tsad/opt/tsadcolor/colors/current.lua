-- ocean

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#141618"
p.dgrey.g    = "#606870"
p.white.g    = "#c0b0a0"

p.dred.g     = "#301618"
p.dyellow.g  = "#403818"
p.dblue.g    = "#142430"

p.magenta.g  = "#c48490"
p.red.g      = "#d06050"
p.yellow.g   = "#b89050"
p.cyan.g     = "#78a0b0"
p.blue.g     = "#a090c8"

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
