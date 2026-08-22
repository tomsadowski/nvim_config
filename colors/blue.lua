-- tricolor

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)


local CONSTANT = ""

c.apply {
  search     = p.dyellow, 
  visual     = p.blue, 
  diagund    = p.dmagenta,

  canvas     = p.dblue, 

  signcol    = p.dcyan, 
  lineno     = p.dcyan, 
  msgarea    = p.dcyan, 
  comment    = p.dcyan, 

  normal     = p.dcyan, 
  curlineno  = p.cyan, 
  import     = p.cyan,
  trunk      = p.cyan,
  path       = p.cyan, 
  variant    = p.cyan, 
  variable   = p.cyan, 
  func       = p.cyan, 

  keyword    = p.magenta,
  typeparam  = p.green,
  item       = p.green, 
  type       = p.green, 
  btype      = p.green, 
  constant   = p.green, 
  literal    = p.yellow, 
  str        = p.yellow, 
  matchparen = p.yellow, 
}
