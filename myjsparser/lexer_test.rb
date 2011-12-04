require "Lexer"

code = <<-EOS
ns.ui.test = Ext.extend(Ext.Panel,{
  method1:function(){
    var fun = {};
  },
  method2:function(){
    var fun = {};
  }
});
EOS
