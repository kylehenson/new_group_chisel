require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/emphasize'

class EmphasizeTest < Minitest::Test

  def setup
    document = '*ice*'
    @emph = Emphasize.new(document)
  end

  def test_it_exists
    assert @emph
  end

  def test_it_renders
    assert_equal '<em>ice</em>', @emph.render
  end

  def test_it_renders_in_a_line
    document = '*ice* cream'
    emph = Emphasize.new(document)
    assert_equal '<em>ice</em> cream', emph.render
  end


end
