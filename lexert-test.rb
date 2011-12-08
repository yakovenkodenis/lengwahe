require "lexer.rb"

#code = <<-EOS
#klase Awesome:
#	fn does_its_work:
#		"yeah!"
#awesome_object = Awesome.new
#kung awesome_object:
#	print("awesome object does its work!")
#	print("awesome_object.does_its_work")
#kundi:
#	print("Something wrong")
#EOS

code = <<-EOS
klase Awesome:
	fn does_its_work:
		"yeah!"
awesome_object = Awesome.new
kung awesome_object:
	print("awesome object does its work!")
	print("awesome_object.does_its_work")
kundi:
	print("Something wrong")
EOS

p Lexer.new.tokenize(File.read("PinoyLanguageSample.pny"))
