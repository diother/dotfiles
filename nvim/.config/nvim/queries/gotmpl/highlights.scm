; Priorities of the highlight queries are raised, so that they overrule the
; often surrounding and overlapping highlights from the non-gotmpl injections.
;
; Identifiers
([
  (field)
  (field_identifier)
] @variable.property)

((variable) @variable.global)

; Function calls
(function_call
  function: (identifier) @function.method)

(method_call
  method: (selector_expression
    field: (field_identifier) @function.instance))

; Builtin functions
(function_call
  function: (identifier) @function.builtin
  (#any-of? @function.builtin
    "and" "call" "html" "index" "slice" "js" "len" "not" "or" "print" "printf" "println" "urlquery"
    "eq" "ne" "lt" "ge" "gt" "ge"))

; Operators
([
  "|"
  "="
  ":="
] @operator.arithmetic)

; Delimiters
([
  "."
  ","
] @punctuation.separator)

([
  "{{"
  "}}"
  "{{-"
  "-}}"
  ")"
  "("
] @punctuation.parenthesis)

; Actions
(if_action
  [
    "if"
    "else"
    "else if"
    "end"
  ] @module)

(range_action
  [
    "range"
    "else"
    "end"
  ] @keyword.loop)

(template_action
  "template" @type.builtin)

(block_action
  [
    "block"
    "end"
  ] @keyword.block)

(define_action
  [
    "define"
    "end"
  ] @keyword.define)

(with_action
  [
    "with"
    "else"
    "end"
  ] @keyword.conditional)

; Literals
([
  (interpreted_string_literal)
  (raw_string_literal)
] @variable)

((rune_literal) @string.symbol)

((escape_sequence) @string.escape)

([
  (int_literal)
  (imaginary_literal)
] @number.integer)

((float_literal) @number.float)

([
  (true)
  (false)
] @boolean.value)

((nil) @constant.null)

((comment) @comment.single_line @spell)
