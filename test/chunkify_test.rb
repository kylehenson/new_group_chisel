require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/chunkify'

class ChunkifyTest < Minitest::Test
  def setup
    document = "chocolate ice cream

    is good"
    @chunker = Chunkify.new(document)
  end

  def test_it_detects_blank_lines
    skip
    chunked =@chunker.render
    assert_equal "<p>chocolate ice cream</p>

    <p>is good</p>", @chunker.render
  end

end
