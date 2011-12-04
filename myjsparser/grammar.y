class Parser

rule
  Root:
    /* nothing */   {result = Nodes.new([])}
  | Expressions     { result = val[0] }
  ;

  Expressions:
    Expression      { result = Nodes.new(val) }
  | Expressions Terminator Expression { result = val[0] << val[2] }
  | Expressions Terminator { result = Nodes.new(val[0])}
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
