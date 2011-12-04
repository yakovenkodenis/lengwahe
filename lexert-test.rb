require "lexer.rb"

code = <<-EOS
kung 1:
  habang i<10:
    print ""
  print "..."
  kung tama:
    pass
  print "tapos na!"
print "the end"
EOS
p Lexer.new.tokenize(code)
