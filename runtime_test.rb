require "parser"
require "runtime"

nodes = Parser.new.parse(File.read("PinoyLanguageSample.pny"))

nodes.eval(Runtime)
