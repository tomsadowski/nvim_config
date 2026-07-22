-- fire

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#232528"
p.dgrey.g    = "#707478"
p.white.g    = "#d8d0cc"

p.dred.g     = "#402830"
p.dyellow.g  = "#444028"
p.dblue.g    = "#28403c"

p.magenta.g  = "#f09ac0"
p.red.g      = "#ff7060"
p.yellow.g   = "#e0b068"
p.cyan.g     = "#70c0a0"
p.dcyan.g    = "#aaaaff"

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
