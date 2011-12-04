class Parser
  TOKEN KUNG IBA
  TOKEN FN
  TOKEN KLASE
  TOKEN NEWLINE
  TOKEN NUMERO 
  TOKEN LUBID
  TOKEN TAMA MALI WALA 
  TOKEN IDENTIFIER
  TOKEN CONSTANT
  TOKEN INDENT DEDENT

  rule
    Root:
      /* nothing */                   { result = Nodes.new([]) }
    | Expressions                     { result = val[0] }
    ;

  Expressions:
    Expression                        { result = Nodes.new(val) }
  | Expressions Terminator Expression { result = val[0] << val[2] }
  | Expressions Terminator            { result = Nodes.new([val[0]]) }
  ;

end


--- header
  require "lexer"
  require "nodes"

--- inner
  def parse(code, show_tokens = false)
    @tokens = Lexer.new.tokenize(code)
    puts @tokens.inspect if show_tokens
    do_parse
  end

  def next_token
    @tokens.shift
  end
