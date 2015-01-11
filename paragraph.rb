class Paragraph

  def initialize(chunk)
    @chunk = chunk
  end

  def render
    "<p>" + @chunk + "</p>"
  end

end
