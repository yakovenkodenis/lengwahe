require "lexer.rb"

code = <<-EOS
klase Awesome:
  fn initialize(name):
    pass

  fn x:
    2

kung tama:
  aw = Awesome.new("brilliant")
kundi:
  weird
EOS

p Lexer.new.tokenize(code)
