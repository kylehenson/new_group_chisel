class Header

  def initialize(chunk)
    @chunk = chunk
  end

  def render
    if @chunk[0..2] == '###'
      markdown = @chunk.gsub('###', '<h3>')
      markdown + "</h3>"
    elsif @chunk[0..1] == "##"
      markdown = @chunk.gsub('##', '<h2>')
      markdown + "</h2>"
    else
      markdown = @chunk.gsub('#', '<h1>')
      markdown + "</h1>"
    end
  end

end
