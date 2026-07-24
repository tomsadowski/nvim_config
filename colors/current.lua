-- white

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.grey.g = "#a0a0a0"

p.magenta.g = "#ff80ff"

p.dmagenta.g = "#c00090"
p.red.g      = "#d04000"
p.dgreen.g   = "#406800"
p.dcyan.g    = "#0068a0"
p.blue.g     = "#6000f0"

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
