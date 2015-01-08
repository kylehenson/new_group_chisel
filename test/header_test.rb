require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/header'

class HeaderTest < Minitest::Test

  def setup
    document = '#ice cream'
    @header = Header.new(document)
  end

  def test_it_exists
    assert @header
  end

  def test_it_renders
    assert_equal "<h1>ice cream</h1>", @header.render
  end

  def test_it_renders_h3
    document = "###caramel"
    header = Header.new(document)
    assert_equal "<h3>caramel</h3>", header.render
  end

end
