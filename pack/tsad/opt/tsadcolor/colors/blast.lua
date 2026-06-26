-- blast

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#303438"
p.dgrey.g    = "#747a80"
p.white.g    = "#f0e0d0"

p.dred.g     = "#503638"
p.dyellow.g  = "#605838"
p.dblue.g    = "#344450"

p.magenta.g  = "#ffb8c8"
p.red.g      = "#ff8070"
p.yellow.g   = "#ffd080"
p.cyan.g     = "#b0d0ff"
p.blue.g     = "#c0b0ff"

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
