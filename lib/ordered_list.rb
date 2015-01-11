class OrderedList

  def initialize(chunk)
    @chunk = chunk
  end

  def render
    lines = @chunk.split("\n")

    list_items = []
    lines.each do |line|
      if line =~ /\A\d.\s/
        line = line.gsub(/\A\d.\s/,'<li>')
        list_item = line + '</li>'
        list_items << list_item
      end
    end
    list = list_items.join("\n")
    "<ol>\n#{list}\n</ol>"
  end

end
