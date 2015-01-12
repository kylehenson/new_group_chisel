require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/block_quote'

class BlockQuoteTest < Minitest::Test


def setup
  @chunk = "> This is a blockquote."
  @bq       = BlockQuote.new(@chunk)
end

def test_it_exists
  assert @bq
end

def test_it_renders_html_bq
  blockquote = @bq.render
  assert_equal "<blockquote>\n"+"<p>" + @chunk + "</p>\n"+"</blockquote>", blockquote
end

end
