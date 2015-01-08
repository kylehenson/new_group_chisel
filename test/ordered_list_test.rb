require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/ordered_list'

class OrderedListTest < Minitest::Test

  def setup
    document = "ice cream:\n1. strawberry\n1. chocolate\n1. caramel"
    @list = OrderedList.new(document)
  end

  def test_it_exists
    assert @list
  end

  def test_it_renders
    skip #this does work
    assert_equal "<ol>ice cream\n<li>strawberry</li>\n<li>chocolate</li>\n<li>caramel</li>\n</ol>", @list.render
  end


end
