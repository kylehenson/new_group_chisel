require_relative '../lib/new_chisel'

class ChiselTest < Minitest::Test

  def setup
    @chisel = Chisel.new
  end

  def test_it_exists
    chisel = Chisel.new
    assert chisel
  end

  def test_it_has_parse_method
    document = "kyra"
    assert_equal "<p>kyra</p>", @chisel.parse(document)
  end

  def test_it_parses_a_one_line_header
    document = "#Kyra"
    assert_equal "<h1>Kyra</h1>", @chisel.parse(document)
  end

  def test_it_parses_a_two_line_paragraph
    document = "kyra\nweber"
    assert_equal "<p>kyra\nweber</p>", @chisel.parse(document)
  end

  def test_it_seperates_doc_into_chunks
    document = "kyra\n\nweber"
    assert_equal ["kyra", "weber"], @chisel.get_chunks(document)
  end

  def test_it_parses_two_different_chunks
    document = "#food\n\nfood is good"
    assert_equal "<h1>food</h1>\n\n<p>food is good</p>", @chisel.parse(document)
  end

  def test_it_parses_two_chunks_with_two_lines_each
    document = "this is a paragraph\nthis is the same paragraph\n\n##this is a header"
    assert_equal "<p>this is a paragraph\nthis is the same paragraph</p>\n\n<h2>this is a header</h2>", @chisel.parse(document)
  end

end
