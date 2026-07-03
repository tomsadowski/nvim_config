-- jordan

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#14202c"
p.dgrey.g    = "#707880"
p.white.g    = "#d0b8a8"

p.dred.g     = "#402028"
p.dyellow.g  = "#403c28"
p.dblue.g    = "#183040"

p.magenta.g  = "#cc989c"
p.red.g      = "#d07060"
p.yellow.g   = "#c09868"
p.cyan.g     = "#98a4c8"
p.dcyan.g    = "#7ca8a0"

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
