-- beam

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#202020"
p.dgrey.g    = "#707070"
p.white.g    = "#c8c8c8"

p.dred.g     = "#402028"
p.dyellow.g  = "#403c28"
p.dblue.g    = "#183040"

p.magenta.g  = "#f098c0"
p.red.g      = "#f0685c"
p.yellow.g   = "#e0c068"
p.cyan.g     = "#90b0ff"
p.dcyan.g    = "#60d0c0"

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
