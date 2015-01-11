class Strong

  def initialize(chunk)
    @chunk = chunk
  end

  def render
    to_be_strong = @chunk.match(/[*]{2}(.*)[*]{2}/)[1]
    @chunk.gsub(/[*]{2}(.*)[*]{2}/, "<strong>" + to_be_strong + "</strong>")
  end

end
