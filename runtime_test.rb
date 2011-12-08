require "parser"
require "runtime"

code = <<-EOS
klase Awesome:
	fn does_its_work:
		"yeah!"

awesome_object = Awesome.new
kung awesome_object:
	print("awesome object does its work!")
	print(awesome_object.does_its_work)
kundi:
	print("Something wrong")
EOS

nodes = Parser.new.parse(File.read("PinoyLanguageSample.pny"))
#nodes = Parser.new.parse(code)
nodes.eval(Runtime)
