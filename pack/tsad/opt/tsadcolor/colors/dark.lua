-- derelictspaceship

require "treesitter"
local c = require "color"
local p = vim.deepcopy(c.palette)

p.black.g    = "#121820"
p.dgrey.g    = "#747a80"
p.grey.g     = "#c0c8d0"
p.white.g    = "#d0b0a0"

local CONSTANT = ""

p.dred.g     = "#3c2c30"
p.dyellow.g  = "#504c30"
p.dblue.g    = "#244050"

local CONSTANT = ""

p.magenta.g  = "#ff88a8"
p.red.g      = "#ff6060"
p.yellow.g   = "#f0a060"
p.cyan.g     = "#50a070"
p.blue.g     = "#d8bcf0"

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
