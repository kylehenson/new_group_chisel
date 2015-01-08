require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/emphasize'

class EmphasizeTest < Minitest::Test

  def setup
    document = '*ice cream*'
    @emph = Emphasize.new(document)
  end

  def test_it_exists
    assert @emph
  end

  def test_it_renders
    assert_equal '<em>ice cream</em>', @emph.render
  end


end
