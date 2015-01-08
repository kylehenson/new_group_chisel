require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/paragraph'

class ParagraphTest < Minitest::Test

  def setup
    @document = 'ice cream'
    @para = Paragraph.new(@document)
  end

  def test_it_exists
    assert @para
  end

  def test_it_has_a_renderer
    @para.render
  end

  def test_it_renders_html_p_tags
    paragraph = @para.render
    assert_equal "<p>" + @document + "</p>", paragraph
  end

end
