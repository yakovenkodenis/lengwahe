class Parser

token KUNG KUNDI
token PARAAN
token KLASE
token NEWLINE
token NUMERO
token HIBLA
token TAMA MALI WALA
token IDENTIFIER
token CONSTANT
token INDENT DEDENT

rule

  Root:
      /* nothing */                   { result = Nodes.new([]) }
  | Expressions                       { result = val[0] }
  ;

  Expressions:
    Expression                        { result = Nodes.new(val) }
  | Expressions Terminator Expression { result = val[0] << val[2] }
  | Expressions Terminator            { result = Nodes.new([val[0]]) }
  ;

  Expression:
    Literal
  | Call
  | Constant
  | Assign
  | Def
  | Class
  | If
  ;

  Terminator:
    NEWLINE
  | ";"
  ;

  Literal:
    NUMERO                            { result = LiteralNode.new(val[0]) }
  | HIBLA                             { result = LiteralNode.new(val[0]) }
  | TAMA                              { result = LiteralNode.new(true) }
  | MALI                              { result = LiteralNode.new(false) }
  | WALA                              { result = LiteralNode.new(nil) }

  Call:
    IDENTIFIER                        { result = CallNode.new(nil,val[0])}
  | IDENTIFIER "(" ArgList ")"        { result = CallNode.new(nil, val[0], val[2]) }
  | Expression "." IDENTIFIER         { result = CallNode.new(val[0], val[2]) }
  | Expression "." 
    IDENTIFIER "(" ArgList ")"        { result = CallNode.new(val[0],val[2], val[4]) }
  ;

  ArgList:
    /* nothing */                     { result = [] }
  | Expression                        { result = val }
  | ArgList "," Expression            { result = val[0] << val[2] }
  ;

  Constant:
    CONSTANT                          { result = GetConstantNode.new(val[0])}
  ;


  Assign:
    IDENTIFIER "=" Expression         { result = SetLocalNode.new(val[0], val[2])}
  | CONSTANT "=" Expression           { result = SetConstantNode.new(val[0], val[2])}
  ;


  Def:
    PARAAN IDENTIFIER Block { result = DefNode.new(val[1], [], val[2]) }
  | PARAAN IDENTIFIER
    "(" ParamList ")" Block { result = DefNode.new(val[1], val[3], val[5])}
  ;

  ParamList:
    /* nothing */   { result = [] }
  | IDENTIFIER      { result = val }
  | ParamList "," IDENTIFIER { result = val[0] << val[2] }
  ;


  Class:
    KLASE CONSTANT Block { result = ClassNode.new(val[1], val[2])}
  ;

  If:
    KUNG Expression Block { result = IfNode.new( val[1], val[2] ) }
  | KUNG Expression Block NEWLINE
    KUNDI Block          { result = IfNode.new( val[1], val[2], val[5]) }
  ;

  Block:
    INDENT Expressions DEDENT { result = val[1] }
  ;
end

---- header
  require "lexer.rb"
  require "nodes"

---- inner
  def parse(code, show_tokens = false)
    @tokens = Lexer.new.tokenize(code)
    puts @tokens.inspect if show_tokens
    do_parse
  end

  def next_token
    @tokens.shift
  end
