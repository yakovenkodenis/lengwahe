class Lexer
  KEYWORDS = ["paraan", "habang","klase", "kung", "kundi","tama","mali","wala" ]
  def tokenize(code)
    code.chomp!
    i=0
    tokens = []
    current_indent = 0
    indent_stack = []
    while i < code.size
      chunk = code[i..-1]
      if identifier = chunk[/\A([a-z]\w*)/,1]
        if KEYWORDS.include?(identifier)
          tokens << [identifier.upcase.to_sym, identifier]
        else
          tokens << [:IDENTIFIER, identifier]
        end
        i += identifier.size
      elsif constant = chunk[/\A([A-Z]\w*)/,1]
        tokens << [:CONSTANT, constant]
        i += constant.size
      elsif number = chunk[/\A([0-9])+/,1]
        tokens << [:NUMERO, number.to_i]
        i += number.size
      elsif string = chunk[/\A"(.*?)"/,1]
        tokens << [:HIBLA, string]
        i += string.size + 2
      #elsif chunk.match(/\A\{/) 
      #  tokens << [:INDENT, "{"]
      #  i += 1
      ## Read Block close 
      #elsif chunk.match(/\A\{/) 
      #  tokens << [:DEDENT, "}"]
      #  i += 1
      ##Ignore new line 
      #elsif chunk.match(/\A\n/) 
      #  i += 1
      elsif (indent = chunk[/\A\:\n( +)/m, 1]|| indent = chunk[/\A\:\n(\t+)/m, 1])
        if indent.size <= current_indent
          raise "Bad indent level, got #{indent.size} indents, " +
            "expected > #{current_indent}"
        end
        current_indent = indent.size
        indent_stack.push(current_indent)
        tokens << [:INDENT, indent.size]
        i += indent.size + 2
      elsif ( indent = chunk[/\A\n(\t+)/m,1] || indent = chunk[/\A\n( *)/m,1]  )
        if indent.size == current_indent
          tokens << [:NEWLINE, "\n"]
        elsif indent.size < current_indent
          indent_stack.pop
          current_indent = indent_stack.first || 0
          tokens << [:DEDENT, indent.size]
          tokens << [:NEWLINE, "\n"]
        else
          raise "Missing :"
        end
        i += indent.size + 1
      elsif chunk.match(/\A /)
        i += 1
      #elsif chunk.match(/\A\t/)
      #  i += 1
      else
        value = chunk[0,1]
        tokens << [value, value]
        i += 1
      end
    end
    while indent = indent_stack.pop
      tokens << [:DEDENT, indent_stack.first || 0]
    end
    tokens
  end
end
