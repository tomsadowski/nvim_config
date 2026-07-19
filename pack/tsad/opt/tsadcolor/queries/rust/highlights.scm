[
  (mutable_specifier)
  "use"
  "mod"
  "default"
  "impl"
  "let"
  "move"
  "unsafe"
  "where"
  "enum"
  "struct"
  "union"
  "trait"
  "type"
  "async"
  "await"
  "gen"
  "try" 
  "ref"
  "pub"
  "raw"
  "const"
  "static"
  "dyn"
  "extern"
  "fn"
  "as"
  "return"
  "yield"
  "if"
  "else"
  "match"
  "break"
  "continue"
  "in"
  "loop"
  "while"
  "for"
] @keyword
[
  (escape_sequence)
  (shebang)
  (lifetime)
  "!"
  "!="
  "%"
  "%="
  "&"
  "&&"
  "&="
  "*"
  "*="
  "+"
  "+="
  "-"
  "-="
  ".."
  "..="
  "..."
  "/"
  "/="
  "<"
  "<<"
  "<<="
  "<="
  "=>"
  ">"
  "="
  "=="
  ">="
  ">>"
  ">>="
  "->"
  "^"
  "^="
  "|"
  "|="
  "||"
  "?"
  "*"
  "|"
  "("
  ")"
  "["
  "]"
  "{"
  "}"
  ","
  "."
  ":"
  "::"
  ";"
  "@"
  "#"
  "_"
] @normal

(line_comment) @comment
(block_comment) @comment
(outer_doc_comment_marker) @comment
(inner_doc_comment_marker) @comment
(raw_string_literal) @string
(string_literal) @string
(char_literal) @character
(boolean_literal) @boolean
(integer_literal) @number
(float_literal) @number.float
(primitive_type) @type


; identifier
(identifier) @normal
(shorthand_field_initializer  (identifier) @variable.member)
(field_initializer            (identifier) @variable)
(assignment_expression  left: (identifier) @variable)
(assignment_expression right: (identifier) @variable)
(compound_assignment_expr     (identifier) @variable)
(if_expression                (identifier) @variable)
(array_expression             (identifier) @variable)
(tuple_expression             (identifier) @variable)
(index_expression             (identifier) @variable)
(type_cast_expression         (identifier) @variable)
(range_expression             (identifier) @variable)
(binary_expression            (identifier) @variable)
(return_expression            (identifier) @variable)
(unary_expression             (identifier) @variable)
(reference_expression  value: (identifier) @variable)
(field_pattern                (identifier) @variable)
(tuple_pattern                (identifier) @variable)
(const_item             name: (identifier) @constant)
(mod_item               name: (identifier) @normal)
(function_item          name: (identifier) @function)
(function_signature_item      (identifier) @function)
(match_arm                    (identifier) @variable)
(block                        (identifier) @variable)
(lifetime                     (identifier) @variable)
(scoped_type_identifier path: (identifier) @normal)
(enum_variant           name: (identifier) @normal)

(scoped_identifier path: (identifier) @normal)
(scoped_identifier name: (identifier) @type)

(for_expression      pattern: (identifier) @variable)
(for_expression        value: (identifier) @variable)
(for_expression 
  (reference_expression value: (identifier) @variable))

(match_expression (identifier) @variable)
(match_expression 
  (reference_expression value: (identifier) @variable.parameter))

(arguments (identifier) @variable)
(arguments 
  (reference_expression value: (identifier) @variable.parameter))

(match_pattern (identifier) @variable)
(or_pattern (identifier) @type (#match? @type "^[A-Z]"))
(match_pattern 
  (scoped_identifier name: (identifier) @type))  
;(match_pattern (identifier) @type (#match? @type "^[A-Z]"))

(tuple_struct_pattern type: (identifier) @type)
(tuple_struct_pattern   
  type: (identifier)    
        (identifier) @variable.parameter)
(tuple_struct_pattern   
  type: (identifier) 
        (reference_pattern 
          (identifier) @variable.parameter))
(tuple_struct_pattern   
  type: (scoped_identifier) 
        (identifier) @variable.parameter)
(tuple_struct_pattern
  type: (scoped_identifier
    name: (identifier) @type))  
(tuple_struct_pattern 
  type: (identifier) @type
        (identifier) @variable.parameter)

(let_condition (identifier) @variable)
(let_condition       
  pattern: (tuple_struct_pattern) (identifier) @variable)

(let_declaration       value: (identifier) @variable)
(let_declaration     pattern: (identifier) @variable)
(let_declaration 
  pattern: (tuple_struct_pattern 
    type: (identifier) 
          (identifier) @normal))

(reference_pattern (identifier) @variable.parameter)

(parameter pattern: (identifier) @variable.parameter)
(parameter 
  (ref_pattern (identifier) @variable.parameter))
(parameter 
  (ref_pattern 
    (mut_pattern (identifier) @variable.parameter)))

(attribute 
  (scoped_identifier 
    (identifier) @function.macro .))

(attribute_item 
  (attribute 
    (identifier) @normal))
(attribute_item
  (attribute 
    (identifier) 
    arguments: (token_tree (identifier) @variable)))

(inner_attribute_item 
  (attribute 
    (identifier) @normal))

(field_expression value: (identifier) @normal)

(generic_function (identifier) @function)
(generic_function 
  (scoped_identifier name: (identifier) @type))
(generic_function   
  function: (field_expression 
    value: (identifier) @type))

(macro_invocation macro: (identifier) @function.macro)
(macro_invocation
  macro: (scoped_identifier 
    (identifier) @function.macro .))

path: (scoped_identifier 
  path: (identifier) 
  name: (identifier) @normal)

(scoped_identifier      
  (scoped_identifier 
    name: (identifier) @normal))


function: (identifier) @type     (#match? @type "^[A-Z]")
function: (identifier) @function (#match? @function "^[a-z]")

function: (scoped_identifier      
  (scoped_identifier 
    name: (identifier) @normal))

function: (scoped_identifier
  path: (identifier)
  name: (identifier) @type (#match? @type "^[A-Z]"))

function: (scoped_identifier
  path: (identifier)
  name: (identifier) @function (#match? @function "^[a-z]"))

function: (scoped_identifier
  path: (scoped_identifier)
  name: (identifier) @type (#match? @type "^[A-Z]"))

function: (scoped_identifier
  path: (scoped_identifier)
  name: (identifier) @function (#match? @function "^[a-z]"))

(call_expression
  function: (identifier) @type     (#match? @type "^[A-Z]"))
(call_expression
  function: (identifier) @function (#match? @function "^[a-z]"))

(call_expression 
  function: (field_expression 
    value: (identifier) @variable))
;(call_expression 
;  function: (scoped_identifier 
;    name: (identifier) @type))

(mut_pattern 
  (mutable_specifier)
  (identifier) @variable)

(use_list (identifier) @type)
(use_list 
  (scoped_identifier
    path: (identifier) @normal
    name: (identifier) @type) (#set! priority 105))

(use_declaration      
  argument: (scoped_identifier 
    path: (identifier) @normal (#set! priority 105)
    name: (identifier) @type)) (#set! priority 105)
(use_declaration      
  argument: (scoped_identifier 
    name: (identifier) @type)) (#set! priority 105)

((scoped_use_list) 
  path: (identifier) @normal (#set! priority 105))
(scoped_use_list      
  path: (scoped_identifier 
    name: (identifier) @normal)) (#set! priority 105)

((identifier) @constant (#match? @constant "^[A-Z][A-Z_]*$"))
((identifier) @type     (#any-of? @type "Some" "None" "Ok" "Err"))

(let_declaration
  pattern: (tuple_struct_pattern
    type: (identifier)
          (identifier) @variable
  )
)


; shorthand_field_identifier
(shorthand_field_identifier) @variable


; type_identifier
(type_identifier)                                       @type
(type_arguments                       (type_identifier) @type) 
(ordered_field_declaration_list type: (type_identifier) @type)
(trait_item                     name: (type_identifier) @type)
(struct_item                    name: (type_identifier) @type)
(enum_item                      name: (type_identifier) @type)
(type_parameter                 name: (type_identifier) @type)
(where_predicate                left: (type_identifier) @type)

(impl_item        (type_identifier) @type)
(impl_item trait: (type_identifier) @type)
(impl_item  type: (type_identifier) @type)
(impl_item 
  (generic_type (type_identifier) @type))

(scoped_type_identifier name: (type_identifier) @type)

(generic_type 
  type: (scoped_type_identifier 
    name: (type_identifier) @type))

(struct_expression 
  name: (scoped_type_identifier 
    name: (type_identifier) @type))

; field_identifier
(field_identifier) @variable
(field_pattern     name: (field_identifier) @normal)
(field_declaration name: (field_identifier) @variable.member.declaration)
(field_initializer       (field_identifier) @normal)

(field_expression field: (field_identifier) @variable.member)
(field_expression      
  value: (field_expression      
    field: (field_identifier) @normal))

(index_expression 
  (field_expression
    field: (field_identifier) @variable))

(generic_function   
  function: (field_expression 
    field: (field_identifier) @function))

(call_expression    
  function: (field_expression 
    field: (field_identifier) @function))
(call_expression    
  function: (field_expression
    value: (field_expression
      field: (field_identifier) @variable)))

function: (field_expression ; [57, 16] - [57, 23]
  value: (identifier) @variable; [57, 16] - [57, 17]
  field: (field_identifier)) ; [57, 18] - [57, 23]

; self
(self)                          @variable.builtin
(use_list                (self) @type (#set! priority 105))
(field_expression value: (self) @normal)
(call_expression 
  function: (field_expression   
    value: (self) @variable))


; misc
(metavariable) @function.macro
(macro_definition "macro_rules!" @function.macro)
(ordered_field_declaration_list type: (generic_type) @type)
(scoped_type_identifier         path: (scoped_identifier) @normal (#set! priority 105))
"$" @function.macro
(macro_invocation "!" @function)
(closure_parameters (_) @variable.parameter)
(parameter "_" @variable.parameter.builtin)
