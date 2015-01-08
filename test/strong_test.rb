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

end
