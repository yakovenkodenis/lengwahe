require "lexer.rb"

p Lexer.new.tokenize(File.read("PinoyLanguageSample.pny"))
