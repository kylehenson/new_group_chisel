require_relative 'element_checker'
require_relative 'paragraph'
require_relative 'header'
require_relative 'ordered_list'
require_relative 'unordered_list'
require_relative 'strong'
require_relative 'emphasize'

class Chisel

  def get_chunks(document)
    document.split("\n\n")
  end

  def parse(document)
    chunks = get_chunks(document)
    html = chunks.map do |chunk|
      element_checker = ElementChecker.new(chunk)
      if element_checker.paragraph?
        Paragraph.new(chunk).render
      elsif element_checker.header?
        Header.new(chunk).render
      elsif element_checker.ordered_list?
        OrderedList.new(chunk).render
      elsif element_checker.unordered_list?
        UnorderedList.new(chunk).render
      else
        puts "Please review your markdown syntax."
      end
    end

    final_html = html.map do |chunk|
      element_checker = ElementChecker.new(chunk)
      if element_checker.strong? && element_checker.emphasized?
        new_chunk = Strong.new(chunk).render
        Emphasize.new(new_chunk).render
      elsif element_checker.strong?
        Strong.new(chunk).render
      elsif element_checker.emphasized?
        Emphasize.new(chunk).render
      else
        chunk
      end
    end
     final_html.join("\n\n")
  end

end
chisel = Chisel.new
puts chisel.parse("#Hello,\n\nkyra\n\n* call mom\n* **dentist**\n* *groceries*")
