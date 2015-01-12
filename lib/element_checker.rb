class ElementChecker

  attr_reader :chunk

  def initialize(chunk)
    @chunk = chunk
  end

  def paragraph?
    chunk =~ /\A[a-zA-Z]/
  end

  def header?
    chunk.start_with?('#')
  end

  def strong?
    chunk.include?('**')
  end

  def emphasized?
    chunk.include?('*')
  end

  def unordered_list?
    chunk.include?('* ')
  end

  def ordered_list?
    #why does this have to be explicit return?
    return true if chunk =~ /\A\d.\s/
  end

  def block_quote?
    chunk.include?('>')
  end

end
