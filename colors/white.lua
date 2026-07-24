-- white

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.white.g    = "#ffffff"
p.dgrey.g    = "#888888"
p.black.g    = "#000000"

p.magenta.g = "#ff00ff"
p.yellow.g  = "#ffff00"
p.cyan.g    = "#00ffff"

p.dmagenta.g = "#b040a0"
p.red.g      = "#e02000"
p.dgreen.g   = "#407000"
p.dcyan.g    = "#0070b0"
p.blue.g     = "#6040f0"

local CONSTANT = ""

c.apply {
  search     = p.dyellow, 
  visual     = p.cyan, 
  diagund    = p.dred,

  canvas     = p.white, 
  signcol    = p.dgrey, 
  lineno     = p.dgrey, 
  msgarea    = p.dgrey, 
  comment    = p.dgrey, 
  curlineno  = p.black, 

  normal     = p.black, 
  matchparen = p.dmagenta, 
  func       = p.dmagenta, 
  keyword    = p.red,
  variable   = p.dgreen, 
  typeparam  = p.dgreen,
  item       = p.dcyan, 
  type       = p.dcyan, 
  btype      = p.dcyan, 
  constant   = p.dcyan, 
  literal    = p.blue, 
  str        = p.blue, 
}
