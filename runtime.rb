class AwesomeObject
  attr_accessor :awesome_class, :ruby_value

  def initialize(awesome_class, ruby_value=self)
    @awesome_class = awesome_class
    @ruby_value = ruby_value
  end

  def call(method,arguments)
    @awesome_class.lookup(method).call(self,arguments)
  end
end


class AwesomeClass < AwesomeObject
  attr_reader :awesome_methods
  def initialize
    @awesome_methods = {}

    if defined?(Runtime)
      awesome_class = Runtime["Class"]
    else 
      awesome_class = nil
    end

    super(awesome_class)
  end

  def lookup(method)
    method = @awesome_methods[method]
    unless method
      raise "Method not found #{method}"
    end
    method
  end

  def new
    AwesomeObject.new(self)
  end

  def new_value(value)
    AwesomeObject.new(self,value)
  end
end


class AwesomeMethod
  def initialize(params,body)
    @params = params
    @body = body
  end

  def call(receiver, arguments)
    @body.eval(Context.new(receiver))
  end
end


class Context
  attr_reader :locals, :current_self, :current_class
  @@constants = {}

  def initialize(current_self, current_class = current_self.awesome_class)
    @locals = {}
    @current_self = current_self
    @current_class = current_class
  end

  def [](name)
    @@constants[name]
  end

  def []=(name,value)
    @@constants[name] = value
  end
end


awesome_class = AwesomeClass.new
awesome_class.awesome_class = awesome_class
awesome_object_class = AwesomeClass.new


Runtime = Context.new(awesome_object_class.new)

Runtime["Class"] = awesome_class
Runtime["Object"] = awesome_object_class
Runtime["Number"] = AwesomeClass.new
Runtime["String"] = AwesomeClass.new
Runtime["TrueClass"] = AwesomeClass.new
Runtime["FalseClass"] = AwesomeClass.new
Runtime["NilClass"] = AwesomeClass.new


Runtime["true"]  = Runtime["TrueClass"].new_value(true)
Runtime["false"] = Runtime["FalseClass"].new_value(false)
Runtime["nil"]   = Runtime["NilClass"].new_value(nil)

Runtime["Class"].awesome_methods["new"] = proc do |receiver, arguments|
  receiver.new
end

Runtime["Object"].awesome_methods["print"] = proc do |receiver, arguments|
  puts arguments.first.ruby_value
  Runtime["nil"]
end

