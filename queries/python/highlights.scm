
(identifier) @variable

(attribute
  object: (identifier) @normal
  attribute: (identifier))



;((identifier) @constructor
; (#match? @constructor "^[A-Z]"))

((identifier) @constant
 (#match? @constant "^[A-Z][A-Z_]*$"))


(argument_list
  (identifier) @param (#set! priority 105))

(parameters (identifier) @param (#set! priority 105))

; Function calls

(decorator) @function
(decorator
  (identifier) @function)

((call
  function: (attribute attribute: (identifier) @function.method))
 (#set! priority 105))
(call
  function: (identifier) @function)

; Builtin functions

((call
  function: (identifier) @function.builtin)
 (#match?
   @function.builtin
   "^(abs|all|any|ascii|bin|bool|breakpoint|bytearray|bytes|callable|chr|classmethod|compile|complex|delattr|dict|dir|divmod|enumerate|eval|exec|filter|float|format|frozenset|getattr|globals|hasattr|hash|help|hex|id|input|int|isinstance|issubclass|iter|len|list|locals|map|max|memoryview|min|next|object|oct|open|ord|pow|print|property|range|repr|reversed|round|set|setattr|slice|sorted|staticmethod|str|sum|super|tuple|type|vars|zip|__import__)$"))

; Function definitions

(function_definition
  name: (identifier) @function)

(attribute attribute: (identifier) @property)
(type (identifier) @type)

; Literals

[
  (none)
  (true)
  (false)
] @number

[
  (integer)
  (float)
] @number

(comment) @comment
(string) @string
(escape_sequence) @escape

(interpolation
  "{" @punctuation.special
  "}" @punctuation.special) @embedded

[
  "-"
  "-="
  "!="
  "*"
  "**"
  "**="
  "*="
  "/"
  "//"
  "//="
  "/="
  "&"
  "&="
  "%"
  "%="
  "^"
  "^="
  "+"
  "->"
  "+="
  "<"
  "<<"
  "<<="
  "<="
  "<>"
  "="
  ":="
  "=="
  ">"
  ">="
  ">>"
  ">>="
  "|"
  "|="
  "~"
  "@="
] @operator

[
  "and"
  "in"
  "is"
  "not"
  "or"
  "is not"
  "not in"
  "as"
  "assert"
  "async"
  "await"
  "break"
  "class"
  "continue"
  "def"
  "del"
  "elif"
  "else"
  "except"
  "exec"
  "finally"
  "for"
  "from"
  "global"
  "if"
  "import"
  "lambda"
  "nonlocal"
  "pass"
  "print"
  "raise"
  "return"
  "try"
  "while"
  "with"
  "yield"
  "match"
  "case"
] @keyword

(subscript 
  value: (identifier)
  subscript: (identifier) @param (#set! priority 105))

(subscript
  value: (attribute
    object: (attribute
      object: (identifier)
      attribute: (identifier)) @normal; (#set! priority 105)
    attribute: (identifier))
 subscript: (attribute
   object: (identifier)
   attribute: (identifier)))

(attribute
  object: (attribute
    object: (identifier) 
    attribute: (identifier) @normal ;(#set! priority 105)
    ))

(call ; [168, 24] - [168, 51]
  function: (attribute ; [168, 24] - [168, 49]
    object: (attribute ; [168, 24] - [168, 42]
      object: (identifier) ; [168, 24] - [168, 28]
      attribute: (identifier) @variable (#set! priority 105))
    attribute: (identifier)) ; [168, 43] - [168, 49]
  arguments: (argument_list)) ; [168, 49] - [168, 51]

(call ; [168, 24] - [168, 51]
  function: (attribute ; [168, 24] - [168, 49]
    object: (identifier) @variable) ; [168, 24] - [168, 28]
  arguments: (argument_list)) ; [168, 49] - [168, 51]

