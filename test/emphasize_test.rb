require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/emphasize'

class EmphasizeTest < Minitest::Test

  def setup
    chunk = '*ice*'
    @emph = Emphasize.new(chunk)
  end

  def test_it_exists
    assert @emph
  end

  def test_it_renders_one_word
    assert_equal '<em>ice</em>', @emph.render
  end

  def test_it_renders_one_word_in_a_line
    chunk = '*ice* cream'
    emph = Emphasize.new(chunk)
    assert_equal '<em>ice</em> cream', emph.render
  end

  def test_it_renders_two_words
    chunk = '*ice cream* is so good.'
    emph = Emphasize.new(chunk)
    assert_equal '<em>ice cream</em> is so good.', emph.render
  end


end
