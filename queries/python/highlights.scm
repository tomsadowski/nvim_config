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
  "@"
  "("
  ")"
  "["
  "]"
  "{"
  "}"
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

(identifier) @variable

(attribute
  object: (identifier) @normal
  attribute: (identifier))


((identifier) @constant
 (#match? @constant "^[A-Z][A-Z_]*$"))


(argument_list
  (identifier) @param (#set! priority 105))

(parameters (identifier) @param (#set! priority 105))

; Function calls

(decorator) @function
(decorator
  (identifier) @function)

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
(call function: (attribute attribute: (identifier) @function.method))

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

((identifier) @type (#match? @type "^[A-Z]"))

(dotted_name (identifier) @trunk (identifier))

(subscript 
  value: (identifier)
  subscript: (identifier) @param (#set! priority 105)
)

(subscript
  value: (attribute
    object: (attribute
      object: (identifier)
      attribute: (identifier)
    ) @trunk
    attribute: (identifier)
  )
  subscript: (attribute
    object: (identifier)
    attribute: (identifier)
  )
)

(attribute
  object: (attribute
    object: (identifier) 
    attribute: (identifier) @trunk
  )
)

(call
  function: (attribute
    object: (attribute
      object: (identifier)
      attribute: (identifier) @caller (#set! priority 105)
    )
    attribute: (identifier)
  )
  arguments: (argument_list)
)

(call
  function: (attribute
    object: (identifier) @caller (#set! priority 105)
  )
  arguments: (argument_list)
)
