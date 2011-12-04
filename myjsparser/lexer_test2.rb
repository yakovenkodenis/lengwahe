require "lexer"

code = <<-EOS
  my.programming.language.lexer= Ext.extend(Ext.panel,{
    /*
    fully:function(){
    }
    */
    test:    "name",
    //comment is.ignored.all.the.way up to here 
    /*i am ignored */
    test2: function(){
      var test = "";
    }
  });
EOS

p Lexer.new.tokenize(code)
