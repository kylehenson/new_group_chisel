class OrderedList

  def initialize(chunk)
    @chunk = chunk
  end

  def render
    lines = @chunk.split("\n")

    list_items = lines.map do |line|
        line.gsub(/\A\d.\s/,'<li>') + '</li>'
    end
    "<ol>\n#{list_items.join("\n")}\n</ol>"
  end

end
