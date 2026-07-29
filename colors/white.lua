-- white

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.grey.g     = "#a0a0a0"
p.magenta.g  = "#ffc0ff"
p.dmagenta.g = "#c000a0"
p.red.g      = "#d05800"
p.dgreen.g   = "#407800"
p.dcyan.g    = "#0078d0"
p.blue.g     = "#6030ff"

local CONSTANT = ""

c.apply {
  search     = p.yellow, 
  visual     = p.cyan, 
  diagund    = p.magenta,

  canvas     = p.white, 
  signcol    = p.grey, 
  lineno     = p.grey, 
  msgarea    = p.grey, 
  comment    = p.grey, 
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
