class Lexer
  KEYWORDS = ["function","var","Ext.extend"]
  def tokenize(code)
    code.chomp!
    i=0
    tokens = []
    current_block= 0
    block_stack = []
    while i<code.size
      chunk = code[i..-1]
      if identifier = chunk[/\A([a-zA-Z\.0-9]+)/, 1]
        if KEYWORDS.include?(identifier)
          tokens << [identifier.upcase.to_sym, identifier]
        elsif identifier.include?(".")
          tokens << [:LONGNAME, identifier]
        else
          tokens << [:IDENTIFIER,identifier]
        end
        i += identifier.size
      #if string
      elsif string = chunk[/\A"(.*?)"/, 1]
        tokens << [:STRING, string]
        i += string.size + 2
      #ignore standard comment
      elsif comment = chunk[/\A\/\/(.*?)\n/, 1]
        i += comment.size + 2
      # when block comment opening
      # eat up the entire block
      elsif chunk.match(/\A\/\*/) 
        i += 2 
        while !chunk.match(/\A\*\//)
          i +=1
          chunk = code[i..-1]
        end
        # close the comment block
        i += 2
      # Read Block open
      elsif chunk.match(/\A\{/) 
        tokens << [:BLOCKOPEN, "{"]
        i += 1
      # Read Block close 
      elsif chunk.match(/\A\{/) 
        tokens << [:BLOCKCLOSE, "}"]
        i += 1
      #Ignore new line 
      elsif chunk.match(/\A\n/) 
        i += 1
      #Ignore white space
      elsif chunk.match(/\A /) 
        i += 1
      else
        value = chunk[0,1] 
        tokens << [value, value] 
        i += 1
      end
    end
    tokens
  end
end
