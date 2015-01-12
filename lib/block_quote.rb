class BlockQuote

  def initialize(chunk)
    @chunk = chunk
  end

  def render
    remove = @chunk.gsub!(/\A.\s/, "")
    tabbed = "#{remove}" + "\t\n"
    parsed = "<blockquote>\n"+"\t<p>" + tabbed + "\t</p>\n"+"</blockquote>"
  end

end


# @chunk.gsub!(/\A.\s/, "<blockquote>\n"+"<p>" + @chunk + "</p>\n"+"</blockquote>")
