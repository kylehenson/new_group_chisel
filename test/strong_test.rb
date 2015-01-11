require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/strong'

class StrongTest < Minitest::Test

  def setup
    document = '**ice cream**'
    @strong = Strong.new(document)
  end

  def test_it_exists
    assert @strong
  end

  def test_it_has_strength
    assert_equal "<strong>ice cream</strong>", @strong.render
  end

  def test_it_selects_strong_elements_from_string
    document = 'I **really** like ice cream'
    strong = Strong.new(document)
    assert_equal "I <strong>really</strong> like ice cream", strong.render
  end
  
end
