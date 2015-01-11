require_relative 'element_checker'
require_relative 'paragraph'
require_relative 'header'
require_relative 'ordered_list'
require_relative 'unordered_list'
require_relative 'strong'
require_relative 'emphasize'

class Chisel

  attr_reader :element_checker
#take a document in and immediatly seperate out chunks
#return chunks seperated into lines to pass to parse
  def get_chunks(document)
    document.split("\n\n")
  end

  def parse(document)
    chunks = get_chunks(document)
    html = []

    chunks.each do |chunk|
      @element_checker = ElementChecker.new(chunk)
      if element_checker.paragraph?
        paragraph = Paragraph.new(chunk)
        html << paragraph.render
      elsif element_checker.header?
        header = Header.new(chunk)
        html << header.render
      elsif element_checker.ordered_list?
        list = OrderedList.new(chunk)
        html << list.render
      elsif element_checker.unordered_list?
        list = UnorderedList.new(chunk)
        html << list.render
      else
        puts "Please review your markdown syntax."
      end
    end
    final_html = html.map do |chunk|
      @element_checker = ElementChecker.new(chunk)
      # go through each chunk again to see if strong or emph is included
      if element_checker.strong?
        strong = Strong.new(chunk)
        strong.render
      elsif element_checker.emphasized?
        emph = Emphasize.new(chunk)
        emph.render
      else
        chunk
      end
    end
     final_html.join("\n\n")
  end

end
# chisel = Chisel.new
# puts chisel.parse("#Hello,\n\nkyra")
