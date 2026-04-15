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
  (shorthand_field_identifier)
  (shebang)
  (lifetime)
  (field_identifier)
  (identifier)
  (type_identifier)
  (primitive_type)
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

(line_comment)             @comment

(block_comment)            @comment

(outer_doc_comment_marker) @comment.documentation

(inner_doc_comment_marker) @comment.documentation

(raw_string_literal)       @string

(string_literal)           @string

(char_literal)             @character

(boolean_literal)          @boolean

(integer_literal)          @number

(float_literal)            @number.float

(macro_invocation 
  "!"                @function.call)

(shorthand_field_initializer 
  (identifier)       @variable.member)

(field_expression 
  field: (field_identifier) @variable.member)

(field_declaration 
  name: (field_identifier) @variable.member.declaration)

(assignment_expression
  left: (identifier)  @variable)

(assignment_expression 
  right: (identifier) @variable)

(if_expression
  (identifier) @variable)

(let_declaration
  value: (identifier) @variable)

(for_expression
  pattern: (identifier) @variable)

(for_expression
  value: (identifier) @variable)

(array_expression
  (identifier)  @variable)

(compound_assignment_expr
  (identifier)  @variable)

(tuple_expression 
  (identifier)  @variable)

(index_expression
  (identifier)  @variable)

(type_cast_expression
  (identifier)  @variable)

(field_pattern 
  (identifier)  @variable)

(field_initializer 
  (identifier)  @variable)

(tuple_pattern 
  (identifier)  @variable)

(range_expression 
  (identifier)  @variable)

(binary_expression 
  (identifier)  @variable)

(return_expression 
  (identifier)  @variable)

(match_arm 
  (identifier)  @variable)

(unary_expression 
  (identifier)  @variable)

(match_expression 
  (identifier)  @variable)

(arguments 
  (identifier)  @variable)

(block 
  (identifier)  @variable)

(const_item 
  name: (identifier)  @variable)

(closure_parameters 
  (_) @variable.parameter)

(let_condition       
  pattern: (tuple_struct_pattern)
           (identifier) @variable)
(let_condition       
           (identifier) @variable)

(reference_expression
  value: (identifier) @variable)

(for_expression 
  (reference_expression
    value: (identifier) @variable))

(index_expression 
  (field_expression
    field: (field_identifier) @variable))

(match_expression 
  (reference_expression  
    value:  (identifier) @variable.parameter))

(arguments 
  (reference_expression  
    value:  (identifier) @variable.parameter))

(match_pattern 
  (scoped_identifier
    name:   (identifier) @type))  

(match_pattern 
        (identifier) @variable)

(tuple_struct_pattern   
  type: (identifier)    
        (identifier) @variable.parameter)

(tuple_struct_pattern   
  type: (identifier) 
        (reference_pattern 
          (identifier) @variable.parameter))

(parameter 
  (ref_pattern
    (identifier) @variable.parameter))

(parameter 
  (ref_pattern 
    (mut_pattern
      (identifier) @variable.parameter)))

(tuple_struct_pattern   
  type: (scoped_identifier) 
        (identifier) @variable.parameter)

(parameter 
  pattern: (identifier) @variable.parameter)

(parameter 
  "_" @variable.parameter.builtin)

(self) @variable.builtin
"$"    @function.macro

(metavariable) @function.macro

(macro_definition 
  "macro_rules!"     @function.macro)

(macro_invocation 
  macro: (identifier) @function.macro)

(macro_invocation
  macro: (scoped_identifier 
           (identifier) @function.macro .))

(attribute 
  (scoped_identifier 
    (identifier)       @function.macro .))

(function_signature_item      
  (identifier)       @function)

(generic_function             
  (identifier)       @function)

(generic_function   
  function: (field_expression 
              field: (field_identifier) @function))

(call_expression    
  function: (identifier)       @function.call)

(call_expression    
  function: (field_expression 
              field: (field_identifier) @function.call))

(ordered_field_declaration_list 
  type: (type_identifier) @type)

(ordered_field_declaration_list 
  type: (primitive_type)  @type)

(ordered_field_declaration_list 
  type: (generic_type)    @type)

(scoped_type_identifier         
  name: (type_identifier) @type)

(impl_item 
  (generic_type 
    (type_identifier) @type))

(generic_type 
  type: (scoped_type_identifier 
          name: (type_identifier) @type))

(struct_expression 
  name: (scoped_type_identifier 
          name: (type_identifier) @type))

(mod_item 
  name: (identifier) @normal)

(attribute_item 
  (attribute 
    (identifier) @normal))

(inner_attribute_item 
  (attribute 
    (identifier) @normal))

(parameter 
  type: (type_identifier) @normal)

(parameter 
  type: (primitive_type) @normal)

(parameter 
  type: (reference_type) @normal)

(let_declaration 
  pattern: (tuple_struct_pattern 
             type:  (identifier) 
                    (identifier) @normal))

(field_expression 
  value: (identifier) @normal)

(scoped_identifier
  name: (identifier) @type)

(call_expression    
  function: (identifier) @type)

(tuple_struct_pattern
  type: (scoped_identifier
          name: (identifier) @type))  
(call_expression 
  function: (scoped_identifier 
              name: (identifier) @type))

(generic_function 
  (scoped_identifier 
    name: (identifier) @type))

(impl_item 
  (type_identifier) @normal)

(trait_item 
  name: (type_identifier) @item)

(impl_item 
  trait: (type_identifier) @item)

(impl_item 
  type:  (type_identifier) @item)

(struct_item 
  name: (type_identifier) @item)

(enum_item 
  name: (type_identifier) @item)

(function_item          
  name: (identifier) @item)

(let_declaration     
  pattern: (identifier) @variable)

(trait_bounds) @normal

(scoped_type_identifier 
  path: (identifier) @normal)

(scoped_type_identifier 
  path: (scoped_identifier) @normal)

(field_expression      
  value: (self) @normal)

(field_expression      
  value: (field_expression      
           field: (field_identifier) @normal))

(field_expression      
  field: (integer_literal) @number)

(enum_variant
  name: (identifier) @normal)

(generic_function   
  function: (field_expression   
              value: (identifier) @variable))

(call_expression 
  function: (field_expression   
              value: (self) @variable))

(call_expression 
  function: (field_expression 
              value: (identifier) @variable))

(call_expression    
  function: (field_expression
              value: (field_expression
                       field: (field_identifier) @variable)))

(scoped_identifier      
  path: (identifier) @normal)

(scoped_identifier      
  path: (scoped_identifier 
          name: (identifier) @normal))

(tuple_struct_pattern 
  type: (identifier) @type
        (identifier) @variable.parameter)

(function_item 
  return_type: (generic_type)     @normal)


(function_item 
  return_type: (type_identifier)  @normal)

(function_item 
  return_type: (primitive_type)   @normal)

(tuple_struct_pattern 
  type: (identifier) @type)

((mut_pattern 
  (mutable_specifier)
  (identifier) @variable))




((identifier) @type (#any-of? @type "Some" "None" "Ok" "Err"))

return_type: (generic_type 
  type: (scoped_type_identifier) @normal (#set! priority 105)
  type_arguments: (type_arguments 
    (unit_type))) 

(where_predicate 
  left: (type_identifier) @type.parameter)

(type_parameter 
  name: (type_identifier) @type.parameter)

(generic_type
  type: (type_identifier)
  type_arguments: (type_arguments
    (reference_type
      type: (type_identifier) @type.parameter)))

(generic_type 
  type: (type_identifier) 
  type_arguments: (type_arguments 
    (type_identifier) @type.parameter)) 

type_arguments: (type_arguments 
  (type_identifier) @type.parameter) 

(type_arguments 
  (tuple_type
    (type_identifier) @type.parameter))

type: (generic_type
  type: (type_identifier)
  type_arguments: (type_arguments
    (type_identifier) @type.parameter))

type: (generic_type 
  type_arguments: (type_arguments 
    (type_identifier) @type.parameter))

type_arguments: (type_arguments 
  (primitive_type) @type.parameter)

(attribute_item
  (attribute
    (identifier)
    arguments: (token_tree
      (identifier) @variable)))

((scoped_use_list) 
 path: (identifier) @normal (#set! priority 105))
(use_list 
  (self) @type (#set! priority 105))
(use_list 
  (identifier) @type (#set! priority 105))
(use_list 
  (scoped_identifier
    path: (identifier) @normal
    name: (identifier) @type) (#set! priority 105))
(scoped_use_list      
  path: (scoped_identifier 
    name: (identifier) @normal)) (#set! priority 105)
(use_declaration      
  argument: (scoped_identifier 
    path: (identifier) @normal (#set! priority 105)
    name: (identifier) @type)) (#set! priority 105)
(use_declaration      
  argument: (scoped_identifier 
    name: (identifier) @type)) (#set! priority 105)
