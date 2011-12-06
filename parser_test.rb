require "parser.rb"

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


p Parser.new.parse(code)
