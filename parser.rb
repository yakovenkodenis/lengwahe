#
# DO NOT MODIFY!!!!
# This file is automatically generated by Racc 1.4.7
# from Racc grammer file "".
#

require 'racc/parser.rb'

  require "lexer.rb"
  require "nodes"

class Parser < Racc::Parser

module_eval(<<'...end grammar.y/module_eval...', 'grammar.y', 107)
  def parse(code, show_tokens = false)
    @tokens = Lexer.new.tokenize(code)
    puts @tokens.inspect if show_tokens
    do_parse
  end

  def next_token
    @tokens.shift
  end
...end grammar.y/module_eval...
##### State transition tables begin ###

racc_action_table = [
     5,    37,     9,    10,    42,    13,    15,    17,    19,     1,
     3,     6,     5,    37,     9,    10,    40,    13,    15,    17,
    19,     1,     3,     6,     5,    29,     9,    10,    29,    13,
    15,    17,    19,     1,     3,     6,     5,    46,     9,    10,
    35,    13,    15,    17,    19,     1,     3,     6,     5,    29,
     9,    10,    29,    13,    15,    17,    19,     1,     3,     6,
     5,    48,     9,    10,    49,    13,    15,    17,    19,     1,
     3,     6,     5,    31,     9,    10,    52,    13,    15,    17,
    19,     1,     3,     6,     5,    30,     9,    10,    29,    13,
    15,    17,    19,     1,     3,     6,     5,    25,     9,    10,
    28,    13,    15,    17,    19,     1,     3,     6,    28,    53,
    27,    37,    58,    21,    45,    29,    29,    22,    27,    55,
    44,    56,    45,    37,    23,    37,    60 ]

racc_action_check = [
     0,    30,     0,     0,    30,     0,     0,     0,     0,     0,
     0,     0,    26,    31,    26,    26,    29,    26,    26,    26,
    26,    26,    26,    26,    25,    33,    25,    25,    34,    25,
    25,    25,    25,    25,    25,    25,     5,    36,     5,     5,
    23,     5,     5,     5,     5,     5,     5,     5,    37,    38,
    37,    37,    39,    37,    37,    37,    37,    37,    37,    37,
    22,    40,    22,    22,    42,    22,    22,    22,    22,    22,
    22,    22,    48,    10,    48,    48,    46,    48,    48,    48,
    48,    48,    48,    48,    21,     9,    21,    21,     8,    21,
    21,    21,    21,    21,    21,    21,    45,     6,    45,    45,
    47,    45,    45,    45,    45,    45,    45,    45,     7,    47,
    47,    24,    54,     3,    54,    51,    24,     3,     7,    50,
    32,    50,    32,    52,     4,    55,    56 ]

racc_action_pointer = [
    -2,   nil,   nil,    96,   124,    34,    76,   102,    69,    73,
    60,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    82,    58,    40,    97,    22,    10,   nil,   nil,     4,
   -13,    -1,   102,     6,     9,   nil,    31,    46,    30,    33,
    44,   nil,    52,   nil,   nil,    94,    73,    94,    70,   nil,
   101,    96,   109,   nil,    94,   111,   114,   nil,   nil,   nil,
   nil ]

racc_action_default = [
    -1,   -19,   -12,   -20,   -39,   -39,   -27,    -2,    -3,   -39,
   -39,    -6,    -7,   -15,    -8,   -16,    -9,   -17,   -10,   -18,
   -11,   -24,   -39,   -39,   -39,   -39,    -5,   -14,   -13,   -39,
   -39,   -39,   -39,   -25,   -28,    61,   -36,   -39,   -29,    -4,
   -22,   -30,   -32,   -35,   -21,   -39,   -39,   -39,   -24,   -33,
   -39,   -26,   -39,   -38,   -39,   -39,   -39,   -37,   -23,   -31,
   -34 ]

racc_goto_table = [
    24,     7,    36,     4,    32,    50,   nil,   nil,    41,    43,
   nil,   nil,   nil,   nil,   nil,   nil,    33,    34,   nil,   nil,
    38,    39,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    57,    54,   nil,    59,   nil,   nil,   nil,   nil,    47,   nil,
    51,   nil,   nil,    33 ]

racc_goto_check = [
     3,     2,    13,     1,    12,    14,   nil,   nil,    13,    13,
   nil,   nil,   nil,   nil,   nil,   nil,     3,     3,   nil,   nil,
     3,     3,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
    13,    12,   nil,    13,   nil,   nil,   nil,   nil,     2,   nil,
     3,   nil,   nil,     3 ]

racc_goto_pointer = [
   nil,     3,     1,    -5,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   -17,   -22,   -37 ]

racc_goto_default = [
   nil,   nil,   nil,     8,    26,    11,    12,    14,    16,    18,
    20,     2,   nil,   nil,   nil ]

racc_reduce_table = [
  0, 0, :racc_error,
  0, 23, :_reduce_1,
  1, 23, :_reduce_2,
  1, 24, :_reduce_3,
  3, 24, :_reduce_4,
  2, 24, :_reduce_5,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 25, :_reduce_none,
  1, 26, :_reduce_none,
  1, 26, :_reduce_none,
  1, 27, :_reduce_15,
  1, 27, :_reduce_16,
  1, 27, :_reduce_17,
  1, 27, :_reduce_18,
  1, 27, :_reduce_19,
  1, 28, :_reduce_20,
  4, 28, :_reduce_21,
  3, 28, :_reduce_22,
  6, 28, :_reduce_23,
  0, 34, :_reduce_24,
  1, 34, :_reduce_25,
  3, 34, :_reduce_26,
  1, 29, :_reduce_27,
  3, 30, :_reduce_28,
  3, 30, :_reduce_29,
  3, 31, :_reduce_30,
  6, 31, :_reduce_31,
  0, 36, :_reduce_32,
  1, 36, :_reduce_33,
  3, 36, :_reduce_34,
  3, 32, :_reduce_35,
  3, 33, :_reduce_36,
  6, 33, :_reduce_37,
  3, 35, :_reduce_38 ]

racc_reduce_n = 39

racc_shift_n = 61

racc_token_table = {
  false => 0,
  :error => 1,
  :KUNG => 2,
  :KUNDI => 3,
  :FN => 4,
  :KLASE => 5,
  :NEWLINE => 6,
  :NUMERO => 7,
  :HIBLA => 8,
  :TAMA => 9,
  :MALI => 10,
  :WALA => 11,
  :IDENTIFIER => 12,
  :CONSTANT => 13,
  :INDENT => 14,
  :DEDENT => 15,
  ";" => 16,
  "(" => 17,
  ")" => 18,
  "." => 19,
  "," => 20,
  "=" => 21 }

racc_nt_base = 22

racc_use_result_var = true

Racc_arg = [
  racc_action_table,
  racc_action_check,
  racc_action_default,
  racc_action_pointer,
  racc_goto_table,
  racc_goto_check,
  racc_goto_default,
  racc_goto_pointer,
  racc_nt_base,
  racc_reduce_table,
  racc_token_table,
  racc_shift_n,
  racc_reduce_n,
  racc_use_result_var ]

Racc_token_to_s_table = [
  "$end",
  "error",
  "KUNG",
  "KUNDI",
  "FN",
  "KLASE",
  "NEWLINE",
  "NUMERO",
  "HIBLA",
  "TAMA",
  "MALI",
  "WALA",
  "IDENTIFIER",
  "CONSTANT",
  "INDENT",
  "DEDENT",
  "\";\"",
  "\"(\"",
  "\")\"",
  "\".\"",
  "\",\"",
  "\"=\"",
  "$start",
  "Root",
  "Expressions",
  "Expression",
  "Terminator",
  "Literal",
  "Call",
  "Constant",
  "Assign",
  "Def",
  "Class",
  "If",
  "ArgList",
  "Block",
  "ParamList" ]

Racc_debug_parser = false

##### State transition tables end #####

# reduce 0 omitted

module_eval(<<'.,.,', 'grammar.y', 16)
  def _reduce_1(val, _values, result)
     result = Nodes.new([]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 17)
  def _reduce_2(val, _values, result)
     result = val[0] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 21)
  def _reduce_3(val, _values, result)
     result = Nodes.new(val) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 22)
  def _reduce_4(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 23)
  def _reduce_5(val, _values, result)
     result = Nodes.new([val[0]]) 
    result
  end
.,.,

# reduce 6 omitted

# reduce 7 omitted

# reduce 8 omitted

# reduce 9 omitted

# reduce 10 omitted

# reduce 11 omitted

# reduce 12 omitted

# reduce 13 omitted

# reduce 14 omitted

module_eval(<<'.,.,', 'grammar.y', 42)
  def _reduce_15(val, _values, result)
     result = LiteralNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 43)
  def _reduce_16(val, _values, result)
     result = LiteralNode.new(val[0]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 44)
  def _reduce_17(val, _values, result)
     result = LiteralNode.new(true) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 45)
  def _reduce_18(val, _values, result)
     result = LiteralNode.new(false) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 46)
  def _reduce_19(val, _values, result)
     result = LiteralNode.new(nil) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 49)
  def _reduce_20(val, _values, result)
     result = CallNode.new(nil,val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 50)
  def _reduce_21(val, _values, result)
     result = CallNode.new(nil, val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 51)
  def _reduce_22(val, _values, result)
     result = CallNode.new(val[0], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 53)
  def _reduce_23(val, _values, result)
     result = CallNode.new(val[0],val[2], val[4]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 57)
  def _reduce_24(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 58)
  def _reduce_25(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 59)
  def _reduce_26(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 63)
  def _reduce_27(val, _values, result)
     result = GetConstantNode.new(val[0])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 68)
  def _reduce_28(val, _values, result)
     result = SetLocalNode.new(val[0], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 69)
  def _reduce_29(val, _values, result)
     result = SetConstantNode.new(val[0], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 74)
  def _reduce_30(val, _values, result)
     result = DefNode.new(val[1], [], val[2]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 76)
  def _reduce_31(val, _values, result)
     result = DefNode.new(val[1], val[3], val[5])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 80)
  def _reduce_32(val, _values, result)
     result = [] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 81)
  def _reduce_33(val, _values, result)
     result = val 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 82)
  def _reduce_34(val, _values, result)
     result = val[0] << val[2] 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 87)
  def _reduce_35(val, _values, result)
     result = ClassNode.new(val[1], val[2])
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 91)
  def _reduce_36(val, _values, result)
     result = IfNode.new( val[1], val[2] ) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 93)
  def _reduce_37(val, _values, result)
     result = IfNode.new( val[1], val[2], val[5]) 
    result
  end
.,.,

module_eval(<<'.,.,', 'grammar.y', 97)
  def _reduce_38(val, _values, result)
     result = val[1] 
    result
  end
.,.,

def _reduce_none(val, _values, result)
  val[0]
end

end   # class Parser
