class Strong

  def initialize(chunk)
    @chunk = chunk
  end

  def render
    to_be_strong = @chunk.match(/[*]{2}(.*)[*]{2}/)[1]
    has_strength = "<strong>" + to_be_strong + "</strong>"
    @chunk.gsub(/[*]{2}(.*)[*]{2}/, has_strength)
  end

end
