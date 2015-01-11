class UnorderedList

  def initialize(chunk)
    @chunk = chunk
  end

  def render
    lines = @chunk.split("\n")

    list_items = lines.map do |line|
        line = line.gsub(/\A\W\s/,'<li>')
        list_item = line + '</li>'
      end
      
    "<ul>\n#{list_items.join("\n")}\n</ul>"
  end

end
