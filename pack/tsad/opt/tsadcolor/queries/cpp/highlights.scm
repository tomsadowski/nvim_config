; Functions

(comment) @comment
(identifier) @variable
(string_literal) @string
(raw_string_literal) @string
(number_literal) @number

(template_function
  name: (identifier) @function)

(template_method
  name: (field_identifier) @function)

(template_function
  name: (identifier) @function)

(function_declarator
  declarator: (qualified_identifier
    name: (identifier) @function))

(call_expression
  function: (qualified_identifier
    name: (identifier) @function))

(call_expression
  function: (identifier) @function)

(field_expression      field: (field_identifier) @variable.member)
(field_expression      argument: (identifier)        @normal)
(field_expression      argument: (field_expression      
                       field: (field_identifier)  @normal (#set! priority 102)))

(function_declarator
  declarator: (field_identifier) @function)

; Types

(namespace_identifier) @normal
;((namespace_identifier) @type
; (#match? @type "^[A-Z]"))

(auto) @type

; Constants

(this) @variable.builtin
(null "nullptr" @constant)

; Modules
(module_name
  (identifier) @module)

[
 "NULL"
 "switch"
 "const"
 "for"
 "if"
 "else"
 "return"
 "while"
 "break"
 "case"
 "default"
 "catch"
 "class"
 "co_await"
 "co_return"
 "co_yield"
 "constexpr"
 "constinit"
 "consteval"
 "delete"
 "explicit"
 "final"
 "friend"
 "mutable"
 "namespace"
 "noexcept"
 "new"
 "override"
 "private"
 "protected"
 "public"
 "template"
 "throw"
 "try"
 "typename"
 "using"
 "concept"
 "requires"
 "virtual"
 "import"
 "export"
 "module"
] @keyword

