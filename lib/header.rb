class Header
  attr_reader :chunk

  def initialize(chunk)
    @chunk = chunk
  end

  def render
    if chunk[0..2] == '###'
      chunk.gsub('###', '<h3>') + "</h3>"
    elsif chunk[0..1] == "##"
      chunk.gsub('##', '<h2>') + "</h2>"
    else
      chunk.gsub('#', '<h1>') + "</h1>"
    end
  end

end
